# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2

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
  set(CMAKE_OBJDUMP "C:/MinGW/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libRenderSystem_GLES2Static.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libRenderSystem_GLES2Static.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libRenderSystem_GLES2Static.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libRenderSystem_GLES2Static.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GLES2" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2DepthBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2FBOMultiRenderTarget.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2FBORenderTexture.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2FrameBufferObject.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwareBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwareBufferManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwareIndexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwareOcclusionQuery.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwarePixelBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwareUniformBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2HardwareVertexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2ManagedResource.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2ManagedResourceManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2PixelFormat.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2Plugin.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2Prerequisites.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2RenderSystem.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2RenderToVertexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2StateCacheManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2Texture.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/OgreGLES2TextureManager.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreGLES2Exports.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreGLES2Config.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLContext.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLDepthBufferCommon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLHardwarePixelBufferCommon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLNativeSupport.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLPBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLRenderSystemCommon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLRenderTarget.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLRenderTexture.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLStateCacheManagerCommon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLTextureCommon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLUniformCache.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLUtil.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLVertexArrayObject.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLSupport/include/OgreGLWindow.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreGLSupportPrerequisites.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GLES2/GLES2" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/GLES2/gl2ext.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GLES2/GLES3" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/GLES3/gl3.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/GLES3/gl3platform.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/GLES3/glesw.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GLES2/KHR" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/include/KHR/khrplatform.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GLES2/GLSLES" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/source/ogre/RenderSystems/GLES2/src/GLSLES/include/")
endif()

