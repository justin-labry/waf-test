# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/labry/git/waf-test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/labry/git/waf-test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mutex_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mutex_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mutex_example.dir/flags.make

CMakeFiles/mutex_example.dir/mutex_example.cpp.o: CMakeFiles/mutex_example.dir/flags.make
CMakeFiles/mutex_example.dir/mutex_example.cpp.o: ../mutex_example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/labry/git/waf-test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mutex_example.dir/mutex_example.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mutex_example.dir/mutex_example.cpp.o -c /Users/labry/git/waf-test/mutex_example.cpp

CMakeFiles/mutex_example.dir/mutex_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mutex_example.dir/mutex_example.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/labry/git/waf-test/mutex_example.cpp > CMakeFiles/mutex_example.dir/mutex_example.cpp.i

CMakeFiles/mutex_example.dir/mutex_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mutex_example.dir/mutex_example.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/labry/git/waf-test/mutex_example.cpp -o CMakeFiles/mutex_example.dir/mutex_example.cpp.s

# Object files for target mutex_example
mutex_example_OBJECTS = \
"CMakeFiles/mutex_example.dir/mutex_example.cpp.o"

# External object files for target mutex_example
mutex_example_EXTERNAL_OBJECTS =

mutex_example: CMakeFiles/mutex_example.dir/mutex_example.cpp.o
mutex_example: CMakeFiles/mutex_example.dir/build.make
mutex_example: CMakeFiles/mutex_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/labry/git/waf-test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mutex_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mutex_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mutex_example.dir/build: mutex_example

.PHONY : CMakeFiles/mutex_example.dir/build

CMakeFiles/mutex_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mutex_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mutex_example.dir/clean

CMakeFiles/mutex_example.dir/depend:
	cd /Users/labry/git/waf-test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/labry/git/waf-test /Users/labry/git/waf-test /Users/labry/git/waf-test/cmake-build-debug /Users/labry/git/waf-test/cmake-build-debug /Users/labry/git/waf-test/cmake-build-debug/CMakeFiles/mutex_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mutex_example.dir/depend

