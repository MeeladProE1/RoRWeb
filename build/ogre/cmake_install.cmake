# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/build/deps/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/build/deps/lib/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-Paging.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-MeshLodGenerator.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-Terrain.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-RTShaderSystem.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-Property.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-Overlay.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/pkgconfig/OGRE-Bites.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OGRE" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/build/ogre/inst/bin/resources.cfg"
    "C:/a1e/Tests/c1e/C2e/build/ogre/inst/bin/plugins.cfg"
    "C:/a1e/Tests/c1e/C2e/build/ogre/inst/bin/samples.cfg"
    "C:/a1e/Tests/c1e/C2e/build/ogre/inst/bin/tests.cfg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/build/ogre/cmake/OGREConfig.cmake"
    "C:/a1e/Tests/c1e/C2e/build/ogre/cmake/OGREConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake")
      file(DIFFERENT _cmake_export_file_changed FILES
           "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake"
           "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
      if(_cmake_export_file_changed)
        file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets-*.cmake")
        if(_cmake_old_config_files)
          string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
          message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
          unset(_cmake_old_config_files_text)
          file(REMOVE ${_cmake_old_config_files})
        endif()
        unset(_cmake_old_config_files)
      endif()
      unset(_cmake_export_file_changed)
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake")
      file(DIFFERENT _cmake_export_file_changed FILES
           "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake"
           "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
      if(_cmake_export_file_changed)
        file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets-*.cmake")
        if(_cmake_old_config_files)
          string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
          message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
          unset(_cmake_old_config_files_text)
          file(REMOVE ${_cmake_old_config_files})
        endif()
        unset(_cmake_old_config_files)
      endif()
      unset(_cmake_export_file_changed)
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake")
      file(DIFFERENT _cmake_export_file_changed FILES
           "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake"
           "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
      if(_cmake_export_file_changed)
        file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets-*.cmake")
        if(_cmake_old_config_files)
          string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
          message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
          unset(_cmake_old_config_files_text)
          file(REMOVE ${_cmake_old_config_files})
        endif()
        unset(_cmake_old_config_files)
      endif()
      unset(_cmake_export_file_changed)
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake")
      file(DIFFERENT _cmake_export_file_changed FILES
           "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake"
           "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
      if(_cmake_export_file_changed)
        file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets-*.cmake")
        if(_cmake_old_config_files)
          string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
          message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake/OgreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
          unset(_cmake_old_config_files_text)
          file(REMOVE ${_cmake_old_config_files})
        endif()
        unset(_cmake_old_config_files)
      endif()
      unset(_cmake_export_file_changed)
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/build/ogre/CMakeFiles/Export/155cc22d321e462fe152452a9cebc96c/OgreTargets.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OGRE/Media/" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/source/ogre/Media/ShadowVolume")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/a1e/Tests/c1e/C2e/build/ogre/OgreMain/cmake_install.cmake")
  include("C:/a1e/Tests/c1e/C2e/build/ogre/RenderSystems/cmake_install.cmake")
  include("C:/a1e/Tests/c1e/C2e/build/ogre/PlugIns/cmake_install.cmake")
  include("C:/a1e/Tests/c1e/C2e/build/ogre/Components/cmake_install.cmake")
  include("C:/a1e/Tests/c1e/C2e/build/ogre/Samples/cmake_install.cmake")
  include("C:/a1e/Tests/c1e/C2e/build/ogre/Docs/cmake_install.cmake")
  include("C:/a1e/Tests/c1e/C2e/build/ogre/cmake/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "C:/a1e/Tests/c1e/C2e/build/ogre/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
