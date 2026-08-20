#!/usr/bin/env python3
"""Deploy the Rigs of Rods wasm build to web/ for GitHub Pages.

GitHub Pages cannot host files larger than 100 MB, and RoR.data is ~112 MB,
so this script:

  1. Copies RoR.wasm and RoR.js from the build output.
  2. Splits RoR.data into RoR.data.0, RoR.data.1, ... (each < 100 MB).
  3. Patches RoR.js so the data-loader downloads the chunks and
     concatenates them into one ArrayBuffer before mounting the FS.

The pthreads build needs SharedArrayBuffer, which requires COOP/COEP
headers that GitHub Pages cannot send; the companion `coi-sw.js` service
worker (registered by index.html) injects those headers at runtime.

Usage:  python scripts/deploy-web.py [build_dir] [web_dir]
"""

import os
import re
import shutil
import sys

CHUNK_SIZE = 60 * 1024 * 1024  # 60 MB per chunk, safely under GitHub's 100 MB limit


def patch_ror_js(source, dest):
    """Replace the single-file data fetch with a chunked downloader."""
    with open(source, "r", encoding="utf-8") as f:
        js = f.read()

    marker = "async function fetchRemotePackage(packageName,packageSize){"
    start = js.find(marker)
    if start == -1:
        raise SystemExit("ERROR: could not find fetchRemotePackage in RoR.js - aborting patch")

    # Find the matching closing brace of the function by brace counting.
    depth = 0
    end = start
    for i in range(start, len(js)):
        c = js[i]
        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                end = i + 1
                break
    if depth != 0:
        raise SystemExit("ERROR: unbalanced braces in fetchRemotePackage - aborting patch")

    chunked = (
        "async function fetchRemotePackage(packageName,packageSize){"
        "if(isNode){var contents=require(\"fs\").readFileSync(packageName);return new Uint8Array(contents).buffer}"
        "if(!Module[\"dataFileDownloads\"])Module[\"dataFileDownloads\"]={};"
        "var base=packageName;var qs=\"\";"
        "var qi=packageName.indexOf(\"?\");"
        "if(qi>=0){base=packageName.substring(0,qi);qs=packageName.substring(qi)}"
        "var entries=[];"
        "for(var ci=0;;ci++){var cn=base+\".\"+ci+qs;"
        "var r=await fetch(cn);"
        "if(r.status===404){break}"
        "if(!r.ok){throw new Error(r.status+\": \"+r.url)}"
        "entries.push([cn,r])}"
        "if(entries.length===0){throw new Error(\"no data chunks found for \"+base)}"
        "Module[\"setStatus\"]&&Module[\"setStatus\"](\"Downloading data...\");"
        "var total=0;"
        "var bufs=[];"
        "for(var j=0;j<entries.length;j++){"
        "var resp=entries[j][1];"
        "var ab=await resp.arrayBuffer();"
        "bufs.push(ab);total+=ab.byteLength;"
        "Module[\"dataFileDownloads\"][entries[j][0]]={loaded:ab.byteLength,total:ab.byteLength};"
        "Module[\"setStatus\"]&&Module[\"setStatus\"](\"Downloading data... (\"+total+\" bytes)\")}"
        "var out=new Uint8Array(total);var off=0;"
        "for(var k=0;k<bufs.length;k++){out.set(new Uint8Array(bufs[k]),off);off+=bufs[k].byteLength}"
        "return out.buffer}"
    )

    js = js[:start] + chunked + js[end:]
    with open(dest, "w", encoding="utf-8") as f:
        f.write(js)
    print("patched RoR.js -> chunked data download")


def split_data(data_path, web_dir):
    with open(data_path, "rb") as f:
        data = f.read()
    total = len(data)
    num_chunks = (total + CHUNK_SIZE - 1) // CHUNK_SIZE
    for i in range(num_chunks):
        chunk = data[i * CHUNK_SIZE:(i + 1) * CHUNK_SIZE]
        name = os.path.join(web_dir, f"RoR.data.{i}")
        with open(name, "wb") as f:
            f.write(chunk)
        print(f"wrote {name} ({len(chunk)} bytes)")
    print(f"split {total} bytes into {num_chunks} chunks")


def main():
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    build_dir = sys.argv[1] if len(sys.argv) > 1 else os.path.join(root, "build", "ror", "bin")
    web_dir = sys.argv[2] if len(sys.argv) > 2 else os.path.join(root, "web")

    os.makedirs(web_dir, exist_ok=True)

    for name in ("RoR.wasm", "RoR.js"):
        src = os.path.join(build_dir, name)
        if not os.path.exists(src):
            raise SystemExit(f"ERROR: {src} not found - run the wasm build first")
        shutil.copy2(src, os.path.join(web_dir, name))
        print(f"copied {name}")

    # Remove any stale single-file data or old chunks.
    for name in ("RoR.data",):
        stale = os.path.join(web_dir, name)
        if os.path.exists(stale):
            os.remove(stale)
            print(f"removed stale {name}")
    for name in os.listdir(web_dir):
        if name.startswith("RoR.data."):
            os.remove(os.path.join(web_dir, name))

    split_data(os.path.join(build_dir, "RoR.data"), web_dir)
    patch_ror_js(os.path.join(web_dir, "RoR.js"), os.path.join(web_dir, "RoR.js"))
    print("deploy complete")


if __name__ == "__main__":
    main()
