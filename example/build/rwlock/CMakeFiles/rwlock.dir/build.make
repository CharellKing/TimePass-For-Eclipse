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
include rwlock/CMakeFiles/rwlock.dir/depend.make

# Include the progress variables for this target.
include rwlock/CMakeFiles/rwlock.dir/progress.make

# Include the compile flags for this target's objects.
include rwlock/CMakeFiles/rwlock.dir/flags.make

rwlock/CMakeFiles/rwlock.dir/main.cpp.o: rwlock/CMakeFiles/rwlock.dir/flags.make
rwlock/CMakeFiles/rwlock.dir/main.cpp.o: ../rwlock/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/TimePass/example/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object rwlock/CMakeFiles/rwlock.dir/main.cpp.o"
	cd /home/ck/TimePass/example/build/rwlock && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rwlock.dir/main.cpp.o -c /home/ck/TimePass/example/rwlock/main.cpp

rwlock/CMakeFiles/rwlock.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rwlock.dir/main.cpp.i"
	cd /home/ck/TimePass/example/build/rwlock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/TimePass/example/rwlock/main.cpp > CMakeFiles/rwlock.dir/main.cpp.i

rwlock/CMakeFiles/rwlock.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rwlock.dir/main.cpp.s"
	cd /home/ck/TimePass/example/build/rwlock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/TimePass/example/rwlock/main.cpp -o CMakeFiles/rwlock.dir/main.cpp.s

rwlock/CMakeFiles/rwlock.dir/main.cpp.o.requires:
.PHONY : rwlock/CMakeFiles/rwlock.dir/main.cpp.o.requires

rwlock/CMakeFiles/rwlock.dir/main.cpp.o.provides: rwlock/CMakeFiles/rwlock.dir/main.cpp.o.requires
	$(MAKE) -f rwlock/CMakeFiles/rwlock.dir/build.make rwlock/CMakeFiles/rwlock.dir/main.cpp.o.provides.build
.PHONY : rwlock/CMakeFiles/rwlock.dir/main.cpp.o.provides

rwlock/CMakeFiles/rwlock.dir/main.cpp.o.provides.build: rwlock/CMakeFiles/rwlock.dir/main.cpp.o

# Object files for target rwlock
rwlock_OBJECTS = \
"CMakeFiles/rwlock.dir/main.cpp.o"

# External object files for target rwlock
rwlock_EXTERNAL_OBJECTS =

rwlock/rwlock: rwlock/CMakeFiles/rwlock.dir/main.cpp.o
rwlock/rwlock: rwlock/CMakeFiles/rwlock.dir/build.make
rwlock/rwlock: rwlock/CMakeFiles/rwlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable rwlock"
	cd /home/ck/TimePass/example/build/rwlock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rwlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rwlock/CMakeFiles/rwlock.dir/build: rwlock/rwlock
.PHONY : rwlock/CMakeFiles/rwlock.dir/build

rwlock/CMakeFiles/rwlock.dir/requires: rwlock/CMakeFiles/rwlock.dir/main.cpp.o.requires
.PHONY : rwlock/CMakeFiles/rwlock.dir/requires

rwlock/CMakeFiles/rwlock.dir/clean:
	cd /home/ck/TimePass/example/build/rwlock && $(CMAKE_COMMAND) -P CMakeFiles/rwlock.dir/cmake_clean.cmake
.PHONY : rwlock/CMakeFiles/rwlock.dir/clean

rwlock/CMakeFiles/rwlock.dir/depend:
	cd /home/ck/TimePass/example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ck/TimePass/example /home/ck/TimePass/example/rwlock /home/ck/TimePass/example/build /home/ck/TimePass/example/build/rwlock /home/ck/TimePass/example/build/rwlock/CMakeFiles/rwlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rwlock/CMakeFiles/rwlock.dir/depend

