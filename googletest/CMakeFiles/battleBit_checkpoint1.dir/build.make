# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/carson/Applications/clion-2020.1.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/carson/Applications/clion-2020.1.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/carson/Projects/msu/csci-366-spring2021/battlebit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/carson/Projects/msu/csci-366-spring2021/battlebit

# Include any dependencies generated for this target.
include googletest/CMakeFiles/battleBit_checkpoint1.dir/depend.make

# Include the progress variables for this target.
include googletest/CMakeFiles/battleBit_checkpoint1.dir/progress.make

# Include the compile flags for this target's objects.
include googletest/CMakeFiles/battleBit_checkpoint1.dir/flags.make

googletest/CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.o: googletest/CMakeFiles/battleBit_checkpoint1.dir/flags.make
googletest/CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.o: googletest/char_buff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/carson/Projects/msu/csci-366-spring2021/battlebit/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googletest/CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.o"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.o -c /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/char_buff.cpp

googletest/CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.i"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/char_buff.cpp > CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.i

googletest/CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.s"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/char_buff.cpp -o CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.s

googletest/CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.o: googletest/CMakeFiles/battleBit_checkpoint1.dir/flags.make
googletest/CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.o: googletest/game1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/carson/Projects/msu/csci-366-spring2021/battlebit/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object googletest/CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.o"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.o -c /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/game1.cpp

googletest/CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.i"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/game1.cpp > CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.i

googletest/CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.s"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/game1.cpp -o CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.s

# Object files for target battleBit_checkpoint1
battleBit_checkpoint1_OBJECTS = \
"CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.o" \
"CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.o"

# External object files for target battleBit_checkpoint1
battleBit_checkpoint1_EXTERNAL_OBJECTS =

googletest/battleBit_checkpoint1: googletest/CMakeFiles/battleBit_checkpoint1.dir/char_buff.cpp.o
googletest/battleBit_checkpoint1: googletest/CMakeFiles/battleBit_checkpoint1.dir/game1.cpp.o
googletest/battleBit_checkpoint1: googletest/CMakeFiles/battleBit_checkpoint1.dir/build.make
googletest/battleBit_checkpoint1: lib/libgtestd.a
googletest/battleBit_checkpoint1: lib/libgtest_maind.a
googletest/battleBit_checkpoint1: libbattleBit_lib.a
googletest/battleBit_checkpoint1: lib/libgtestd.a
googletest/battleBit_checkpoint1: googletest/CMakeFiles/battleBit_checkpoint1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/carson/Projects/msu/csci-366-spring2021/battlebit/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable battleBit_checkpoint1"
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/battleBit_checkpoint1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googletest/CMakeFiles/battleBit_checkpoint1.dir/build: googletest/battleBit_checkpoint1

.PHONY : googletest/CMakeFiles/battleBit_checkpoint1.dir/build

googletest/CMakeFiles/battleBit_checkpoint1.dir/clean:
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest && $(CMAKE_COMMAND) -P CMakeFiles/battleBit_checkpoint1.dir/cmake_clean.cmake
.PHONY : googletest/CMakeFiles/battleBit_checkpoint1.dir/clean

googletest/CMakeFiles/battleBit_checkpoint1.dir/depend:
	cd /home/carson/Projects/msu/csci-366-spring2021/battlebit && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/carson/Projects/msu/csci-366-spring2021/battlebit /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest /home/carson/Projects/msu/csci-366-spring2021/battlebit /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest /home/carson/Projects/msu/csci-366-spring2021/battlebit/googletest/CMakeFiles/battleBit_checkpoint1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googletest/CMakeFiles/battleBit_checkpoint1.dir/depend
