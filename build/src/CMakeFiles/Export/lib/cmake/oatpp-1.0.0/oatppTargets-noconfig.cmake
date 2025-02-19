#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "oatpp::oatpp" for configuration ""
set_property(TARGET oatpp::oatpp APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(oatpp::oatpp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/oatpp-1.0.0/liboatpp.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS oatpp::oatpp )
list(APPEND _IMPORT_CHECK_FILES_FOR_oatpp::oatpp "${_IMPORT_PREFIX}/lib/oatpp-1.0.0/liboatpp.a" )

# Import target "oatpp::oatpp-test" for configuration ""
set_property(TARGET oatpp::oatpp-test APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(oatpp::oatpp-test PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/oatpp-1.0.0/liboatpp-test.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS oatpp::oatpp-test )
list(APPEND _IMPORT_CHECK_FILES_FOR_oatpp::oatpp-test "${_IMPORT_PREFIX}/lib/oatpp-1.0.0/liboatpp-test.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
