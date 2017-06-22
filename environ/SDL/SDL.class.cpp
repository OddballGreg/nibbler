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

	if (!setupWindow())
		_closed = true;

	logger.log_step_out("SDL| initWindow() Completed", CRITICAL);
}

void		SDL::exitWindow(void) {
	logger.log_step_in("SDL| exitWindow() Called", CRITICAL);
	
	if (_renderer) {
		SDL_DestroyRenderer(_renderer);
		_renderer = NULL;
	}

	if (_window) {
		SDL_DestroyWindow(_window);
		_window = NULL;
	}

	SDL_Quit();

	logger.log_step_out("SDL| exitWindow() Completed", CRITICAL);
}

bool		SDL::setupWindow(void) {

	logger.log_step_in("SDL| setupWindow() Called", AVERAGE);

	if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
		logger.log_step_out("SDL| SDL_INIT failed", CRITICAL);
		return false;
	}
	
	_window = SDL_CreateWindow(
		"Nibbler Kinky Snaky",
		SDL_WINDOWPOS_CENTERED,
		SDL_WINDOWPOS_CENTERED,
		WIN_WIDTH, WIN_HEIGHT,
		0
	);
	
	if (_window == nullptr) {
		logger.log_step_out("SDL| SDL_WINDOW failed", CRITICAL);
		return false;
	}
	
	_primaryDisplay = SDL_GetWindowSurface(_window);
	
	if ((_renderer = SDL_CreateRenderer(_window, -1, SDL_RENDERER_ACCELERATED)) == NULL) {
		logger.log_step_out("SDL| SDL_RENDERER failed", CRITICAL);
		return false;
	}

	SDL_SetRenderDrawColor(_renderer, 0x00, 0x00, 0x00, 0xFF);

	logger.log_step_in("SDL| setupWindow() Completed", AVERAGE);
	
	return true;

}

void		SDL::renderWindow(void) {
	SDL_RenderClear(_renderer);
	SDL_RenderPresent(_renderer);
}

void		SDL::pollEvents( void ) {
	SDL_Event	event;

	if (SDL_PollEvent(&event)) {
		switch (event.type) {
			case SDL_QUIT:
				_closed = true;
				break;

			default:
				break;
		}
	}
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