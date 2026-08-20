if(NOT TARGET Angelscript::angelscript)
    add_library(Angelscript::angelscript STATIC IMPORTED)
    set_target_properties(Angelscript::angelscript PROPERTIES
        IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../../../lib/libangelscript.a"
        INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../../../include")
endif()
set(Angelscript_FOUND TRUE)
set(Angelscript_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/../../../include")
set(Angelscript_LIBRARIES Angelscript::angelscript)
