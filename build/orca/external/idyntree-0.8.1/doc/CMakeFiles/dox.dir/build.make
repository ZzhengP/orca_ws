# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/administrateur/orca_ws/src/orca

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/administrateur/orca_ws/build/orca

# Utility rule file for dox.

# Include the progress variables for this target.
include external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/progress.make

external/idyntree-0.8.1/doc/CMakeFiles/dox:
	cd /home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/doc && /usr/bin/doxygen /home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/doc/Doxyfile

dox: external/idyntree-0.8.1/doc/CMakeFiles/dox
dox: external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/build.make

.PHONY : dox

# Rule to build all files generated by this target.
external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/build: dox

.PHONY : external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/build

external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/clean:
	cd /home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/doc && $(CMAKE_COMMAND) -P CMakeFiles/dox.dir/cmake_clean.cmake
.PHONY : external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/clean

external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/depend:
	cd /home/administrateur/orca_ws/build/orca && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/administrateur/orca_ws/src/orca /home/administrateur/orca_ws/src/orca/external/idyntree-0.8.1/doc /home/administrateur/orca_ws/build/orca /home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/doc /home/administrateur/orca_ws/build/orca/external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/idyntree-0.8.1/doc/CMakeFiles/dox.dir/depend

