#ifndef __ENVIRON_H__
# define __ENVIRON_H__

# include "./ncurses/NcursesWindow.hpp"
# include "./OpenGL/"
# include "./SDL/"
# include "./VTK/"

class Environ {

	public:
		Environ( void );

		extern "C" {
			NcursesWindow*	createNcurses( void );
			void			destroyNcurses( NcursesWindow* object );
			OpenGL*			createOpenGL( void );
			void			destroyOpenGL( OpenGL* object );
			SDL*			createSDL( void );
			void			destroySDL( SDL* object );
			VTK*			createVTK( void );
			void			destroyVTK( VTK* object );
		}
};

#endif