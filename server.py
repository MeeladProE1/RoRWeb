#!/usr/bin/env python3
"""Local static server for the Rigs of Rods WebAssembly build.

Serves the `web/` directory and adds the cross-origin-isolation headers
(COOP/COEP) that the pthreads build needs for SharedArrayBuffer.
"""
import os
import sys
import http.server
import socketserver

PORT = 8000
WEB_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "web")

MIME = {
    ".html": "text/html; charset=utf-8",
    ".js":   "text/javascript",
    ".css":  "text/css",
    ".wasm": "application/wasm",
    ".data": "application/octet-stream",
    ".json": "application/json",
    ".png":  "image/png",
    ".svg":  "image/svg+xml",
}


class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=WEB_DIR, **kwargs)

    def end_headers(self):
        # Cross-origin isolation -> enables SharedArrayBuffer (required by the
        # -pthread build). Only meaningful over http(s); localhost works fine.
        self.send_header("Cross-Origin-Opener-Policy", "same-origin")
        self.send_header("Cross-Origin-Embedder-Policy", "require-corp")
        super().end_headers()

    def guess_type(self, path):
        ext = os.path.splitext(path)[1].lower()
        if ext in MIME:
            return MIME[ext]
        return super().guess_type(path)

    def log_message(self, fmt, *args):
        sys.stdout.write("[%s] %s\n" % (self.log_date_time_string(), fmt % args))


class ThreadingServer(socketserver.ThreadingMixIn, http.server.HTTPServer):
    daemon_threads = True
    allow_reuse_address = True


def main():
    os.chdir(WEB_DIR)
    print("Serving Rigs of Rods from: %s" % WEB_DIR)
    print("Open:  http://localhost:%d/" % PORT)
    print("Press Ctrl+C to stop.")
    with ThreadingServer(("127.0.0.1", PORT), Handler) as httpd:
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\nStopped.")


if __name__ == "__main__":
    main()
