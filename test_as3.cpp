#include <angelscript.h>
#include <scriptarray/scriptarray.h>
#include <stdio.h>

using namespace AngelScript;

static void DummyCleanup(asITypeInfo *type) { (void)type; }

static bool ScriptArrayTemplateCallback(asITypeInfo *ti, bool &out)
{
    int typeId = ti->GetSubTypeId();
    out = (typeId != asTYPEID_VOID);
    return true;
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
    asIScriptEngine* engine = asCreateScriptEngine(ANGELSCRIPT_VERSION);
    printf("engine = %p\n", (void*)engine);
    if (!engine) return 1;
    engine->SetEngineProperty(asEP_ALLOW_UNSAFE_REFERENCES, true);
    TestEngine te;
    int r = engine->SetMessageCallback(asMETHOD(TestEngine, msgCallback), &te, asCALL_THISCALL);
    printf("SetMessageCallback = %d\n", r);

    printf("A: SetTypeInfoUserDataCleanupCallback\n");
    engine->SetTypeInfoUserDataCleanupCallback(DummyCleanup, 1000);

    printf("B: RegisterObjectType template\n");
    r = engine->RegisterObjectType("array<class T>", 0, asOBJ_REF | asOBJ_GC | asOBJ_TEMPLATE);
    printf("B = %d\n", r);

    printf("C: RegisterObjectBehaviour TEMPLATE_CALLBACK (asCALL_CDECL)\n");
    r = engine->RegisterObjectBehaviour("array<T>", asBEHAVE_TEMPLATE_CALLBACK, "bool f(int&in, bool&out)", asFUNCTION(ScriptArrayTemplateCallback), asCALL_CDECL);
    printf("C = %d\n", r);

    printf("D: RegisterObjectBehaviour FACTORY (asCALL_CDECL)\n");
    r = engine->RegisterObjectBehaviour("array<T>", asBEHAVE_FACTORY, "array<T>@ f(int&in)", asFUNCTIONPR(CScriptArray::Create, (asITypeInfo*), CScriptArray*), asCALL_CDECL);
    printf("D = %d\n", r);

    printf("E: RegisterObjectBehaviour ADDREF (asCALL_THISCALL)\n");
    r = engine->RegisterObjectBehaviour("array<T>", asBEHAVE_ADDREF, "void f()", asMETHOD(CScriptArray,AddRef), asCALL_THISCALL);
    printf("E = %d\n", r);

    printf("F: RegisterObjectMethod opIndex (asCALL_THISCALL)\n");
    r = engine->RegisterObjectMethod("array<T>", "T &opIndex(uint index)", asMETHODPR(CScriptArray, At, (asUINT), void*), asCALL_THISCALL);
    printf("F = %d\n", r);

    printf("G: RegisterDefaultArrayType\n");
    r = engine->RegisterDefaultArrayType("array<T>");
    printf("G = %d\n", r);

    printf("all done\n");
    engine->Release();
    return 0;
}
