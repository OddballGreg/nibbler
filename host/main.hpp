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

#include "../config/NibblerConfig.h"

// OpenGL Libraries

#ifdef USE_OPENGL
# include <GL/gl.h>
# include <GL/glx.h>
# include <GL/glext.h>
#endif

// Library Reading Class
#include "./ReadLib.class.hpp"

// GameState Class
//#include Gamestate.hpp

#endif
