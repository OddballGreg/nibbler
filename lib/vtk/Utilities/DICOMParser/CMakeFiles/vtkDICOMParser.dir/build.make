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
CMAKE_SOURCE_DIR = /home/cameron/Downloads/VTK-7.0.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cameron/Projects/nibbler-1/lib/vtk

# Include any dependencies generated for this target.
include Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/depend.make

# Include the progress variables for this target.
include Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/progress.make

# Include the compile flags for this target's objects.
include Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/flags.make

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/flags.make
Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o: /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMFile.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o -c /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMFile.cxx

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.i"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMFile.cxx > CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.i

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.s"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMFile.cxx -o CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.s

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.requires:

.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.requires

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.provides: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.requires
	$(MAKE) -f Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/build.make Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.provides.build
.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.provides

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.provides.build: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o


Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/flags.make
Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o: /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMParser.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o -c /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMParser.cxx

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.i"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMParser.cxx > CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.i

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.s"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMParser.cxx -o CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.s

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.requires:

.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.requires

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.provides: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.requires
	$(MAKE) -f Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/build.make Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.provides.build
.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.provides

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.provides.build: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o


Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/flags.make
Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o: /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMAppHelper.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o -c /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMAppHelper.cxx

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.i"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMAppHelper.cxx > CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.i

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.s"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser/DICOMAppHelper.cxx -o CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.s

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.requires:

.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.requires

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.provides: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.requires
	$(MAKE) -f Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/build.make Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.provides.build
.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.provides

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.provides.build: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o


# Object files for target vtkDICOMParser
vtkDICOMParser_OBJECTS = \
"CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o" \
"CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o" \
"CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o"

# External object files for target vtkDICOMParser
vtkDICOMParser_EXTERNAL_OBJECTS =

lib/libvtkDICOMParser-7.0.so.1: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o
lib/libvtkDICOMParser-7.0.so.1: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o
lib/libvtkDICOMParser-7.0.so.1: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o
lib/libvtkDICOMParser-7.0.so.1: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/build.make
lib/libvtkDICOMParser-7.0.so.1: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../lib/libvtkDICOMParser-7.0.so"
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtkDICOMParser.dir/link.txt --verbose=$(VERBOSE)
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libvtkDICOMParser-7.0.so.1 ../../lib/libvtkDICOMParser-7.0.so.1 ../../lib/libvtkDICOMParser-7.0.so

lib/libvtkDICOMParser-7.0.so: lib/libvtkDICOMParser-7.0.so.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvtkDICOMParser-7.0.so

# Rule to build all files generated by this target.
Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/build: lib/libvtkDICOMParser-7.0.so

.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/build

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/requires: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMFile.cxx.o.requires
Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/requires: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMParser.cxx.o.requires
Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/requires: Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DICOMAppHelper.cxx.o.requires

.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/requires

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/clean:
	cd /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser && $(CMAKE_COMMAND) -P CMakeFiles/vtkDICOMParser.dir/cmake_clean.cmake
.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/clean

Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/depend:
	cd /home/cameron/Projects/nibbler-1/lib/vtk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cameron/Downloads/VTK-7.0.0 /home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser /home/cameron/Projects/nibbler-1/lib/vtk /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser /home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Utilities/DICOMParser/CMakeFiles/vtkDICOMParser.dir/depend

