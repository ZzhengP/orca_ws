# Install script for directory: /home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/administrateur/orca_ws/build/orca/lib/libidyntree-core.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/iDynTree/Core" TYPE FILE FILES
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Axis.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/ArticulatedBodyInertia.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/ClassicalAcc.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Direction.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/EigenSparseHelpers.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/EigenHelpers.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/InertiaNonLinearParametrization.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/MatrixDynSize.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/MatrixFixSize.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Position.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/PositionRaw.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/PositionSemantics.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Rotation.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/RotationRaw.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/RotationSemantics.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/RotationalInertiaRaw.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialAcc.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialForceVector.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialInertiaRaw.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialInertia.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialMomentum.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialMotionVector.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/TestUtils.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Transform.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/TransformDerivative.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/TransformSemantics.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Twist.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Utils.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/VectorFixSize.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/VectorDynSize.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/LinearForceVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/AngularForceVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/LinearMotionVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/AngularMotionVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Wrench.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/PrivateUtils.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/PrivateMotionForceVertorAssociations.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/PrivatePreProcessorUtils.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/PrivateSemanticsMacros.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/GeomVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/MotionVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/ForceVector3.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SpatialVector.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/SparseMatrix.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/Triplets.h"
    "/home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/src/core/include/iDynTree/Core/CubicSpline.h"
    )
endif()

