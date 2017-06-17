#!/bin/bash

clear

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
LIB_VTK="./lib/VTK"
LIB_OGRE="./lib/Ogre3D"

# Dependencies
FREE_IMAGE="~/.brew/Cellar/freeimage"
FREE_TYPE="~/.brew/Cellar/freetype"
LIBZZIP="~/.brew/Cellar/libzzip"
POCO="~/.brew/Cellar/poco"
TBB="~/.brew/Cellar/tbb"
GLSLANG="~/.brew/Cellar/glslang"
GLSL_OPTIMISER="./lib/glsl-optimiser"
CGAL="~/.brew/Cellar/cgal"

if [ ! -d "$LIB_VTK" ]; then
	echo "Preparing to install VTK..."
	echo "Begin downloading VTK from GitHub...."
	git clone https://github.com/Kitware/VTK.git $VTK 
	echo "Busy creating CMake components"
	cmake -D CMAKE_C_COMPILER="/usr/bin/clang" -D CMAKE_CXX_COMPILER="/usr/bin/clang++" "./VTK/CMakeLists.txt"
	echo "Beginning to install VTK...."
	make -C "$VTK" install
	mv "$VTK" "$LIB"
fi

if [ ! -d "$LIB_OGRE" ]; then

	# Start by looking for the dependencies needed by Ogre3D
	echo "Finding dependencies for Ogre3D..."
	echo "This build is specific to OS X El Capitan"
	echo "You need to have Homebrew installed for this program to work."

	sleep 3

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
	if [ ! -d "$OGRE" ]; then
		hg clone https://bitbucket.org/sinbad/ogre "$OGRE"
	fi
	echo "Busy creating CMake components"
	echo "Make sure you add 'typedef void *locale_t;' to the header file. That it complains about."
	echo "You need to change strtod_l to strtodll and strtol_l to strtoll"
	sleep 2
	cmake -D CMAKE_C_COMPILER="/usr/bin/clang" -D CMAKE_CXX_COMPILER="/usr/bin/clang++" "./Ogre3D/CMakeLists.txt"
	echo "Beginning to install Ogre3D......"
	make -C "$OGRE" install/local
	mv "$OGRE" "$LIB"
	echo "Finish install Ogre3D...."
fi
