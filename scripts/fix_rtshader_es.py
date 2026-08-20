#!/usr/bin/env python3
"""Rebuilds build/ror/bin/resources/rtshader.zip from the canonical Ogre
RTShaderLib with WebGL-compatible (GLSL ES 1.00) shader library files.

The old zip shipped a stale copy of the GLSL libs (missing overloads the
current RTSS generator emits, and carrying desktop-only constructs). This
script regenerates the zip from source/ogre/Media/RTShaderLib/GLSL and
applies the minimum edits needed for GLSL ES 1.00 (WebGL):

* FFPLib_Texturing.glsl  - transpose() is not built-in in ES 1.00 -> explicit helper
* FFPLib_Transform.glsl  - mat3x4 is not a type in ES 1.00 -> drop instancing overloads
* SGXLib_IntegratedPSSM  - sampler2DShadow / shadow2D don't exist in ES 1.00

Run from the project root:  python scripts/fix_rtshader_es.py
Then rebuild so the emscripten packager re-packs RoR.data.
"""
import os
import re
import zipfile

SRC_GLSL = os.path.join("source", "ogre", "Media", "RTShaderLib", "GLSL")
SRC_UNIFIED_HEADER = os.path.join("source", "ogre", "Media", "ShadowVolume", "OgreUnifiedShader.h")
SRC_HLSL_SUPPORT = os.path.join("source", "ogre", "Media", "ShadowVolume", "HLSL_SM4Support.hlsl")
ZIP = os.path.join("build", "ror", "bin", "resources", "rtshader.zip")

# The RTSS sub-render-states the compiled generator (Ogre 1.12.9, same tree
# as source/ogre/Media/RTShaderLib) can trigger for RoR materials. Libs that
# are never referenced (DualQuaternion, TextureAtlas, Triplanar, the legacy
# FFPLib_Lighting / SGXLib_NormalMapLighting / SampleLib_ReflectionMap) or
# that contain ES-invalid constructs are intentionally excluded.
GLSL_FILES = [
    "FFPLib_AlphaTest.glsl",
    "FFPLib_Common.glsl",
    "FFPLib_Fog.glsl",
    "FFPLib_Texturing.glsl",
    "FFPLib_Transform.glsl",
    "SGXLib_IntegratedPSSM.glsl",
    "SGXLib_LayeredBlending.glsl",
    "SGXLib_NormalMap.glsl",
    "SGXLib_PerPixelLighting.glsl",
]

TRANSPOSE_HELPER = """mat4 _ffp_transpose(mat4 m)
{
    return mat4(m[0][0], m[1][0], m[2][0], m[3][0],
                m[0][1], m[1][1], m[2][1], m[3][1],
                m[0][2], m[1][2], m[2][2], m[3][2],
                m[0][3], m[1][3], m[2][3], m[3][3]);
}

"""


def fix_glsl(text: str, fname: str) -> str:
    # The RTSS-generated main program already declares #version; drop any
    # stray one inside an included file (old libs had "#version 120").
    out = []
    for ln in text.splitlines(True):
        if ln.strip().startswith("#version"):
            continue
        out.append(ln)
    body = "".join(out)

    if fname == "FFPLib_Texturing.glsl":
        # transpose() is not a built-in in GLSL ES 1.00 -> call explicit helper.
        if "transpose(mView)" in body:
            body = body.replace("transpose(mView)", "_ffp_transpose(mView)")
            stripped = body.lstrip()
            if stripped.startswith("/*"):
                end = body.find("*/") + 2
                body = body[:end] + "\n\n" + TRANSPOSE_HELPER + body[end:]
            else:
                idx = 0
                for i, ln in enumerate(body.splitlines(True)):
                    s = ln.strip()
                    if s and not s.startswith(("//", "*", "/*")):
                        idx = i
                        break
                lines = body.splitlines(True)
                lines.insert(idx, TRANSPOSE_HELPER)
                body = "".join(lines)

    if fname == "FFPLib_Transform.glsl":
        # mat3x4 is not a type in GLSL ES 1.00; the instancing overloads are
        # never generated for GLSL ES (RTSS disables instancing there), so
        # drop them - unused functions must still parse.
        body = re.sub(r"void FFP_Transform\(in mat3x4 m,.*?\n\}", "", body, flags=re.S)

    if fname == "FFPLib_AlphaTest.glsl":
        # GLSL ES 1.00 (WebGL) has no switch statement; rewrite Alpha_Func
        # as an if/else chain. This was the cause of the car-spawn freeze
        # (RTSS generated a shader for alpha-rejected materials that failed
        # to compile: "'switch' : syntax error").
        body = re.sub(r"bool Alpha_Func\(in int func.*?\n}", """bool Alpha_Func(in int func, in float alphaRef, in float alphaValue)
{
    if (func == 0) return false;                    // CMPF_ALWAYS_FAIL
    if (func == 2) return alphaValue < alphaRef;    // CMPF_LESS
    if (func == 3) return alphaValue <= alphaRef;   // CMPF_LESS_EQUAL
    if (func == 4) return alphaValue == alphaRef;   // CMPF_EQUAL
    if (func == 5) return alphaValue != alphaRef;   // CMPF_NOT_EQUAL
    if (func == 6) return alphaValue >= alphaRef;   // CMPF_GREATER_EQUAL
    if (func == 7) return alphaValue > alphaRef;    // CMPF_GREATER
    return true;                                    // CMPF_ALWAYS_PASS (and default)
}
""", body, flags=re.S)

    if fname == "SGXLib_IntegratedPSSM.glsl":
        # sampler2DShadow / shadow2D do not exist in GLSL ES 1.00 (PSSM
        # shadows are disabled on the web build; this only keeps the file
        # includable without breaking the parser).
        body = body.replace("#define SAMPLER_TYPE sampler2DShadow",
                            "#define SAMPLER_TYPE sampler2D")
        body = body.replace("shadow2D(", "texture2D(")

    return body


def main():
    old = zipfile.ZipFile(ZIP)
    tmp = ZIP + ".new"
    zout = zipfile.ZipFile(tmp, "w", zipfile.ZIP_DEFLATED)

    # Keep the non-GLSL entries (programs for other languages, materials);
    # the header files are re-added from the canonical source below.
    for item in old.infolist():
        if item.filename.endswith(".glsl"):
            continue
        if item.filename in ("OgreUnifiedShader.h", "HLSL_SM4Support.hlsl"):
            continue
        zout.writestr(item, old.read(item.filename))
    old.close()

    # The RTSS-generated programs #include <OgreUnifiedShader.h> (RTShaderLib
    # files use helpers from it); ship the real header, which is ES-aware
    # (transpose() is implemented for __VERSION__ == 100).
    if os.path.exists(SRC_UNIFIED_HEADER):
        with open(SRC_UNIFIED_HEADER, encoding="utf-8", errors="ignore") as f:
            zout.writestr("OgreUnifiedShader.h", f.read())
    else:
        print("WARNING: missing", SRC_UNIFIED_HEADER)
    # The header's HLSL branch #includes this file; Ogre's include resolver
    # inlines every #include regardless of #if branches, so it must exist too
    # (the preprocessor strips the HLSL branch later, so its content never
    # reaches the GLSL ES compiler).
    if os.path.exists(SRC_HLSL_SUPPORT):
        with open(SRC_HLSL_SUPPORT, encoding="utf-8", errors="ignore") as f:
            zout.writestr("HLSL_SM4Support.hlsl", f.read())
    else:
        print("WARNING: missing", SRC_HLSL_SUPPORT)

    # Write the canonical GLSL libs with ES fixes applied.
    for fname in GLSL_FILES:
        path = os.path.join(SRC_GLSL, fname)
        if not os.path.exists(path):
            print("WARNING: missing", path)
            continue
        with open(path, encoding="utf-8", errors="ignore") as f:
            data = fix_glsl(f.read(), fname)
        zout.writestr(fname, data)

    zout.close()
    os.replace(tmp, ZIP)
    print("regenerated", ZIP, "from canonical RTShaderLib (GLSL ES compatible)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
