#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SocketW::SocketW" for configuration "Release"
set_property(TARGET SocketW::SocketW APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SocketW::SocketW PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSocketW.a"
  )

list(APPEND _cmake_import_check_targets SocketW::SocketW )
list(APPEND _cmake_import_check_files_for_SocketW::SocketW "${_IMPORT_PREFIX}/lib/libSocketW.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
