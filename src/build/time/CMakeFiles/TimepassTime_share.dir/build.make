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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ck/git/TimePass-For-Eclipse/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ck/git/TimePass-For-Eclipse/src/build

# Include any dependencies generated for this target.
include time/CMakeFiles/TimepassTime_share.dir/depend.make

# Include the progress variables for this target.
include time/CMakeFiles/TimepassTime_share.dir/progress.make

# Include the compile flags for this target's objects.
include time/CMakeFiles/TimepassTime_share.dir/flags.make

time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o: time/CMakeFiles/TimepassTime_share.dir/flags.make
time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o: ../time/timer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/git/TimePass-For-Eclipse/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TimepassTime_share.dir/timer.cpp.o -c /home/ck/git/TimePass-For-Eclipse/src/time/timer.cpp

time/CMakeFiles/TimepassTime_share.dir/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimepassTime_share.dir/timer.cpp.i"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/git/TimePass-For-Eclipse/src/time/timer.cpp > CMakeFiles/TimepassTime_share.dir/timer.cpp.i

time/CMakeFiles/TimepassTime_share.dir/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimepassTime_share.dir/timer.cpp.s"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/git/TimePass-For-Eclipse/src/time/timer.cpp -o CMakeFiles/TimepassTime_share.dir/timer.cpp.s

time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.requires:
.PHONY : time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.requires

time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.provides: time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.requires
	$(MAKE) -f time/CMakeFiles/TimepassTime_share.dir/build.make time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.provides.build
.PHONY : time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.provides

time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.provides.build: time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o

time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o: time/CMakeFiles/TimepassTime_share.dir/flags.make
time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o: ../time/watch.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/git/TimePass-For-Eclipse/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TimepassTime_share.dir/watch.cpp.o -c /home/ck/git/TimePass-For-Eclipse/src/time/watch.cpp

time/CMakeFiles/TimepassTime_share.dir/watch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimepassTime_share.dir/watch.cpp.i"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/git/TimePass-For-Eclipse/src/time/watch.cpp > CMakeFiles/TimepassTime_share.dir/watch.cpp.i

time/CMakeFiles/TimepassTime_share.dir/watch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimepassTime_share.dir/watch.cpp.s"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/git/TimePass-For-Eclipse/src/time/watch.cpp -o CMakeFiles/TimepassTime_share.dir/watch.cpp.s

time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.requires:
.PHONY : time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.requires

time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.provides: time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.requires
	$(MAKE) -f time/CMakeFiles/TimepassTime_share.dir/build.make time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.provides.build
.PHONY : time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.provides

time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.provides.build: time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o

# Object files for target TimepassTime_share
TimepassTime_share_OBJECTS = \
"CMakeFiles/TimepassTime_share.dir/timer.cpp.o" \
"CMakeFiles/TimepassTime_share.dir/watch.cpp.o"

# External object files for target TimepassTime_share
TimepassTime_share_EXTERNAL_OBJECTS =

time/libTimepassTime.so: time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o
time/libTimepassTime.so: time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o
time/libTimepassTime.so: time/CMakeFiles/TimepassTime_share.dir/build.make
time/libTimepassTime.so: time/CMakeFiles/TimepassTime_share.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libTimepassTime.so"
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TimepassTime_share.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
time/CMakeFiles/TimepassTime_share.dir/build: time/libTimepassTime.so
.PHONY : time/CMakeFiles/TimepassTime_share.dir/build

time/CMakeFiles/TimepassTime_share.dir/requires: time/CMakeFiles/TimepassTime_share.dir/timer.cpp.o.requires
time/CMakeFiles/TimepassTime_share.dir/requires: time/CMakeFiles/TimepassTime_share.dir/watch.cpp.o.requires
.PHONY : time/CMakeFiles/TimepassTime_share.dir/requires

time/CMakeFiles/TimepassTime_share.dir/clean:
	cd /home/ck/git/TimePass-For-Eclipse/src/build/time && $(CMAKE_COMMAND) -P CMakeFiles/TimepassTime_share.dir/cmake_clean.cmake
.PHONY : time/CMakeFiles/TimepassTime_share.dir/clean

time/CMakeFiles/TimepassTime_share.dir/depend:
	cd /home/ck/git/TimePass-For-Eclipse/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ck/git/TimePass-For-Eclipse/src /home/ck/git/TimePass-For-Eclipse/src/time /home/ck/git/TimePass-For-Eclipse/src/build /home/ck/git/TimePass-For-Eclipse/src/build/time /home/ck/git/TimePass-For-Eclipse/src/build/time/CMakeFiles/TimepassTime_share.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : time/CMakeFiles/TimepassTime_share.dir/depend

