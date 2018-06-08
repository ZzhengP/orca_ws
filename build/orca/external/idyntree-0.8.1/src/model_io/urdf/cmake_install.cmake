# Install script for directory: /home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model_io/urdf

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "lib")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/administrateur/orca_ws/build/orca/lib/libidyntree-modelio-urdf.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/iDynTree/ModelIO" TYPE FILE FILES
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model_io/urdf/include/iDynTree/ModelIO/URDFModelImport.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model_io/urdf/include/iDynTree/ModelIO/URDFDofsImport.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model_io/urdf/include/iDynTree/ModelIO/URDFGenericSensorsImport.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model_io/urdf/include/iDynTree/ModelIO/ModelLoader.h"
    )
endif()

