# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Cmake\test_4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Cmake\test_4\build

# Include any dependencies generated for this target.
include CMakeFiles/OLAS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OLAS.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OLAS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OLAS.dir/flags.make

CMakeFiles/OLAS.dir/main.cpp.obj: CMakeFiles/OLAS.dir/flags.make
CMakeFiles/OLAS.dir/main.cpp.obj: ../main.cpp
CMakeFiles/OLAS.dir/main.cpp.obj: CMakeFiles/OLAS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Cmake\test_4\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OLAS.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OLAS.dir/main.cpp.obj -MF CMakeFiles\OLAS.dir\main.cpp.obj.d -o CMakeFiles\OLAS.dir\main.cpp.obj -c D:\Cmake\test_4\main.cpp

CMakeFiles/OLAS.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OLAS.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Cmake\test_4\main.cpp > CMakeFiles\OLAS.dir\main.cpp.i

CMakeFiles/OLAS.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OLAS.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Cmake\test_4\main.cpp -o CMakeFiles\OLAS.dir\main.cpp.s

# Object files for target OLAS
OLAS_OBJECTS = \
"CMakeFiles/OLAS.dir/main.cpp.obj"

# External object files for target OLAS
OLAS_EXTERNAL_OBJECTS =

OLAS.exe: CMakeFiles/OLAS.dir/main.cpp.obj
OLAS.exe: CMakeFiles/OLAS.dir/build.make
OLAS.exe: adder/libadder.a
OLAS.exe: CMakeFiles/OLAS.dir/linklibs.rsp
OLAS.exe: CMakeFiles/OLAS.dir/objects1.rsp
OLAS.exe: CMakeFiles/OLAS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Cmake\test_4\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OLAS.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\OLAS.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OLAS.dir/build: OLAS.exe
.PHONY : CMakeFiles/OLAS.dir/build

CMakeFiles/OLAS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\OLAS.dir\cmake_clean.cmake
.PHONY : CMakeFiles/OLAS.dir/clean

CMakeFiles/OLAS.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Cmake\test_4 D:\Cmake\test_4 D:\Cmake\test_4\build D:\Cmake\test_4\build D:\Cmake\test_4\build\CMakeFiles\OLAS.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OLAS.dir/depend

