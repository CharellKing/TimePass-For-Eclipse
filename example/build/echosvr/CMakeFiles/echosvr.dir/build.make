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
CMAKE_SOURCE_DIR = /home/ck/TimePass/example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ck/TimePass/example/build

# Include any dependencies generated for this target.
include echosvr/CMakeFiles/echosvr.dir/depend.make

# Include the progress variables for this target.
include echosvr/CMakeFiles/echosvr.dir/progress.make

# Include the compile flags for this target's objects.
include echosvr/CMakeFiles/echosvr.dir/flags.make

echosvr/CMakeFiles/echosvr.dir/main.cpp.o: echosvr/CMakeFiles/echosvr.dir/flags.make
echosvr/CMakeFiles/echosvr.dir/main.cpp.o: ../echosvr/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/TimePass/example/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object echosvr/CMakeFiles/echosvr.dir/main.cpp.o"
	cd /home/ck/TimePass/example/build/echosvr && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/echosvr.dir/main.cpp.o -c /home/ck/TimePass/example/echosvr/main.cpp

echosvr/CMakeFiles/echosvr.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echosvr.dir/main.cpp.i"
	cd /home/ck/TimePass/example/build/echosvr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/TimePass/example/echosvr/main.cpp > CMakeFiles/echosvr.dir/main.cpp.i

echosvr/CMakeFiles/echosvr.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echosvr.dir/main.cpp.s"
	cd /home/ck/TimePass/example/build/echosvr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/TimePass/example/echosvr/main.cpp -o CMakeFiles/echosvr.dir/main.cpp.s

echosvr/CMakeFiles/echosvr.dir/main.cpp.o.requires:
.PHONY : echosvr/CMakeFiles/echosvr.dir/main.cpp.o.requires

echosvr/CMakeFiles/echosvr.dir/main.cpp.o.provides: echosvr/CMakeFiles/echosvr.dir/main.cpp.o.requires
	$(MAKE) -f echosvr/CMakeFiles/echosvr.dir/build.make echosvr/CMakeFiles/echosvr.dir/main.cpp.o.provides.build
.PHONY : echosvr/CMakeFiles/echosvr.dir/main.cpp.o.provides

echosvr/CMakeFiles/echosvr.dir/main.cpp.o.provides.build: echosvr/CMakeFiles/echosvr.dir/main.cpp.o

# Object files for target echosvr
echosvr_OBJECTS = \
"CMakeFiles/echosvr.dir/main.cpp.o"

# External object files for target echosvr
echosvr_EXTERNAL_OBJECTS =

echosvr/echosvr: echosvr/CMakeFiles/echosvr.dir/main.cpp.o
echosvr/echosvr: echosvr/CMakeFiles/echosvr.dir/build.make
echosvr/echosvr: echosvr/CMakeFiles/echosvr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable echosvr"
	cd /home/ck/TimePass/example/build/echosvr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echosvr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
echosvr/CMakeFiles/echosvr.dir/build: echosvr/echosvr
.PHONY : echosvr/CMakeFiles/echosvr.dir/build

echosvr/CMakeFiles/echosvr.dir/requires: echosvr/CMakeFiles/echosvr.dir/main.cpp.o.requires
.PHONY : echosvr/CMakeFiles/echosvr.dir/requires

echosvr/CMakeFiles/echosvr.dir/clean:
	cd /home/ck/TimePass/example/build/echosvr && $(CMAKE_COMMAND) -P CMakeFiles/echosvr.dir/cmake_clean.cmake
.PHONY : echosvr/CMakeFiles/echosvr.dir/clean

echosvr/CMakeFiles/echosvr.dir/depend:
	cd /home/ck/TimePass/example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ck/TimePass/example /home/ck/TimePass/example/echosvr /home/ck/TimePass/example/build /home/ck/TimePass/example/build/echosvr /home/ck/TimePass/example/build/echosvr/CMakeFiles/echosvr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : echosvr/CMakeFiles/echosvr.dir/depend

