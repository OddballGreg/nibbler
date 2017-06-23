#ifndef MAIN_HPP
# define MAIN_HPP

# include <iostream>
# include <string>
# include <stdlib.h>
# include <vector>
# include <fstream>
# include <fcntl.h>
# include <stdio.h>

# include <boost/program_options.hpp>

# ifdef MAIN_FILE

bool			g_ai_flag = false;
int				g_height = 20;
int				g_width = 20;
int				g_verbosity = 10;

# else

extern bool		g_ai_flag;
extern int		g_height;
extern int		g_width;
extern int		g_verbosity;

# endif

extern "C" {
	#include <dlfcn.h>
}

# include "../shared/Logger.hpp"

// OpenGL libraries
//#include "../lib/OpenGL/OpenGL.hpp"

// Library Reading Class
#include "./ReadLib.class.hpp"

// GameState Class
//#include Gamestate.hpp

#endif
