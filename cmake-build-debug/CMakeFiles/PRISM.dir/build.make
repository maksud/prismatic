# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ajpryor/Documents/MATLAB/multislice/PRISM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PRISM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PRISM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PRISM.dir/flags.make

CMakeFiles/PRISM.dir/main.cpp.o: CMakeFiles/PRISM.dir/flags.make
CMakeFiles/PRISM.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PRISM.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PRISM.dir/main.cpp.o -c /Users/ajpryor/Documents/MATLAB/multislice/PRISM/main.cpp

CMakeFiles/PRISM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PRISM.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ajpryor/Documents/MATLAB/multislice/PRISM/main.cpp > CMakeFiles/PRISM.dir/main.cpp.i

CMakeFiles/PRISM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PRISM.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ajpryor/Documents/MATLAB/multislice/PRISM/main.cpp -o CMakeFiles/PRISM.dir/main.cpp.s

CMakeFiles/PRISM.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/PRISM.dir/main.cpp.o.requires

CMakeFiles/PRISM.dir/main.cpp.o.provides: CMakeFiles/PRISM.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/PRISM.dir/build.make CMakeFiles/PRISM.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/PRISM.dir/main.cpp.o.provides

CMakeFiles/PRISM.dir/main.cpp.o.provides.build: CMakeFiles/PRISM.dir/main.cpp.o


# Object files for target PRISM
PRISM_OBJECTS = \
"CMakeFiles/PRISM.dir/main.cpp.o"

# External object files for target PRISM
PRISM_EXTERNAL_OBJECTS =

PRISM: CMakeFiles/PRISM.dir/main.cpp.o
PRISM: CMakeFiles/PRISM.dir/build.make
PRISM: /usr/local/lib/libfftw3.a
PRISM: CMakeFiles/PRISM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PRISM"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PRISM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PRISM.dir/build: PRISM

.PHONY : CMakeFiles/PRISM.dir/build

CMakeFiles/PRISM.dir/requires: CMakeFiles/PRISM.dir/main.cpp.o.requires

.PHONY : CMakeFiles/PRISM.dir/requires

CMakeFiles/PRISM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PRISM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PRISM.dir/clean

CMakeFiles/PRISM.dir/depend:
	cd /Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ajpryor/Documents/MATLAB/multislice/PRISM /Users/ajpryor/Documents/MATLAB/multislice/PRISM /Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug /Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug /Users/ajpryor/Documents/MATLAB/multislice/PRISM/cmake-build-debug/CMakeFiles/PRISM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PRISM.dir/depend

