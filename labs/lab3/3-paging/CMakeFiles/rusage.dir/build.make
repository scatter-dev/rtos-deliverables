# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging

# Include any dependencies generated for this target.
include CMakeFiles/rusage.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rusage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rusage.dir/flags.make

CMakeFiles/rusage.dir/rusage.c.o: CMakeFiles/rusage.dir/flags.make
CMakeFiles/rusage.dir/rusage.c.o: rusage.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rusage.dir/rusage.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rusage.dir/rusage.c.o   -c /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging/rusage.c

CMakeFiles/rusage.dir/rusage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rusage.dir/rusage.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging/rusage.c > CMakeFiles/rusage.dir/rusage.c.i

CMakeFiles/rusage.dir/rusage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rusage.dir/rusage.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging/rusage.c -o CMakeFiles/rusage.dir/rusage.c.s

CMakeFiles/rusage.dir/rusage.c.o.requires:

.PHONY : CMakeFiles/rusage.dir/rusage.c.o.requires

CMakeFiles/rusage.dir/rusage.c.o.provides: CMakeFiles/rusage.dir/rusage.c.o.requires
	$(MAKE) -f CMakeFiles/rusage.dir/build.make CMakeFiles/rusage.dir/rusage.c.o.provides.build
.PHONY : CMakeFiles/rusage.dir/rusage.c.o.provides

CMakeFiles/rusage.dir/rusage.c.o.provides.build: CMakeFiles/rusage.dir/rusage.c.o


# Object files for target rusage
rusage_OBJECTS = \
"CMakeFiles/rusage.dir/rusage.c.o"

# External object files for target rusage
rusage_EXTERNAL_OBJECTS =

librusage.so: CMakeFiles/rusage.dir/rusage.c.o
librusage.so: CMakeFiles/rusage.dir/build.make
librusage.so: CMakeFiles/rusage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library librusage.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rusage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rusage.dir/build: librusage.so

.PHONY : CMakeFiles/rusage.dir/build

CMakeFiles/rusage.dir/requires: CMakeFiles/rusage.dir/rusage.c.o.requires

.PHONY : CMakeFiles/rusage.dir/requires

CMakeFiles/rusage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rusage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rusage.dir/clean

CMakeFiles/rusage.dir/depend:
	cd /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging /users/labnet/st7/jtb240/8894-Labs/1/lab3/3-paging/CMakeFiles/rusage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rusage.dir/depend

