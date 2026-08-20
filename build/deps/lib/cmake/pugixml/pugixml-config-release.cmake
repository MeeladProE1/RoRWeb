#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "pugixml" for configuration "Release"
set_property(TARGET pugixml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(pugixml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libpugixml.a"
  )

list(APPEND _cmake_import_check_targets pugixml )
list(APPEND _cmake_import_check_files_for_pugixml "${_IMPORT_PREFIX}/lib/libpugixml.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
