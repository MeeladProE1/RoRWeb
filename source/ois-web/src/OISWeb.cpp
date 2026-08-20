/*
    OIS "web" platform implementation for the Rigs of Rods browser port.
    Implements the OIS API surface used by Rigs of Rods on top of DOM
    keyboard/mouse events delivered from JavaScript. No window handles,
    no pointer grab - the browser owns the cursor; we just track it.

    License: zlib/libpng (same as OIS).
*/
#include "OIS.h"

#include <emscripten.h>

#include <cstring>
#include <string>
#include <vector>

namespace OIS
{

namespace web
{
    struct KeyEvt
    {
        KeyCode      code;
        unsigned int text;
        bool         down;
    };
    struct MouseMoveEvt
    {
        int x, y;
    };
    struct MouseBtnEvt
    {
        int  id;
        bool down;
    };
    struct MouseWheelEvt
    {
        int delta;
    };

    std::vector<KeyEvt>        g_key_queue;
    std::vector<MouseMoveEvt>  g_move_queue;
    std::vector<MouseBtnEvt>   g_btn_queue;
    std::vector<MouseWheelEvt> g_wheel_queue;

    bool g_key_down[256]   = { false };
    int  g_mouse_x         = 400;
    int  g_mouse_y         = 300;
    int  g_mouse_buttons   = 0;
    int  g_canvas_w        = 800;
    int  g_canvas_h        = 600;
}

} // namespace OIS

// ============================ JS -> C bridge ============================
// These are called from the browser glue code (see web/js/input.js).
extern "C"
{
    EMSCRIPTEN_KEEPALIVE void OISWebKeyEvent(int code, unsigned int text, int down)
    {
        OIS::web::g_key_queue.push_back({ (OIS::KeyCode)(code & 0xFF), text, down != 0 });
        OIS::web::g_key_down[code & 0xFF] = down != 0;
    }

    EMSCRIPTEN_KEEPALIVE void OISWebMouseMove(int x, int y)
    {
        OIS::web::g_mouse_x = x;
        OIS::web::g_mouse_y = y;
        OIS::web::g_move_queue.push_back({ x, y });
    }

    EMSCRIPTEN_KEEPALIVE void OISWebMouseButton(int id, int down)
    {
        OIS::web::g_btn_queue.push_back({ id, down != 0 });
        if (down)
            OIS::web::g_mouse_buttons |= (1 << id);
        else
            OIS::web::g_mouse_buttons &= ~(1 << id);
    }

    EMSCRIPTEN_KEEPALIVE void OISWebMouseWheel(int delta)
    {
        OIS::web::g_wheel_queue.push_back({ delta });
    }

    EMSCRIPTEN_KEEPALIVE void OISWebCanvasSize(int w, int h)
    {
        OIS::web::g_canvas_w = w;
        OIS::web::g_canvas_h = h;
    }
}

namespace OIS
{

// ============================ Exception ============================
const char* Exception::what() const throw() { return eText; }

// ============================ Web Keyboard ============================
class KeyboardWeb : public Keyboard
{
public:
    KeyboardWeb(bool buffered, InputManager* creator)
        : Keyboard("Browser keyboard", buffered, 0, creator)
    {}

    bool isKeyDown(KeyCode key) const override { return web::g_key_down[key & 0xFF]; }

    void setBuffered(bool buffered) override { mBuffered = buffered; }

    void capture() override
    {
        if (web::g_key_queue.empty())
            return;
        for (const auto& e : web::g_key_queue)
        {
            KeyEvent ev(this, e.code, e.text);
            if (mListener)
            {
                if (e.down)
                    mListener->keyPressed(ev);
                else
                    mListener->keyReleased(ev);
            }
        }
        web::g_key_queue.clear();
    }

    Interface* queryInterface(Interface::IType type) override { return 0; }
    void       _initialize() override {}

    void setTextTranslation(TextTranslationMode mode) override { mTextMode = mode; }

    const std::string& getAsString(KeyCode kc) override
    {
        static const std::string empty;
        return empty;
    }

    KeyCode getAsKeyCode(std::string str) override { return KC_UNASSIGNED; }

    void copyKeyStates(char keys[256]) const override
    {
        for (int i = 0; i < 256; ++i)
            keys[i] = web::g_key_down[i] ? 1 : 0;
    }
};

// ============================ Web Mouse ============================
class MouseWeb : public Mouse
{
public:
    MouseWeb(bool buffered, InputManager* creator)
        : Mouse("Browser mouse", buffered, 0, creator)
        , mLastX(web::g_mouse_x)
        , mLastY(web::g_mouse_y)
    {
        mState.width    = web::g_canvas_w;
        mState.height   = web::g_canvas_h;
        mState.X.abs    = web::g_mouse_x;
        mState.Y.abs    = web::g_mouse_y;
        mState.buttons  = web::g_mouse_buttons;
    }

    void setBuffered(bool buffered) override { mBuffered = buffered; }

    void capture() override
    {
        mState.width  = web::g_canvas_w;
        mState.height = web::g_canvas_h;

        for (const auto& e : web::g_move_queue)
        {
            mState.X.abs = e.x;
            mState.Y.abs = e.y;
            mState.X.rel += e.x - mLastX;
            mState.Y.rel += e.y - mLastY;
            mLastX = e.x;
            mLastY = e.y;
            if (mListener)
                mListener->mouseMoved(MouseEvent(this, mState));
        }

        for (const auto& e : web::g_btn_queue)
        {
            if (e.down)
                mState.buttons |= (1 << e.id);
            else
                mState.buttons &= ~(1 << e.id);
            if (mListener)
            {
                if (e.down)
                    mListener->mousePressed(MouseEvent(this, mState), (MouseButtonID)e.id);
                else
                    mListener->mouseReleased(MouseEvent(this, mState), (MouseButtonID)e.id);
            }
        }

        for (const auto& e : web::g_wheel_queue)
        {
            mState.Z.abs += e.delta;
            mState.Z.rel += e.delta;
            if (mListener)
                mListener->mouseMoved(MouseEvent(this, mState));
        }

        web::g_move_queue.clear();
        web::g_btn_queue.clear();
        web::g_wheel_queue.clear();

        mState.X.rel = 0;
        mState.Y.rel = 0;
        mState.Z.rel = 0;
    }

    Interface* queryInterface(Interface::IType type) override { return 0; }
    void       _initialize() override {}

private:
    int mLastX;
    int mLastY;
};

// ============================ Web Joystick (stub) ============================
class JoyStickWeb : public JoyStick
{
public:
    JoyStickWeb(bool buffered, InputManager* creator)
        : JoyStick("Browser joystick", buffered, 0, creator)
    {}

    void setBuffered(bool buffered) override { mBuffered = buffered; }
    void capture() override {}
    Interface* queryInterface(Interface::IType type) override { return 0; }
    void       _initialize() override {}
};

// ============================ Web InputManager ============================
class WebInputManager : public InputManager
{
public:
    WebInputManager()
        : InputManager("Browser (Emscripten) input manager")
    {}

    ~WebInputManager() {}

    void _initialize(ParamList&) override {}

    const std::string& inputSystemName() override { return mInputSystemName; }

    int getNumberOfDevices(Type iType) override
    {
        if (iType == OISKeyboard)
            return 1;
        if (iType == OISMouse)
            return 1;
        return 0;
    }

    DeviceList listFreeDevices() override
    {
        DeviceList dl;
        dl.insert(DeviceList::value_type(OISKeyboard, "Browser keyboard"));
        dl.insert(DeviceList::value_type(OISMouse, "Browser mouse"));
        return dl;
    }

    Object* createInputObject(Type iType, bool bufferMode, const std::string& vendor) override
    {
        if (iType == OISKeyboard)
            return new KeyboardWeb(bufferMode, this);
        if (iType == OISMouse)
            return new MouseWeb(bufferMode, this);
        OIS_EXCEPT(E_InputDeviceNonExistant, "No such input device type in the browser build");
        return 0;
    }

    void destroyInputObject(Object* obj) override { delete obj; }
    void addFactoryCreator(FactoryCreator* factory) override {}
    void removeFactoryCreator(FactoryCreator* factory) override {}
    void enableAddOnFactory(AddOnFactories factory) override {}
};

// ============================ Base class glue ============================
// The real OIS defines these in its platform sources; for the web build the
// implementation lives here so the symbols exist for the linker.

InputManager::InputManager(const std::string& name)
    : m_VersionName(OIS_VERSION_NAME)
    , mFactories()
    , mFactoryObjects()
    , mInputSystemName(name)
    , m_lircSupport(0)
    , m_wiiMoteSupport(0)
{}

InputManager::~InputManager() {}

const std::string& InputManager::inputSystemName() { return mInputSystemName; }

// Base-class non-pure virtuals (no-op in the browser; WebInputManager overrides them).
int InputManager::getNumberOfDevices(Type iType) { return 0; }
DeviceList InputManager::listFreeDevices() { return DeviceList(); }
Object* InputManager::createInputObject(Type iType, bool bufferMode, const std::string& vendor) { return 0; }
void InputManager::destroyInputObject(Object* obj) {}
void InputManager::addFactoryCreator(FactoryCreator* factory) {}
void InputManager::removeFactoryCreator(FactoryCreator* factory) {}
void InputManager::enableAddOnFactory(AddOnFactories factory) {}

const std::string& InputManager::getVersionName()
{
    static const std::string v(OIS_VERSION_NAME);
    return v;
}

void Keyboard::setTextTranslation(TextTranslationMode mode) { mTextMode = mode; }

// Force feedback is not supported in the browser; these stubs keep the API linkable.
Effect::Effect(EForce ef, EType et)
    : force(ef)
    , type(et)
    , direction(North)
    , trigger_button(-1)
    , trigger_interval(0)
    , replay_length(0)
    , replay_delay(0)
    , _handle(-1)
    , effect(nullptr)
    , axes(1)
{
    switch (et)
    {
    case Constant:  effect = new ConstantEffect();  break;
    case Ramp:      effect = new RampEffect();      break;
    case Square:
    case Triangle:
    case Sine:
    case SawToothUp:
    case SawToothDown: effect = new PeriodicEffect(); break;
    case Friction:
    case Damper:
    case Inertia:
    case Spring:    effect = new ConditionalEffect(); break;
    default:        effect = nullptr;               break;
    }
}

Effect::~Effect() { delete effect; }

ForceEffect* Effect::getForceEffect() const { return effect; }

void Effect::setNumAxes(short nAxes) { axes = nAxes; }

short Effect::getNumAxes() const { return axes; }

const char* Effect::getDirectionName(EDirection eValue) { return ""; }

unsigned int InputManager::getVersionNumber() { return OIS_VERSION; }

InputManager* InputManager::createInputSystem(std::size_t winHandle)
{
    ParamList pl;
    return createInputSystem(pl);
}

InputManager* InputManager::createInputSystem(ParamList& paramList)
{
    InputManager* im = new WebInputManager();
    im->_initialize(paramList);
    return im;
}

void InputManager::destroyInputSystem(InputManager* manager) { delete manager; }

// Joystick non-pure methods (never exercised - no joysticks in the browser).
int JoyStick::getNumberOfComponents(ComponentType cType) const { return 0; }
void JoyStick::setVector3Sensitivity(float degrees) {}
float JoyStick::getVector3Sensitivity() const { return 0.0f; }
void JoyStick::setEventCallback(JoyStickListener* joyListener) { mListener = joyListener; }
JoyStickListener* JoyStick::getEventCallback() const { return mListener; }
JoyStick::JoyStick(const std::string& vendor, bool buffered, int devID, InputManager* creator)
    : Object(vendor, OISJoyStick, buffered, devID, creator)
    , mSliders(0)
    , mPOVs(0)
    , mState()
    , mListener(0)
{}

} // namespace OIS
