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
include sys/CMakeFiles/sys_shared.dir/depend.make

# Include the progress variables for this target.
include sys/CMakeFiles/sys_shared.dir/progress.make

# Include the compile flags for this target's objects.
include sys/CMakeFiles/sys_shared.dir/flags.make

sys/CMakeFiles/sys_shared.dir/sys.cpp.o: sys/CMakeFiles/sys_shared.dir/flags.make
sys/CMakeFiles/sys_shared.dir/sys.cpp.o: ../sys/sys.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ck/TimePass/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object sys/CMakeFiles/sys_shared.dir/sys.cpp.o"
	cd /home/ck/TimePass/src/build/sys && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sys_shared.dir/sys.cpp.o -c /home/ck/TimePass/src/sys/sys.cpp

sys/CMakeFiles/sys_shared.dir/sys.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sys_shared.dir/sys.cpp.i"
	cd /home/ck/TimePass/src/build/sys && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ck/TimePass/src/sys/sys.cpp > CMakeFiles/sys_shared.dir/sys.cpp.i

sys/CMakeFiles/sys_shared.dir/sys.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sys_shared.dir/sys.cpp.s"
	cd /home/ck/TimePass/src/build/sys && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ck/TimePass/src/sys/sys.cpp -o CMakeFiles/sys_shared.dir/sys.cpp.s

sys/CMakeFiles/sys_shared.dir/sys.cpp.o.requires:
.PHONY : sys/CMakeFiles/sys_shared.dir/sys.cpp.o.requires

sys/CMakeFiles/sys_shared.dir/sys.cpp.o.provides: sys/CMakeFiles/sys_shared.dir/sys.cpp.o.requires
	$(MAKE) -f sys/CMakeFiles/sys_shared.dir/build.make sys/CMakeFiles/sys_shared.dir/sys.cpp.o.provides.build
.PHONY : sys/CMakeFiles/sys_shared.dir/sys.cpp.o.provides

sys/CMakeFiles/sys_shared.dir/sys.cpp.o.provides.build: sys/CMakeFiles/sys_shared.dir/sys.cpp.o

# Object files for target sys_shared
sys_shared_OBJECTS = \
"CMakeFiles/sys_shared.dir/sys.cpp.o"

# External object files for target sys_shared
sys_shared_EXTERNAL_OBJECTS =

sys/libTimepassSys.so: sys/CMakeFiles/sys_shared.dir/sys.cpp.o
sys/libTimepassSys.so: sys/CMakeFiles/sys_shared.dir/build.make
sys/libTimepassSys.so: sys/CMakeFiles/sys_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libTimepassSys.so"
	cd /home/ck/TimePass/src/build/sys && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sys_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sys/CMakeFiles/sys_shared.dir/build: sys/libTimepassSys.so
.PHONY : sys/CMakeFiles/sys_shared.dir/build

sys/CMakeFiles/sys_shared.dir/requires: sys/CMakeFiles/sys_shared.dir/sys.cpp.o.requires
.PHONY : sys/CMakeFiles/sys_shared.dir/requires

sys/CMakeFiles/sys_shared.dir/clean:
	cd /home/ck/TimePass/src/build/sys && $(CMAKE_COMMAND) -P CMakeFiles/sys_shared.dir/cmake_clean.cmake
.PHONY : sys/CMakeFiles/sys_shared.dir/clean

sys/CMakeFiles/sys_shared.dir/depend:
	cd /home/ck/TimePass/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ck/TimePass/src /home/ck/TimePass/src/sys /home/ck/TimePass/src/build /home/ck/TimePass/src/build/sys /home/ck/TimePass/src/build/sys/CMakeFiles/sys_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sys/CMakeFiles/sys_shared.dir/depend

