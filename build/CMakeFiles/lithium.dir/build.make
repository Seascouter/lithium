# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/willgriffin/Desktop/Code/lithium

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/willgriffin/Desktop/Code/lithium/build

# Include any dependencies generated for this target.
include CMakeFiles/lithium.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lithium.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lithium.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lithium.dir/flags.make

CMakeFiles/lithium.dir/src/main.cpp.o: CMakeFiles/lithium.dir/flags.make
CMakeFiles/lithium.dir/src/main.cpp.o: /Users/willgriffin/Desktop/Code/lithium/src/main.cpp
CMakeFiles/lithium.dir/src/main.cpp.o: CMakeFiles/lithium.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/willgriffin/Desktop/Code/lithium/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lithium.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lithium.dir/src/main.cpp.o -MF CMakeFiles/lithium.dir/src/main.cpp.o.d -o CMakeFiles/lithium.dir/src/main.cpp.o -c /Users/willgriffin/Desktop/Code/lithium/src/main.cpp

CMakeFiles/lithium.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lithium.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/willgriffin/Desktop/Code/lithium/src/main.cpp > CMakeFiles/lithium.dir/src/main.cpp.i

CMakeFiles/lithium.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lithium.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/willgriffin/Desktop/Code/lithium/src/main.cpp -o CMakeFiles/lithium.dir/src/main.cpp.s

# Object files for target lithium
lithium_OBJECTS = \
"CMakeFiles/lithium.dir/src/main.cpp.o"

# External object files for target lithium
lithium_EXTERNAL_OBJECTS =

lithium: CMakeFiles/lithium.dir/src/main.cpp.o
lithium: CMakeFiles/lithium.dir/build.make
lithium: CMakeFiles/lithium.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/willgriffin/Desktop/Code/lithium/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lithium"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lithium.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lithium.dir/build: lithium
.PHONY : CMakeFiles/lithium.dir/build

CMakeFiles/lithium.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lithium.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lithium.dir/clean

CMakeFiles/lithium.dir/depend:
	cd /Users/willgriffin/Desktop/Code/lithium/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/willgriffin/Desktop/Code/lithium /Users/willgriffin/Desktop/Code/lithium /Users/willgriffin/Desktop/Code/lithium/build /Users/willgriffin/Desktop/Code/lithium/build /Users/willgriffin/Desktop/Code/lithium/build/CMakeFiles/lithium.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lithium.dir/depend
