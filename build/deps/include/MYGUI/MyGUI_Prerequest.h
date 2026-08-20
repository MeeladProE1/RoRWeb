/*
 * This source file is part of MyGUI. For the latest info, see http://mygui.info/
 * Distributed under the MIT License
 * (See accompanying file COPYING.MIT or copy at http://opensource.org/licenses/MIT)
 */

#ifndef MYGUI_PREREQUEST_H_
#define MYGUI_PREREQUEST_H_

#include "MyGUI_Platform.h"

// Codebuff web port: libc++ (Emscripten) does not provide char_traits<unsigned short>
// / <unsigned int>, which MyGUI's UString (std::basic_string<unsigned short>) needs.
#if defined(__EMSCRIPTEN__) && !defined(CHAR_TRAITS_WEB_SPECIALIZED)
#define CHAR_TRAITS_WEB_SPECIALIZED
#include <cstring>
#include <cstddef>
#include <iosfwd>
namespace std
{
    template<typename T>
    struct basic_char_traits_web
    {
        typedef T char_type;
        typedef int int_type;
        typedef streamoff off_type;
        typedef streampos pos_type;
        typedef mbstate_t state_type;
        static void assign(char_type& c1, const char_type& c2) { c1 = c2; }
        static bool eq(char_type a, char_type b) { return a == b; }
        static bool lt(char_type a, char_type b) { return a < b; }
        static int compare(const char_type* s1, const char_type* s2, size_t n)
        {
            for (size_t i = 0; i < n; ++i)
                if (!eq(s1[i], s2[i]))
                    return lt(s1[i], s2[i]) ? -1 : 1;
            return 0;
        }
        static size_t length(const char_type* s)
        {
            size_t l = 0;
            while (!eq(s[l], char_type()))
                ++l;
            return l;
        }
        static const char_type* find(const char_type* s, size_t n, const char_type& a)
        {
            for (size_t i = 0; i < n; ++i)
                if (eq(s[i], a))
                    return s + i;
            return 0;
        }
        static char_type* move(char_type* s1, const char_type* s2, size_t n)
        {
            return static_cast<char_type*>(std::memmove(s1, s2, n * sizeof(char_type)));
        }
        static char_type* copy(char_type* s1, const char_type* s2, size_t n)
        {
            return static_cast<char_type*>(std::memcpy(s1, s2, n * sizeof(char_type)));
        }
        static char_type* assign(char_type* s, size_t n, char_type a)
        {
            for (size_t i = 0; i < n; ++i)
                s[i] = a;
            return s;
        }
        static int_type not_eof(int_type e) { return e == eof() ? 0 : e; }
        static char_type to_char_type(int_type e) { return static_cast<char_type>(e); }
        static int_type to_int_type(char_type c) { return static_cast<int_type>(c); }
        static bool eq_int_type(int_type a, int_type b) { return a == b; }
        static int_type eof() { return -1; }
    };
    template<> struct char_traits<unsigned short> : basic_char_traits_web<unsigned short> {};
    template<> struct char_traits<unsigned int> : basic_char_traits_web<unsigned int> {};
}
#define CHAR_TRAITS_WEB_SPECIALIZED
#endif

#if MYGUI_COMPILER == MYGUI_COMPILER_MSVC
#	ifdef MYGUI_CHECK_MEMORY_LEAKS
#		define _CRTDBG_MAP_ALLOC
#		include <crtdbg.h>
#	endif
#endif

#define MYGUI_DEFINE_VERSION(major, minor, patch) ((major << 16) | (minor << 8) | patch)

namespace MyGUI
{
	class Gui;
	class LogManager;
	class InputManager;
	class SubWidgetManager;
	class LayerManager;
	class SkinManager;
	class WidgetManager;
	class FontManager;
	class ControllerManager;
	class PointerManager;
	class ClipboardManager;
	class LayoutManager;
	class PluginManager;
	class DynLibManager;
	class LanguageManager;
	class ResourceManager;
	class RenderManager;
	class FactoryManager;
	class ToolTipManager;

	class Widget;
	class Button;
	class Window;
	class ListBox;
	class EditBox;
	class ComboBox;
	class TextBox;
	class TabControl;
	class TabItem;
	class ProgressBar;
	class ItemBox;
	class MultiListBox;
	class MultiListItem;
	class ImageBox;
	class MenuControl;
	class MenuItem;
	class PopupMenu;
	class MenuBar;
	class ScrollBar;
	class ScrollView;
	class DDContainer;
	class Canvas;

	// Define version
#define MYGUI_VERSION_MAJOR 3
#define MYGUI_VERSION_MINOR 4
#define MYGUI_VERSION_PATCH 0

#define MYGUI_VERSION    MYGUI_DEFINE_VERSION(MYGUI_VERSION_MAJOR, MYGUI_VERSION_MINOR, MYGUI_VERSION_PATCH)

	// Disable warnings for MSVC compiler
#if MYGUI_COMPILER == MYGUI_COMPILER_MSVC

// disable: "<type> needs to have dll-interface to be used by clients'
// Happens on STL member variables which are not public therefore is ok
#	pragma warning (disable : 4251)

// also some warnings are disabled in CMake

#endif

} // namespace MyGUI

#include "MyGUI_DeprecatedTypes.h"

#endif // MYGUI_PREREQUEST_H_
