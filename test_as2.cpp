#include <angelscript.h>
#include <scriptarray/scriptarray.h>
#include <scriptstdstring/scriptstdstring.h>
#include <scriptmath/scriptmath.h>
#include <scriptany/scriptany.h>
#include <scriptdictionary/scriptdictionary.h>
#include <stdio.h>
#include <string.h>
#include <float.h>
#include <limits.h>

using namespace AngelScript;

static void logString(const std::string &str)
{
    printf("[script] %s\n", str.c_str());
}

class TestEngine
{
public:
    void msgCallback(const asSMessageInfo *msg)
    {
        printf("msg: %s (%d, %d): %d = %s\n", msg->section, msg->row, msg->col, msg->type, msg->message);
    }
};

int main()
{
    printf("step: create engine\n");
    asIScriptEngine* engine = asCreateScriptEngine(ANGELSCRIPT_VERSION);
    printf("step: engine = %p\n", (void*)engine);
    if (!engine)
    {
        printf("ENGINE IS NULL - version mismatch!\n");
        return 1;
    }

    printf("step: SetEngineProperty\n");
    engine->SetEngineProperty(asEP_ALLOW_UNSAFE_REFERENCES, true);

    printf("step: SetMessageCallback\n");
    TestEngine te;
    int result = engine->SetMessageCallback(asMETHOD(TestEngine, msgCallback), &te, asCALL_THISCALL);
    printf("step: SetMessageCallback = %d\n", result);

    printf("step: RegisterScriptArray\n");
    RegisterScriptArray(engine, true);
    printf("step: RegisterStdString\n");
    RegisterStdString(engine);
    printf("step: RegisterStdStringUtils\n");
    RegisterStdStringUtils(engine);
    printf("step: RegisterScriptMath\n");
    RegisterScriptMath(engine);

    static float SCRIPT_FLT_MAX = FLT_MAX;
    static int SCRIPT_INT_MAX = INT_MAX;
    result = engine->RegisterGlobalProperty("const float FLT_MAX", &SCRIPT_FLT_MAX);
    printf("step: FLT_MAX = %d\n", result);
    result = engine->RegisterGlobalProperty("const int INT_MAX", &SCRIPT_INT_MAX);
    printf("step: INT_MAX = %d\n", result);

    printf("step: RegisterScriptAny\n");
    RegisterScriptAny(engine);
    printf("step: RegisterScriptDictionary\n");
    RegisterScriptDictionary(engine);

    result = engine->RegisterGlobalFunction("void log(const string &in)", asFUNCTION(logString), asCALL_CDECL);
    printf("step: log = %d\n", result);

    printf("step: CreateContext\n");
    asIScriptContext* ctx = engine->CreateContext();
    printf("step: context = %p\n", (void*)ctx);

    engine->Release();
    printf("done\n");
    return 0;
}
