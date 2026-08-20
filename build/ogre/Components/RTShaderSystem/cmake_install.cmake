# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreRTShaderSystemStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreRTShaderSystemStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreRTShaderSystemStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreRTShaderSystemStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RTShaderSystem" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreRTShaderSystem.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderCGProgramProcessor.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderCGProgramWriter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExDualQuaternionSkinning.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExGBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExHardwareSkinning.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExHardwareSkinningTechnique.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExIntegratedPSSM3.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExLayeredBlending.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExLinearSkinning.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExNormalMapLighting.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExPerPixelLighting.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExTextureAtlasSampler.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderExTriplanarTexturing.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPAlphaTest.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPColour.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPFog.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPLighting.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPRenderState.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPRenderStateBuilder.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPTexturing.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFFPTransform.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFunction.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderFunctionAtom.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderGLSLESProgramProcessor.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderGLSLESProgramWriter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderGLSLProgramProcessor.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderGLSLProgramWriter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderGenerator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderHLSLProgramProcessor.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderHLSLProgramWriter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderParameter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderPrerequisites.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderProgram.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderProgramManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderProgramProcessor.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderProgramSet.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderProgramWriter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderProgramWriterManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderRenderState.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderScriptTranslator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreShaderSubRenderState.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreRTShaderExports.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreRTShaderConfig.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/RTShaderSystem/include/OgreRTShader.i"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OGRE/Media/" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/source/ogre/Media/RTShaderLib")
endif()

