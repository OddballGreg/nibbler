#include "Environ.class.hpp"

Environ::Environ( void ) {};

Ncurses*	Environ::createNcurses( void ) {
	return new Ncurses;	
};

void		Environ::destroyNcurses( Ncurses* object ) {
	delete object;
};

OpenGL*		Environ::createOpenGL( void ) {
	return new OpenGL;
};

void		Environ::destroyOpenGL( OpenGL* object ) {
	delete object;
};

SDL*		Environ::createSDL( void ) {
	return new SDL;
};

void		Environ::destroySDL( SDL* object ) {
	delete object;
};

VTK*		Environ::createVTK( void ) {
	return new VTK;
};

void		Environ::destroyVTK( VTK* object ) {
	delete object;
};