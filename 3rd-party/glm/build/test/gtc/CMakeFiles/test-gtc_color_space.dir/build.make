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
include test/gtc/CMakeFiles/test-gtc_color_space.dir/depend.make

# Include the progress variables for this target.
include test/gtc/CMakeFiles/test-gtc_color_space.dir/progress.make

# Include the compile flags for this target's objects.
include test/gtc/CMakeFiles/test-gtc_color_space.dir/flags.make

test/gtc/CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.o: test/gtc/CMakeFiles/test-gtc_color_space.dir/flags.make
test/gtc/CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.o: ../test/gtc/gtc_color_space.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/gtc/CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.o"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.o -c /home/tokongs/projects/yage2/3rd-party/glm/test/gtc/gtc_color_space.cpp

test/gtc/CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.i"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tokongs/projects/yage2/3rd-party/glm/test/gtc/gtc_color_space.cpp > CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.i

test/gtc/CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.s"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tokongs/projects/yage2/3rd-party/glm/test/gtc/gtc_color_space.cpp -o CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.s

# Object files for target test-gtc_color_space
test__gtc_color_space_OBJECTS = \
"CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.o"

# External object files for target test-gtc_color_space
test__gtc_color_space_EXTERNAL_OBJECTS =

test/gtc/test-gtc_color_space: test/gtc/CMakeFiles/test-gtc_color_space.dir/gtc_color_space.cpp.o
test/gtc/test-gtc_color_space: test/gtc/CMakeFiles/test-gtc_color_space.dir/build.make
test/gtc/test-gtc_color_space: test/gtc/CMakeFiles/test-gtc_color_space.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-gtc_color_space"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-gtc_color_space.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/gtc/CMakeFiles/test-gtc_color_space.dir/build: test/gtc/test-gtc_color_space

.PHONY : test/gtc/CMakeFiles/test-gtc_color_space.dir/build

test/gtc/CMakeFiles/test-gtc_color_space.dir/clean:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc && $(CMAKE_COMMAND) -P CMakeFiles/test-gtc_color_space.dir/cmake_clean.cmake
.PHONY : test/gtc/CMakeFiles/test-gtc_color_space.dir/clean

test/gtc/CMakeFiles/test-gtc_color_space.dir/depend:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tokongs/projects/yage2/3rd-party/glm /home/tokongs/projects/yage2/3rd-party/glm/test/gtc /home/tokongs/projects/yage2/3rd-party/glm/build /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc /home/tokongs/projects/yage2/3rd-party/glm/build/test/gtc/CMakeFiles/test-gtc_color_space.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/gtc/CMakeFiles/test-gtc_color_space.dir/depend

