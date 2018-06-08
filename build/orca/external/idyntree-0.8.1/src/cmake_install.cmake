# Install script for directory: /home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/administrateur/orca_ws/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/core/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/model/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/sensors/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/model_io/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/estimation/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/high-level/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/legacy/high-level-kdl/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/regressors/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/visualization/cmake_install.cmake")
  include("/home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/src/tools/cmake_install.cmake")

endif()

