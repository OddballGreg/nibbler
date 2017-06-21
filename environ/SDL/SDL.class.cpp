#define SDL_FILE
#include "SDL.class.hpp"

MAP		glMap;

/*
** Constructors and Destructors
*/
SDL::SDL(void) {
	logger.log_step_in("SDL| Constructor Called {", CRITICAL);
	
	_size = Coord(25, 25);

	logger.log_step_out("} SDL| Constructor Completed", CRITICAL);
}

SDL::~SDL(void) {
	logger.log_step_in("SDL| Deconstructing", CRITICAL);
	//
	logger.log_step_out("SDL| Deconstructed", CRITICAL);
}

/*
** Copying
*/
SDL::SDL(const SDL &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
}

SDL SDL::operator = (const SDL &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;

	return (*this);
}

/*
** Draw Functions
*/
void		SDL::drawMap(MAP map) {
	logger.log_step_in("SDL| drawMap() Called", IMPORTANT);
	glMap = map;

	//renderScene();
	logger.log_step_in("SDL| drawMap() Called", IMPORTANT);
}

void		SDL::drawScore(int score) {
	logger.log_step_in("SDL| drawScore() Called", IMPORTANT);
	(void)score;//FIXME
	logger.log_step_out("SDL| drawScore() Completed", IMPORTANT);
}

void		SDL::drawPause(void) {
	logger.log_step_in("SDL| drawPause() Called", IMPORTANT);
	//
	logger.log_step_out("SDL| drawPause() Completed", IMPORTANT);
}

void		SDL::drawGameOver(int finalScore) {
	logger.log_step_in("SDL| drawGameOver() Called", IMPORTANT);
	(void)finalScore;//FIXME
	logger.log_step_out("SDL| drawGameOver() Completed", IMPORTANT);
}

/*
** Window Specialities
*/
void		SDL::initWindow(void) {
	logger.log_step_in("SDL| initWindow() Called", CRITICAL);
	
	char		*av[1];
	int			ac = 1;
	pthread_t	thread;
	int			ret;

	av [0] = strdup ("nibbler");

//	if (!glLoop) {
		glLoop = true;

		if (SDL_Init(SDL_INIT_EVERYTHING) < 0)
			glLoop = false;
		if ((surfDisplay = SDL_SetVideoMode(WIN_WIDTH, WIN_HEIGHT, 32, SDL_HWSURFACE | SDL_DOUBLEBUF)) == NULL)
			glLoop = false;

//		ret = pthread_create(&thread, NULL, startGlutLoop, (void *)1);
//		if (ret)
//			throw std::runtime_error("Unable to create new thread");
//	}
//	free(av[0]);

	logger.log_step_out("SDL| initWindow() Completed", CRITICAL);
}

void		SDL::exitWindow(void) {
	logger.log_step_in("SDL| exitWindow() Called", CRITICAL);
	//
	logger.log_step_out("SDL| exitWindow() Completed", CRITICAL);
}

/*
** Getters
*/
Direction	SDL::getDirection(void) {
	logger.log("SDL| getDirection() Called", AVERAGE);
	return (this->_direction);
}

Coord		SDL::getWindowSize(void) {
	logger.log("SDL| getWindowSize() Called", AVERAGE);
	return (this->_size);
}

/*
** Linker Functions
*/
extern "C" SDL*	createObject() {
	return new SDL;
}

extern "C" void destroyObject( SDL* object ) {
	delete object;
}

IDisplay			*createWindow(void) {
	logger.log("SDL| createWindow() called", CRITICAL);
	return new SDL;
}

void				deleteWindow(IDisplay *window) {
	logger.log("SDL| deleteWindow() called", CRITICAL);
	SDL	*win = static_cast<SDL *>(window);

	delete win;
}