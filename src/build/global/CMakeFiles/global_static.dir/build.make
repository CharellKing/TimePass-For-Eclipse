# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ck/TimePass/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ck/TimePass/src/build

# Include any dependencies generated for this target.
include global/CMakeFiles/global_static.dir/depend.make

# Include the progress variables for this target.
include global/CMakeFiles/global_static.dir/progress.make

# Include the compile flags for this target's objects.
include global/CMakeFiles/global_static.dir/flags.make

global/CMakeFiles/global_static.dir/util.cpp.o: global/CMakeFiles/global_static.dir/flags.make
global/CMakeFiles/global_static.dir/util.cpp.o: ../global/util.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/TimePass/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object global/CMakeFiles/global_static.dir/util.cpp.o"
	cd /home/ck/TimePass/src/build/global && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/global_static.dir/util.cpp.o -c /home/ck/TimePass/src/global/util.cpp

global/CMakeFiles/global_static.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/global_static.dir/util.cpp.i"
	cd /home/ck/TimePass/src/build/global && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/TimePass/src/global/util.cpp > CMakeFiles/global_static.dir/util.cpp.i

global/CMakeFiles/global_static.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/global_static.dir/util.cpp.s"
	cd /home/ck/TimePass/src/build/global && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/TimePass/src/global/util.cpp -o CMakeFiles/global_static.dir/util.cpp.s

global/CMakeFiles/global_static.dir/util.cpp.o.requires:
.PHONY : global/CMakeFiles/global_static.dir/util.cpp.o.requires

global/CMakeFiles/global_static.dir/util.cpp.o.provides: global/CMakeFiles/global_static.dir/util.cpp.o.requires
	$(MAKE) -f global/CMakeFiles/global_static.dir/build.make global/CMakeFiles/global_static.dir/util.cpp.o.provides.build
.PHONY : global/CMakeFiles/global_static.dir/util.cpp.o.provides

global/CMakeFiles/global_static.dir/util.cpp.o.provides.build: global/CMakeFiles/global_static.dir/util.cpp.o

global/CMakeFiles/global_static.dir/error.cpp.o: global/CMakeFiles/global_static.dir/flags.make
global/CMakeFiles/global_static.dir/error.cpp.o: ../global/error.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/TimePass/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object global/CMakeFiles/global_static.dir/error.cpp.o"
	cd /home/ck/TimePass/src/build/global && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/global_static.dir/error.cpp.o -c /home/ck/TimePass/src/global/error.cpp

global/CMakeFiles/global_static.dir/error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/global_static.dir/error.cpp.i"
	cd /home/ck/TimePass/src/build/global && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/TimePass/src/global/error.cpp > CMakeFiles/global_static.dir/error.cpp.i

global/CMakeFiles/global_static.dir/error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/global_static.dir/error.cpp.s"
	cd /home/ck/TimePass/src/build/global && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/TimePass/src/global/error.cpp -o CMakeFiles/global_static.dir/error.cpp.s

global/CMakeFiles/global_static.dir/error.cpp.o.requires:
.PHONY : global/CMakeFiles/global_static.dir/error.cpp.o.requires

global/CMakeFiles/global_static.dir/error.cpp.o.provides: global/CMakeFiles/global_static.dir/error.cpp.o.requires
	$(MAKE) -f global/CMakeFiles/global_static.dir/build.make global/CMakeFiles/global_static.dir/error.cpp.o.provides.build
.PHONY : global/CMakeFiles/global_static.dir/error.cpp.o.provides

global/CMakeFiles/global_static.dir/error.cpp.o.provides.build: global/CMakeFiles/global_static.dir/error.cpp.o

# Object files for target global_static
global_static_OBJECTS = \
"CMakeFiles/global_static.dir/util.cpp.o" \
"CMakeFiles/global_static.dir/error.cpp.o"

# External object files for target global_static
global_static_EXTERNAL_OBJECTS =

global/libTimepassGlobal.a: global/CMakeFiles/global_static.dir/util.cpp.o
global/libTimepassGlobal.a: global/CMakeFiles/global_static.dir/error.cpp.o
global/libTimepassGlobal.a: global/CMakeFiles/global_static.dir/build.make
global/libTimepassGlobal.a: global/CMakeFiles/global_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libTimepassGlobal.a"
	cd /home/ck/TimePass/src/build/global && $(CMAKE_COMMAND) -P CMakeFiles/global_static.dir/cmake_clean_target.cmake
	cd /home/ck/TimePass/src/build/global && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/global_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
global/CMakeFiles/global_static.dir/build: global/libTimepassGlobal.a
.PHONY : global/CMakeFiles/global_static.dir/build

global/CMakeFiles/global_static.dir/requires: global/CMakeFiles/global_static.dir/util.cpp.o.requires
global/CMakeFiles/global_static.dir/requires: global/CMakeFiles/global_static.dir/error.cpp.o.requires
.PHONY : global/CMakeFiles/global_static.dir/requires

global/CMakeFiles/global_static.dir/clean:
	cd /home/ck/TimePass/src/build/global && $(CMAKE_COMMAND) -P CMakeFiles/global_static.dir/cmake_clean.cmake
.PHONY : global/CMakeFiles/global_static.dir/clean

global/CMakeFiles/global_static.dir/depend:
	cd /home/ck/TimePass/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ck/TimePass/src /home/ck/TimePass/src/global /home/ck/TimePass/src/build /home/ck/TimePass/src/build/global /home/ck/TimePass/src/build/global/CMakeFiles/global_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : global/CMakeFiles/global_static.dir/depend

