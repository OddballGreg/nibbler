#ifndef MAIN_HPP
# define MAIN_HPP

#include <iostream>
#include <string>
#include <stdlib.h>
#include <vector>
#include <fstream>

extern "C" {
	#include <dlfcn.h>
}

// OpenGL Libraries
// But this needs to be done by the CMake or bash because we are using
// dynamically linked libraries

# include <GL/gl.h>
# include <GL/glx.h>
# include <GL/glext.h>

// Library Reading Class
#include "ReadLib.class.hpp"

// GameState Class
//#include Gamestate.hpp

#endif
