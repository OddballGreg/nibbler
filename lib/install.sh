#!/bin/bash

clear

LIB_VTK="./lib/VTK"
LIB_OGRE="./lib/Ogre3D"
LIB_SDL="./lib/SDL"
LIB_OPENGL="./lib/OpenGL"

SGOINFRE="/sgoinfre/Students/cdebruyn/nibbler-1/lib"
NIBBLER="/sgoinfre/Students/cdebruyn/nibbler-1"

if [ ! -d "$SGOINFRE" ]; then
	echo "You are trying to access this project outside of the WeThinkCode_ campus"
	echo "Change the install directory of SGOINFRE=$SGOINFRE inside ./lib/install.sh"
fi

if [ -d "$LIB_VTK" ] && [ -d "$LIB_OGRE" ]; then
	exit
fi

if [ -d "$SGOINFRE/VTK" ] && [ -d "$SGOINFRE/Ogre3D" ]; then
	exit
fi

echo "Checking to see if any graphic libraries are installed..."

echo "Warning: There might be some dependencies you need that are missing."

sleep 3

git -C "$(brew --repo homebrew/core)" fetch

LIB="./lib"

# Node Package Manager
NPM="~/.npm"

# Graphic Libraries
VTK="VTK"
OGRE="Ogre3D"
SDL="SDL"
OPENGL="OpenGL"

# Dependencies
FREE_IMAGE="~/.brew/Cellar/freeimage"
FREE_TYPE="~/.brew/Cellar/freetype"
LIBZZIP="~/.brew/Cellar/libzzip"
POCO="~/.brew/Cellar/poco"
TBB="~/.brew/Cellar/tbb"
GLSLANG="~/.brew/Cellar/glslang"
GLSL_OPTIMISER="./lib/glsl-optimiser"
CGAL="~/.brew/Cellar/cgal"

if [ ! -d "$LIB_VTK" ] && [ ! -d "$SGOINFRE/$VTK" ]; then
	echo "Preparing to install VTK..."
	echo "Installing vtk command-line.."
	brew tap homebrew/science
	brew install vtk
	echo "Begin downloading VTK from GitHub...."
	git clone https://github.com/Kitware/VTK.git "$SGOINFRE/$VTK"
	echo "Busy creating CMake components"
	cmake -D CMAKE_C_COMPILER="/usr/bin/clang" -D CMAKE_CXX_COMPILER="/usr/bin/clang++" "$SGOINFRE/$VTK/CMakeLists.txt"
	echo "Beginning to install VTK...."
	make -C "$SGOINFRE/$VTK" install
	make -C "$SGOINFRE/$VTK"
	make -C "$SGOINFRE/$VTK" test
fi

# For now we will not use Ogre3D as the system architecture is too old
mkdir "$LIB_OGRE"
if [ ! -d "$LIB_OGRE" ] && [ ! -d "$SGOINFRE/$OGRE" ]; then

	# Start by looking for the dependencies needed by Ogre3D
	echo "Finding dependencies for Ogre3D..."
	echo "This build is specific to OS X El Capitan"
	echo "You need to have Homebrew installed for this program to work."

	if [ ! "$FREE_IMAGE" ]; then
		echo "Busy installing freeimage..."
		brew install freeimage
	fi
	if [ ! "$FREE_TYPE" ]; then
		echo "Busy installing freetype..."
		brew install freetype
	fi
	if [ ! "$LIBZZIP" ]; then
		echo "Busy installing libzzip..."
		brew install libzzip
	fi
	if [ ! "$POCO" ]; then
		echo "Busy installing POCO..."
		brew install poco
	fi
	if [ ! "$TBB" ]; then
		echo "Busy installing TBB..."
		brew install poco
	fi
	if [ ! "$GLSLANG" ]; then
		echo "Busy installing glslang..."
		brew install glslang
	fi
	if [ ! "$GLSL_OPTIMISER" ]; then
		if [ ! -d "$NPM" ]; then
			echo "You need to install node package manager to continue"
			exit;
		else [] 
			git clone https://github.com/aras-p/glsl-optimizer.git glsl-optimiser
			cd glsl-optimiser && npm install -g
		fi
	fi
	if [ ! "$CGAL" ]; then
		echo "Busy installing cgal..."
		brew install cgal
	fi
	echo "preparing to install Ogre3D..."
	echo "Begin downloading Ogre3D from Bitbucket...."
	if [ ! -d "$SGOINFRE/$OGRE" ]; then
		hg clone https://bitbucket.org/sinbad/ogre "$SGOINFRE/$OGRE"
	fi
	echo "Busy creating CMake components"
	echo "Make sure you add 'typedef void *locale_t;' to the header file. That it complains about."
	echo "You need to change strtod_l to strtodll and strtol_l to strtoll"
	sleep 2
	cmake -D CMAKE_C_COMPILER="/usr/bin/clang" -D CMAKE_CXX_COMPILER="/usr/bin/clang++" "$SGOINFRE/$OGRE/CMakeLists.txt"
	echo "Beginning to install Ogre3D......"
	make -C "$SGOINFRE/$OGRE" install/local
	echo "Finish install Ogre3D...."
fi

clear

echo "Have you installed SDL from the Managed Software Centre at WeThinkCode_"

if [ ! -d "/Library/Frameworks/SDL.framework/Versions/Current" ]; then
	echo "You do not have /Library/Frameworks/SDL.framework/Versions/Current/SDL.h on your system"
	exit
else []
	echo "You have SDL installed successfully at /Library/Frameworks/SDL.framework/Versions/Current/SDL.h"
fi