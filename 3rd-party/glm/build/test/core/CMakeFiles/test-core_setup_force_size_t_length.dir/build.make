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
include test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/depend.make

# Include the progress variables for this target.
include test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/progress.make

# Include the compile flags for this target's objects.
include test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/flags.make

test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.o: test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/flags.make
test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.o: ../test/core/core_setup_force_size_t_length.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.o"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.o -c /home/tokongs/projects/yage2/3rd-party/glm/test/core/core_setup_force_size_t_length.cpp

test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.i"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tokongs/projects/yage2/3rd-party/glm/test/core/core_setup_force_size_t_length.cpp > CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.i

test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.s"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/core && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tokongs/projects/yage2/3rd-party/glm/test/core/core_setup_force_size_t_length.cpp -o CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.s

# Object files for target test-core_setup_force_size_t_length
test__core_setup_force_size_t_length_OBJECTS = \
"CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.o"

# External object files for target test-core_setup_force_size_t_length
test__core_setup_force_size_t_length_EXTERNAL_OBJECTS =

test/core/test-core_setup_force_size_t_length: test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/core_setup_force_size_t_length.cpp.o
test/core/test-core_setup_force_size_t_length: test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/build.make
test/core/test-core_setup_force_size_t_length: test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tokongs/projects/yage2/3rd-party/glm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-core_setup_force_size_t_length"
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-core_setup_force_size_t_length.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/build: test/core/test-core_setup_force_size_t_length

.PHONY : test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/build

test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/clean:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build/test/core && $(CMAKE_COMMAND) -P CMakeFiles/test-core_setup_force_size_t_length.dir/cmake_clean.cmake
.PHONY : test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/clean

test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/depend:
	cd /home/tokongs/projects/yage2/3rd-party/glm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tokongs/projects/yage2/3rd-party/glm /home/tokongs/projects/yage2/3rd-party/glm/test/core /home/tokongs/projects/yage2/3rd-party/glm/build /home/tokongs/projects/yage2/3rd-party/glm/build/test/core /home/tokongs/projects/yage2/3rd-party/glm/build/test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/core/CMakeFiles/test-core_setup_force_size_t_length.dir/depend

