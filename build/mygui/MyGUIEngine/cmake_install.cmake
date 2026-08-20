# Install script for directory: C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/a1e/Tests/c1e/C2e/build/deps")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/a1e/Tests/c1e/C2e/emsdk/upstream/bin/llvm-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/mygui/lib/libMyGUIEngineStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/mygui/lib/libMyGUIEngineStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/mygui/lib/libMyGUIEngineStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/mygui/lib/libMyGUIEngineStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MYGUI" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ActionController.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Align.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Any.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_BackwardCompatibility.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_BiIndexBase.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Bitwise.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Button.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Canvas.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ChildSkinInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ClipboardManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WindowsClipboardHandler.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Colour.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ComboBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Common.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_CommonStateInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ConsoleLogListener.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Constants.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ControllerEdgeHide.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ControllerFadeAlpha.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ControllerItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ControllerManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ControllerPosition.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ControllerRepeatClick.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_CoordConverter.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DDContainer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DDItemInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DataFileStream.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DataManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DataMemoryStream.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DataStream.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DataStreamHolder.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Delegate.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DeprecatedTypes.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DeprecatedWidgets.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Diagnostic.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DynLib.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_DynLibManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_EditBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_EditText.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Enumerator.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_EventPair.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Exception.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_FactoryManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_FileLogListener.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_FlowDirection.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_FontData.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_FontManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_GenericFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_GeometryUtility.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Gui.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IBItemInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ICroppedRectangle.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IDataStream.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IFont.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IItemContainer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ILayer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ILayerItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ILayerNode.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ILogFilter.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ILogListener.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IObject.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IPointer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IRenderTarget.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IResource.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ISerializable.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IStateInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ISubWidget.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ISubWidgetRect.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ISubWidgetText.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ITexture.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IUnlinkWidget.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_IVertexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ImageBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ImageInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_InputManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ItemBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_KeyCode.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LanguageManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LayerItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LayerManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LayerNode.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LayoutData.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LayoutManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LevelLogFilter.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ListBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LogLevel.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LogManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LogSource.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_LogStream.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Macros.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MainSkin.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MaskPickInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MenuBar.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MenuControl.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MenuItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MenuItemType.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MouseButton.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MultiListBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_MultiListItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_OverlappedLayer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Platform.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Plugin.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_PluginManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_PointerManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_PolygonalSkin.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_PopupMenu.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Precompiled.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Prerequest.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ProgressBar.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_RTTI.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_RenderFormat.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_RenderItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_RenderManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_RenderTargetInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResizingPolicy.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceImageSet.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceImageSetData.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceImageSetPointer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceLayout.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceManualFont.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceManualPointer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceSkin.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ResourceTrueTypeFont.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_RotatingSkin.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ScrollBar.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ScrollView.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ScrollViewBase.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SharedLayer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SharedLayerNode.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SimpleText.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Singleton.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SkinItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SkinManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_StringUtility.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SubSkin.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SubWidgetBinding.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SubWidgetInfo.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_SubWidgetManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TCoord.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TPoint.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TRect.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TSize.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TabControl.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TabItem.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TextBox.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TextChangeHistory.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TextIterator.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TextView.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TextViewData.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TextureUtility.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_TileRect.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Timer.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_ToolTipManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Types.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_UString.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Version.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_VertexData.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Widget.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetDefines.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetInput.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetManager.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetStyle.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetToolTip.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetTranslate.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_WidgetUserData.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_Window.h"
    "C:/a1e/Tests/c1e/C2e/source/mygui-340/MyGUIEngine/include/MyGUI_XmlDocument.h"
    )
endif()

