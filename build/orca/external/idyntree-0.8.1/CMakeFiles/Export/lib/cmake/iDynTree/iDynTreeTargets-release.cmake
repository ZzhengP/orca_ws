#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iDynTree::idyntree-core" for configuration "Release"
set_property(TARGET iDynTree::idyntree-core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-core.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-core )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-core "${_IMPORT_PREFIX}/lib/libidyntree-core.a" )

# Import target "iDynTree::idyntree-model" for configuration "Release"
set_property(TARGET iDynTree::idyntree-model APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-model PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-model.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-model )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-model "${_IMPORT_PREFIX}/lib/libidyntree-model.a" )

# Import target "iDynTree::idyntree-sensors" for configuration "Release"
set_property(TARGET iDynTree::idyntree-sensors APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-sensors PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core;iDynTree::idyntree-model"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-sensors.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-sensors )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-sensors "${_IMPORT_PREFIX}/lib/libidyntree-sensors.a" )

# Import target "iDynTree::idyntree-modelio-urdf" for configuration "Release"
set_property(TARGET iDynTree::idyntree-modelio-urdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-modelio-urdf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-model;iDynTree::idyntree-sensors;/usr/lib/x86_64-linux-gnu/libtinyxml.so"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-modelio-urdf.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-modelio-urdf )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-modelio-urdf "${_IMPORT_PREFIX}/lib/libidyntree-modelio-urdf.a" )

# Import target "iDynTree::idyntree-estimation" for configuration "Release"
set_property(TARGET iDynTree::idyntree-estimation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-estimation PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core;iDynTree::idyntree-model;iDynTree::idyntree-sensors;iDynTree::idyntree-modelio-urdf"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-estimation.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-estimation )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-estimation "${_IMPORT_PREFIX}/lib/libidyntree-estimation.a" )

# Import target "iDynTree::idyntree-high-level" for configuration "Release"
set_property(TARGET iDynTree::idyntree-high-level APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-high-level PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core;iDynTree::idyntree-model;iDynTree::idyntree-sensors;iDynTree::idyntree-modelio-urdf"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-high-level.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-high-level )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-high-level "${_IMPORT_PREFIX}/lib/libidyntree-high-level.a" )

# Import target "iDynTree::idyntree-high-level-kdl" for configuration "Release"
set_property(TARGET iDynTree::idyntree-high-level-kdl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-high-level-kdl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-high-level-kdl.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-high-level-kdl )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-high-level-kdl "${_IMPORT_PREFIX}/lib/libidyntree-high-level-kdl.a" )

# Import target "iDynTree::idyntree-regressors" for configuration "Release"
set_property(TARGET iDynTree::idyntree-regressors APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-regressors PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core;iDynTree::idyntree-sensors"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-regressors.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-regressors )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-regressors "${_IMPORT_PREFIX}/lib/libidyntree-regressors.a" )

# Import target "iDynTree::idyntree-visualization" for configuration "Release"
set_property(TARGET iDynTree::idyntree-visualization APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iDynTree::idyntree-visualization PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iDynTree::idyntree-core;iDynTree::idyntree-model"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libidyntree-visualization.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS iDynTree::idyntree-visualization )
list(APPEND _IMPORT_CHECK_FILES_FOR_iDynTree::idyntree-visualization "${_IMPORT_PREFIX}/lib/libidyntree-visualization.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
