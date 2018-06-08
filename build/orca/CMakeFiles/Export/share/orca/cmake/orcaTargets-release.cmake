#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "orca::orca" for configuration "Release"
set_property(TARGET orca::orca APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(orca::orca PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "osqp::osqp"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liborca.so"
  IMPORTED_SONAME_RELEASE "liborca.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS orca::orca )
list(APPEND _IMPORT_CHECK_FILES_FOR_orca::orca "${_IMPORT_PREFIX}/lib/liborca.so" )

# Import target "orca::orca_priv_qpOASES" for configuration "Release"
set_property(TARGET orca::orca_priv_qpOASES APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(orca::orca_priv_qpOASES PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liborca_priv_qpOASES.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS orca::orca_priv_qpOASES )
list(APPEND _IMPORT_CHECK_FILES_FOR_orca::orca_priv_qpOASES "${_IMPORT_PREFIX}/lib/liborca_priv_qpOASES.a" )

# Import target "orca::orca_priv_tinyxml" for configuration "Release"
set_property(TARGET orca::orca_priv_tinyxml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(orca::orca_priv_tinyxml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liborca_priv_tinyxml.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS orca::orca_priv_tinyxml )
list(APPEND _IMPORT_CHECK_FILES_FOR_orca::orca_priv_tinyxml "${_IMPORT_PREFIX}/lib/liborca_priv_tinyxml.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
