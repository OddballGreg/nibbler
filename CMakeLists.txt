cmake_minimum_required (VERSION 2.6)
project (Nibbler)
# The version number.
set (Nibbler_VERSION_MAJOR 1)
set (Nibbler_VERSION_MINOR 0)

# configure a header file to pass some of the CMake settings
# to the source code
configure_file (
	"${PROJECT_SOURCE_DIR}/NibblerConfig.h.in"
	"${PROJECT_BINARY_DIR}/NibblerConfig.h"
)

# add the binary tree to the search path for include files
# so that we will find NibblerConfig.h
include_directories("${PROJECT_BINARY_DIR}")

# optional loading of the libraries
option (USE_OPENGL
		"Use the OpenGL library on implementation" ON)
option (USE_VTK
		"Use the VTK library on implementation" OFF)
option (USE_WEBGL
		"Use the WebGL library on implementation" OFF)

# add the libraries in the subdirectories
include_directories ("${PROJECT_SOURCE_DIR}/lib")
add_subdirectory (lib)

if (USE_OPENGL)
	include_directories ("${PROJECT_SOURCE_DIR}/lib/OpenGL")
	add_subdirectory (OpenGL)
	set (EXTRA_LIBS ${EXTRA_LIBS} OpenGL)
endif (USE_OPENGL)

# add the executable
add_executable(Nibbler nibbler.cxx)
target_link_libraries (Nibbler )
