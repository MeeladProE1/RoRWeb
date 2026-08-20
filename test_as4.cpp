#include <angelscript.h>
#include <stdio.h>

using namespace AngelScript;

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
    setvbuf(stdout, NULL, _IONBF, 0);
    printf("library options: [%s]\n", asGetLibraryOptions());

    asIScriptEngine* engine = asCreateScriptEngine(ANGELSCRIPT_VERSION);
    printf("engine = %p\n", (void*)engine);
    if (!engine) return 1;
    engine->SetEngineProperty(asEP_ALLOW_UNSAFE_REFERENCES, true);
    TestEngine te;
    int r = engine->SetMessageCallback(asMETHOD(TestEngine, msgCallback), &te, asCALL_THISCALL);
    printf("SetMessageCallback = %d\n", r);

    printf("1: RegisterObjectType template\n");
    r = engine->RegisterObjectType("array<class T>", 0, asOBJ_REF | asOBJ_GC | asOBJ_TEMPLATE);
    printf("1 = %d\n", r);

    printf("2: RegisterDefaultArrayType\n");
    r = engine->RegisterDefaultArrayType("array<T>");
    printf("2 = %d\n", r);

    printf("done\n");
    engine->Release();
    return 0;
}
