#!/bin/bash

clear

echo "Checking to see if any graphic libraries are installed..."

LIB_VTK="./lib/VTK"
VTK="VTK"
LIB="./lib"

LIB_OGRE="./lib/Ogre3D"
OGRE="Ogre3D"

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
	echo "preparing to install Ogre3D..."
	echo "Begin downloading Ogre3D from Bitbucket...."
	#hg clone https://bitbucket.org/sinbad/ogre $OGRE
	echo "Busy creating CMake components"
	cmake -D CMAKE_C_COMPILER="/usr/bin/clang" -D CMAKE_CXX_COMPILER="/usr/bin/clang++" "./Ogre3D/CMakeLists.txt"
	echo "Beginning to install Ogre3D...."
	make -C "$OGRE" install
	mv "$OGRE" "$LIB"
fi
