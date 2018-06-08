# Install script for directory: /home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/administrateur/orca_ws/build/orca/lib/libidyntree-model.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/iDynTree/Model" TYPE FILE FILES
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/ContactWrench.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/DenavitHartenberg.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/FixedJoint.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/ForwardKinematics.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/FreeFloatingState.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/FreeFloatingMatrices.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/IJoint.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Dynamics.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/DynamicsLinearization.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/DynamicsLinearizationHelpers.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Indeces.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Indices.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Jacobians.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/JointState.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/LinkTraversalsCache.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Link.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/LinkState.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Model.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/ModelTransformers.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/MovableJointImpl.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/RevoluteJoint.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/PrismaticJoint.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/SolidShapes.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/SubModel.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/model/include/iDynTree/Model/Traversal.h"
    )
endif()

