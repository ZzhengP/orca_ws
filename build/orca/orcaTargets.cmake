# Generated by CMake 3.5.1

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget orca::orca orca::orca_priv_qpOASES orca::orca_priv_tinyxml)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target orca::orca
add_library(orca::orca SHARED IMPORTED)

set_target_properties(orca::orca PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_auto_type;cxx_generalized_initializers;cxx_lambdas"
  INTERFACE_INCLUDE_DIRECTORIES "/home/administrateur/orca_ws/src/orca/include;/home/administrateur/orca_ws/src/orca/external/plog-1.1.4/include;/usr/include/python2.7;/home/administrateur/orca_ws/src/orca/external/matplotlibcpp/include"
  INTERFACE_LINK_LIBRARIES "/usr/lib/x86_64-linux-gnu/libpython2.7.so"
)

# Create imported target orca::orca_priv_qpOASES
add_library(orca::orca_priv_qpOASES STATIC IMPORTED)

set_target_properties(orca::orca_priv_qpOASES PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/administrateur/orca_ws/src/orca/external/qpOASES-3.2.1/include"
)

# Create imported target orca::orca_priv_tinyxml
add_library(orca::orca_priv_tinyxml STATIC IMPORTED)

set_target_properties(orca::orca_priv_tinyxml PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/extern/tinyxml/src"
)

# Import target "orca::orca" for configuration "Release"
set_property(TARGET orca::orca APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(orca::orca PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "osqp::osqp"
  IMPORTED_LOCATION_RELEASE "/home/administrateur/orca_ws/devel/.private/orca/lib/liborca.so"
  IMPORTED_SONAME_RELEASE "liborca.so"
  )

# Import target "orca::orca_priv_qpOASES" for configuration "Release"
set_property(TARGET orca::orca_priv_qpOASES APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(orca::orca_priv_qpOASES PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/home/administrateur/orca_ws/build/orca/liborca_priv_qpOASES.a"
  )

# Import target "orca::orca_priv_tinyxml" for configuration "Release"
set_property(TARGET orca::orca_priv_tinyxml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(orca::orca_priv_tinyxml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/home/administrateur/orca_ws/build/orca/liborca_priv_tinyxml.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
