/*
 * Rigs of Rods (WebAssembly) — browser input bridge.
 *
 * Translates DOM keyboard/mouse events into the C functions exported by the OIS
 * "web" shim (source/ois-web/src/OISWeb.cpp). No pointer lock, no mouse grab:
 * the browser owns the cursor, we only forward its position and buttons.
 *
 * Key codes use the DirectInput (DIK) scancode set, which is exactly what OIS
 * exposes as `OIS::KeyCode` (KC_A = 0x1E, KC_W = 0x11, KC_UP = 0xC8, ...).
 */
(function () {
    "use strict";

    // Map W3C `KeyboardEvent.code` strings -> DIK scancode (OIS KeyCode).
    var KEYMAP = {
        // Letters
        KeyA: 0x1E, KeyB: 0x30, KeyC: 0x2E, KeyD: 0x20, KeyE: 0x12, KeyF: 0x21,
        KeyG: 0x22, KeyH: 0x23, KeyI: 0x17, KeyJ: 0x24, KeyK: 0x25, KeyL: 0x26,
        KeyM: 0x32, KeyN: 0x31, KeyO: 0x18, KeyP: 0x19, KeyQ: 0x10, KeyR: 0x13,
        KeyS: 0x1F, KeyT: 0x14, KeyU: 0x16, KeyV: 0x2F, KeyW: 0x11, KeyX: 0x2D,
        KeyY: 0x15, KeyZ: 0x2C,
        // Digits
        Digit0: 0x0B, Digit1: 0x02, Digit2: 0x03, Digit3: 0x04, Digit4: 0x05,
        Digit5: 0x06, Digit6: 0x07, Digit7: 0x08, Digit8: 0x09, Digit9: 0x0A,
        // Numpad
        Numpad0: 0x52, Numpad1: 0x4F, Numpad2: 0x50, Numpad3: 0x51, Numpad4: 0x4B,
        Numpad5: 0x4C, Numpad6: 0x4D, Numpad7: 0x47, Numpad8: 0x48, Numpad9: 0x49,
        NumpadAdd: 0x4E, NumpadSubtract: 0x4A, NumpadMultiply: 0x37,
        NumpadDivide: 0xB5, NumpadDecimal: 0x53, NumpadEnter: 0x9C,
        NumpadEqual: 0x8D, NumpadComma: 0xB3,
        // Function keys
        F1: 0x3B, F2: 0x3C, F3: 0x3D, F4: 0x3E, F5: 0x3F, F6: 0x40,
        F7: 0x41, F8: 0x42, F9: 0x43, F10: 0x44, F11: 0x57, F12: 0x58,
        F13: 0x64, F14: 0x65, F15: 0x66,
        // Modifiers
        ShiftLeft: 0x2A, ShiftRight: 0x36, ControlLeft: 0x1D, ControlRight: 0x9D,
        AltLeft: 0x38, AltRight: 0xB8, MetaLeft: 0xDB, MetaRight: 0xDC,
        ContextMenu: 0xDD, CapsLock: 0x3A,
        // Navigation / edit
        Enter: 0x1C, Escape: 0x01, Backspace: 0x0E, Tab: 0x0F, Space: 0x39,
        ArrowUp: 0xC8, ArrowDown: 0xD0, ArrowLeft: 0xCB, ArrowRight: 0xCD,
        Home: 0xC7, End: 0xCF, PageUp: 0xC9, PageDown: 0xD1, Insert: 0xD2,
        Delete: 0xD3, PrintScreen: 0xB7, ScrollLock: 0x46, Pause: 0xC5,
        NumLock: 0x45,
        // Punctuation
        Minus: 0x0C, Equal: 0x0D, BracketLeft: 0x1A, BracketRight: 0x1B,
        Backslash: 0x2B, Semicolon: 0x27, Quote: 0x28, Backquote: 0x29,
        Comma: 0x33, Period: 0x34, Slash: 0x35, IntlBackslash: 0x56,
        // System / media
        Power: 0xDE, Sleep: 0xDF, WakeUp: 0xE3
    };

    // DOM MouseEvent.button -> OIS MouseButtonID (MB_Left=0, MB_Right=1, MB_Middle=2).
    var BUTTONMAP = { 0: 0, 1: 2, 2: 1, 3: 3, 4: 4 };

    function canvas() { return document.getElementById("canvas"); }

    function sendCanvasSize() {
        var c = canvas();
        if (c && Module && Module._OISWebCanvasSize) {
            Module._OISWebCanvasSize(c.width || c.clientWidth, c.height || c.clientHeight);
        }
    }

    function onKey(ev, down) {
        var code = KEYMAP[ev.code];
        if (code === undefined) return;          // unknown key, ignore
        ev.preventDefault();                      // keep browser from hijacking keys
        if (Module._OISWebKeyEvent) {
            var text = (ev.key && ev.key.length === 1) ? ev.key.charCodeAt(0) : 0;
            Module._OISWebKeyEvent(code, text, down ? 1 : 0);
        }
    }

    function onMouseMove(ev) {
        var c = canvas();
        var x = ev.clientX, y = ev.clientY;
        if (c) {
            var r = c.getBoundingClientRect();
            x = Math.max(0, Math.min(c.width, ev.clientX - r.left));
            y = Math.max(0, Math.min(c.height, ev.clientY - r.top));
        }
        if (Module._OISWebMouseMove) Module._OISWebMouseMove(x, y);
    }

    function onMouseButton(ev, down) {
        var id = BUTTONMAP[ev.button];
        if (id === undefined) return;
        ev.preventDefault();
        if (Module._OISWebMouseButton) Module._OISWebMouseButton(id, down ? 1 : 0);
    }

    function onWheel(ev) {
        ev.preventDefault();
        if (Module._OISWebMouseWheel) Module._OISWebMouseWheel(ev.deltaY > 0 ? -1 : (ev.deltaY < 0 ? 1 : 0));
    }

    function onContextMenu(ev) {
        // Stop the browser menu from popping up on right-click (used by the game).
        ev.preventDefault();
    }

    function attach() {
        window.addEventListener("keydown", function (ev) { onKey(ev, true); });
        window.addEventListener("keyup", function (ev) { onKey(ev, false); });
        window.addEventListener("mousemove", onMouseMove);
        window.addEventListener("mousedown", function (ev) { onMouseButton(ev, true); });
        window.addEventListener("mouseup", function (ev) { onMouseButton(ev, false); });
        window.addEventListener("wheel", onWheel, { passive: false });
        window.addEventListener("contextmenu", onContextMenu);
        window.addEventListener("resize", sendCanvasSize);
        window.addEventListener("blur", function () {
            // Release all keys when the tab loses focus (avoids stuck keys).
            for (var code in KEYMAP) {
                if (Module._OISWebKeyEvent) Module._OISWebKeyEvent(KEYMAP[code], 0, 0);
            }
        });

        // Push the initial canvas size once the runtime is up.
        var done = function () {
            if (Module && Module._OISWebCanvasSize) { sendCanvasSize(); return; }
            setTimeout(done, 200);
        };
        if (document.readyState === "loading") {
            document.addEventListener("DOMContentLoaded", done);
        } else {
            done();
        }
    }

    attach();
})();
