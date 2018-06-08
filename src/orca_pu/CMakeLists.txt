cmake_minimum_required(VERSION 3.1.0)
project("orca_pu")

########### orocos ############
find_package(orocos_kdl REQUIRED)
########### orca  #############
find_package(orca REQUIRED)
find_package(gazebo REQUIRED)
find_package(traxxs REQUIRED)
link_directories(${GAZEBO_LIBRARY_DIRS})


include_directories(
    ${orocos_kdl_INCLUDE_DIRS}
    ${GAZEBO_INCLUDE_DIRS}
)


# Warning pour gazebo 8
list(APPEND CMAKE_CXX_FLAGS "${GAZEBO_CXX_FLAGS} -fext-numeric-literals")


add_executable(05-orca_gazebo 05-orca_gazebo.cc)
target_link_libraries(05-orca_gazebo ${GAZEBO_LIBRARIES} pthread orca::orca tinyxml Eigen3::Eigen traxxs::traxxs traxxs::traxxs_softmotion)
install(TARGETS 05-orca_gazebo DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}/examples)
