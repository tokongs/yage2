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
include test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/depend.make

# Include the progress variables for this target.
include test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/progress.make

# Include the compile flags for this target's objects.
include test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/flags.make

test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.o: test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/flags.make
test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.o: ../test/gtx/gtx_gradient_paint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.o"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.o -c /home/tokongs/projects/yage2/3rd-party/glm/test/gtx/gtx_gradient_paint.cpp

test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.i"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tokongs/projects/yage2/3rd-party/glm/test/gtx/gtx_gradient_paint.cpp > CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.i

test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.s"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tokongs/projects/yage2/3rd-party/glm/test/gtx/gtx_gradient_paint.cpp -o CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.s

# Object files for target test-gtx_gradient_paint
test__gtx_gradient_paint_OBJECTS = \
"CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.o"

# External object files for target test-gtx_gradient_paint
test__gtx_gradient_paint_EXTERNAL_OBJECTS =

test/gtx/test-gtx_gradient_paint: test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/gtx_gradient_paint.cpp.o
test/gtx/test-gtx_gradient_paint: test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/build.make
test/gtx/test-gtx_gradient_paint: test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-gtx_gradient_paint"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-gtx_gradient_paint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/build: test/gtx/test-gtx_gradient_paint

.PHONY : test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/build

test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/clean:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx && $(CMAKE_COMMAND) -P CMakeFiles/test-gtx_gradient_paint.dir/cmake_clean.cmake
.PHONY : test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/clean

test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/depend:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tokongs/projects/yage2/3rd-party/glm /home/tokongs/projects/yage2/3rd-party/glm/test/gtx /home/tokongs/projects/yage2/3rd-party/glm/build /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/gtx/CMakeFiles/test-gtx_gradient_paint.dir/depend

