#include <angelscript.h>
#include <stdio.h>

static void testFunc()
{
    printf("testFunc called\n");
}

int main()
{
    printf("creating engine\n");
    asIScriptEngine* engine = asCreateScriptEngine(ANGELSCRIPT_VERSION);
    printf("engine = %p\n", (void*)engine);
    if (!engine)
    {
        printf("ENGINE IS NULL - version mismatch!\n");
        return 1;
    }

    int r = engine->SetEngineProperty(asEP_ALLOW_UNSAFE_REFERENCES, true);
    printf("SetEngineProperty = %d\n", r);

    r = engine->RegisterGlobalFunction("void test()", asFUNCTION(testFunc), asCALL_CDECL);
    printf("RegisterGlobalFunction = %d\n", r);

    r = engine->RegisterGlobalFunction("int add(int a, int b)", asFUNCTIONPR([](int a, int b) -> int { return a + b; }, (int, int), int), asCALL_CDECL);
    printf("RegisterGlobalFunction lambda = %d\n", r);

    asIScriptContext* ctx = engine->CreateContext();
    printf("context = %p\n", (void*)ctx);

    engine->Release();
    printf("done\n");
    return 0;
}
