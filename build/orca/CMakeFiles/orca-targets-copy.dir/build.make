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

# Utility rule file for orca-targets-copy.

# Include the progress variables for this target.
include CMakeFiles/orca-targets-copy.dir/progress.make

CMakeFiles/orca-targets-copy: orcaTargets.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/administrateur/orca_ws/build/orca/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying 'orcaTargets.cmake' to '/home/administrateur/orca_ws/devel/.private/orca/share/orca/cmake'"
	/usr/bin/cmake -E copy /home/administrateur/orca_ws/build/orca/orcaTargets.cmake /home/administrateur/orca_ws/devel/.private/orca/share/orca/cmake/orcaTargets.cmake

orca-targets-copy: CMakeFiles/orca-targets-copy
orca-targets-copy: CMakeFiles/orca-targets-copy.dir/build.make

.PHONY : orca-targets-copy

# Rule to build all files generated by this target.
CMakeFiles/orca-targets-copy.dir/build: orca-targets-copy

.PHONY : CMakeFiles/orca-targets-copy.dir/build

CMakeFiles/orca-targets-copy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/orca-targets-copy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/orca-targets-copy.dir/clean

CMakeFiles/orca-targets-copy.dir/depend:
	cd /home/administrateur/orca_ws/build/orca && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/administrateur/orca_ws/src/orca /home/administrateur/orca_ws/src/orca /home/administrateur/orca_ws/build/orca /home/administrateur/orca_ws/build/orca /home/administrateur/orca_ws/build/orca/CMakeFiles/orca-targets-copy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/orca-targets-copy.dir/depend
