cmake_minimum_required (VERSION 2.6)
project (Nibbler)
# The version number.
set (Nibbler_VERSION_MAJOR 1)
set (Nibbler_VERSION_MINOR 0)

# Set the module path for Find.cmake to be found
set (CMAKE_MODULE_PATH "/usr/lib:${CMAKE_MODULE_PATH}")

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
		"Use the OpenGL library on implementation" OFF)
option (USE_VTK
		"Use the VTK library on implementation" ON)
option (USE_WEBGL
		"Use the WebGL library on implementation" OFF)

# add the libraries in the subdirectories
set (CMAKE_LIBRARY_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set (OPENGL_DIR ${CMAKE_MODULE_PATH})
set (VTK_DIR ${CMAKE_MODULE_PATH})
set (WEBGL_DIR ${CMAKE_MODULE_PATH})

include_directories(${CMAKE_MODULE_PATH})

add_library (A MODULE libvtkalglib.so.5.10)
target_link_libraries(A)

if (USE_OPENGL)
	include_directories ("${OPENGL_DIR}")
	# add_subdirectory (OpenGL)
	# set (EXTRA_LIBS ${EXTRA_LIBS} OpenGL)
endif (USE_OPENGL)

if (USE_VTK)
	include_directories ("${VTK_DIR}")
	# add_subdirectory (VTK)
	# set (EXTRA_LIBS ${EXTRA_LIBS} VTK)
endif (USE_VTK)

if (USE_WEBGL)
	include_directories ("${WEBGL_DIR}")
	# add_subdirectory (WebGL)
	# set (EXTRA_LIBS ${EXTRA_LIBS} WebGL)
endif (USE_WEBGL)

# install the libraries if necessary

# OpenGL install
#install (TARGETS OpenGL DESTINATION bin)
#install (FILES OpenGL DESTINATION include)

# VTK install
#install (TARGETS VTK DESTINATION bin)
#install (FILES VTK DESTINATION include)

# add the install target
#install (TARGETS Nibbler DESTINATION bin)
#install (FILES "${PROJECT_BINARY_DIR}/NibblerConfig.h" DESTINATION include)

# add the executable
add_executable(Nibbler .cxx)
target_link_libraries (Nibbler ${VTK_LIBRARIES})
