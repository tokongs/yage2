# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_SOURCE_DIR = /home/tokongs/projects/yage2/3rd-party/glm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tokongs/projects/yage2/3rd-party/glm/build

# Include any dependencies generated for this target.
include glm/CMakeFiles/glm_static.dir/depend.make

# Include the progress variables for this target.
include glm/CMakeFiles/glm_static.dir/progress.make

# Include the compile flags for this target's objects.
include glm/CMakeFiles/glm_static.dir/flags.make

glm/CMakeFiles/glm_static.dir/detail/glm.cpp.o: glm/CMakeFiles/glm_static.dir/flags.make
glm/CMakeFiles/glm_static.dir/detail/glm.cpp.o: ../glm/detail/glm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glm/CMakeFiles/glm_static.dir/detail/glm.cpp.o"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/glm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/glm_static.dir/detail/glm.cpp.o -c /home/tokongs/projects/yage2/3rd-party/glm/glm/detail/glm.cpp

glm/CMakeFiles/glm_static.dir/detail/glm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glm_static.dir/detail/glm.cpp.i"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/glm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tokongs/projects/yage2/3rd-party/glm/glm/detail/glm.cpp > CMakeFiles/glm_static.dir/detail/glm.cpp.i

glm/CMakeFiles/glm_static.dir/detail/glm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glm_static.dir/detail/glm.cpp.s"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/glm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tokongs/projects/yage2/3rd-party/glm/glm/detail/glm.cpp -o CMakeFiles/glm_static.dir/detail/glm.cpp.s

# Object files for target glm_static
glm_static_OBJECTS = \
"CMakeFiles/glm_static.dir/detail/glm.cpp.o"

# External object files for target glm_static
glm_static_EXTERNAL_OBJECTS =

glm/libglm_static.a: glm/CMakeFiles/glm_static.dir/detail/glm.cpp.o
glm/libglm_static.a: glm/CMakeFiles/glm_static.dir/build.make
glm/libglm_static.a: glm/CMakeFiles/glm_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libglm_static.a"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/glm && $(CMAKE_COMMAND) -P CMakeFiles/glm_static.dir/cmake_clean_target.cmake
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/glm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glm_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glm/CMakeFiles/glm_static.dir/build: glm/libglm_static.a

.PHONY : glm/CMakeFiles/glm_static.dir/build

glm/CMakeFiles/glm_static.dir/clean:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/glm && $(CMAKE_COMMAND) -P CMakeFiles/glm_static.dir/cmake_clean.cmake
.PHONY : glm/CMakeFiles/glm_static.dir/clean

glm/CMakeFiles/glm_static.dir/depend:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tokongs/projects/yage2/3rd-party/glm /home/tokongs/projects/yage2/3rd-party/glm/glm /home/tokongs/projects/yage2/3rd-party/glm/build /home/tokongs/projects/yage2/3rd-party/glm/build/glm /home/tokongs/projects/yage2/3rd-party/glm/build/glm/CMakeFiles/glm_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glm/CMakeFiles/glm_static.dir/depend

