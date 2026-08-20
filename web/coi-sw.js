/* coi-sw.js
 *
 * Cross-Origin-Isolation service worker + bootstrap for hosts that cannot send
 * COOP/COEP headers (e.g. GitHub Pages).
 *
 * The threaded (pthreads) wasm build needs SharedArrayBuffer, which the browser
 * only exposes on a cross-origin-isolated page. The worker half of this file
 * intercepts navigation requests and injects:
 *
 *   Cross-Origin-Opener-Policy: same-origin
 *   Cross-Origin-Embedder-Policy: credentialless
 *
 * COEP "credentialless" is used (instead of require-corp) so cross-origin
 * fetches made by the game (mod repository API, etc.) keep working.
 *
 * The page half exposes window.__coi — a promise that resolves only once the
 * page is cross-origin isolated. It registers the worker and reloads the page
 * (bounded, so it can never loop forever) until the worker's headers take
 * effect. index.html waits for that promise before booting the game, so the
 * game can never start without SharedArrayBuffer.
 *
 * Based on the well-known "coi-serviceworker" technique
 * (https://github.com/gzuidhof/coi-serviceworker).
 */
let coepCredentialless = true;

if (typeof window === "undefined") {
  /* -------- worker context -------- */
  self.addEventListener("install", () => self.skipWaiting());
  self.addEventListener("activate", (event) => event.waitUntil(self.clients.claim()));

  self.addEventListener("fetch", function (event) {
    if (event.request.cache === "only-if-cached" && event.request.mode !== "same-origin") {
      return;
    }
    if (event.request.mode === "navigate") {
      event.respondWith(
        fetch(event.request).then((response) => {
          const newHeaders = new Headers(response.headers);
          newHeaders.set("Cross-Origin-Opener-Policy", "same-origin");
          newHeaders.set(
            "Cross-Origin-Embedder-Policy",
            coepCredentialless ? "credentialless" : "require-corp"
          );
          return new Response(response.body, {
            status: response.status,
            statusText: response.statusText,
            headers: newHeaders,
          });
        })
      );
    }
  });
} else {
  /* -------- page context -------- */
  (function () {
    "use strict";

    var MAX_RELOADS = 3;
    var KEY = "coi_attempts";

    // Resolves once the page is cross-origin isolated, rejects if that can't
    // be achieved (no service worker support, registration blocked, or the
    // reload budget ran out). The game boot waits on this.
    window.__coi = new Promise(function (resolve, reject) {
      if (window.crossOriginIsolated === true) {
        // Already isolated (e.g. a host that sends COOP/COEP itself).
        resolve();
        return;
      }
      if (!("serviceWorker" in navigator)) {
        reject(new Error(
          "This browser blocks the service worker this game needs for SharedArrayBuffer support."
        ));
        return;
      }

      // Count reload attempts across loads in this tab so we can never loop.
      var attempts = 0;
      try {
        attempts = parseInt(sessionStorage.getItem(KEY) || "0", 10) || 0;
      } catch (e) { /* storage unavailable — the in-page budget below still bounds us */ }

      if (attempts >= MAX_RELOADS) {
        reject(new Error(
          "Could not enable the isolated browser environment this game needs (tried " + attempts +
          " times). Try a normal reload, or a different browser."
        ));
        return;
      }

      function reloadOnce() {
        attempts++;
        try { sessionStorage.setItem(KEY, String(attempts)); } catch (e) {}
        if (attempts > MAX_RELOADS) {
          reject(new Error("Isolation reload loop — please reload the page manually."));
          return;
        }
        location.reload();
      }

      navigator.serviceWorker
        .register("coi-sw.js", { scope: "./", updateViaCache: "none" })
        .then(function () {
          if (window.crossOriginIsolated === true) { resolve(); return; }
          if (navigator.serviceWorker.controller) {
            // A worker controls this page, yet isolation is off: the current
            // document was not served with COOP/COEP (e.g. hard reload
            // bypassed the worker). Reload so the worker serves the headers.
            reloadOnce();
            return;
          }
          // Fresh registration: wait for the worker to claim control, then
          // reload so its headers apply to the fresh document. Bounded by a
          // timeout so a slow claim can't hang the page.
          var settled = false;
          var timer = setTimeout(function () {
            if (!settled) { settled = true; reloadOnce(); }
          }, 4000);
          navigator.serviceWorker.addEventListener("controllerchange", function () {
            if (settled) return;
            settled = true;
            clearTimeout(timer);
            reloadOnce();
          });
        })
        .catch(function (err) {
          reject(new Error("Service worker registration failed: " + (err && err.message ? err.message : err)));
        });
    });

    // Once isolation is achieved, reset the reload budget for future visits.
    window.__coi.then(
      function () { try { sessionStorage.removeItem(KEY); } catch (e) {} },
      function () {}
    );
  })();
}
