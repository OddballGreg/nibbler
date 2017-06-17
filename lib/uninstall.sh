LIB_VTK="./lib/VTK"
LIB_OGRE="./lib/Ogre3D"
LIB_SDL="./lib/SDL"
LIB_OPENGL="./lib/OpenGL"

echo "Removing the Libraries"

if [ ! -d "$LIB_VTK" ]; then
	/bin/rm -rf "$LIB_VTK"
fi

if [ ! -d "$LIB_OGRE" ]; then
	/bin/rm -rf "$LIB_OGRE"
fi

if [ ! -d "$LIB_SDL" ]; then
	/bin/rm -rf "$LIB_SDL"
fi

if [ ! -d "$LIB_OPENGL" ]; then
	/bin/rm -rf "$LIB_OPENGL"
fi