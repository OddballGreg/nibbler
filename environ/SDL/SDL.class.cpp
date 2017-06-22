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

	bool	run(true);

	if (setupWindow()) {

		SDL_Event	Event;

		/*
		**	Setup an event for the window to open.
		*/

		while (run) {
			while (SDL_PollEvent(&Event) != 0) {
				if (Event.type == SDL_QUIT)
					run = false;
			}
			renderWindow();
			SDL_Delay(1);
		}

	} else {
		logger.log_step_in("SDL: failed to open a window", CRITICAL);
	}

	logger.log_step_out("SDL| initWindow() Completed", CRITICAL);
}

void		SDL::exitWindow(void) {
	logger.log_step_in("SDL| exitWindow() Called", CRITICAL);
	
	if (Renderer) {
		SDL_DestroyRenderer(Renderer);
		Renderer = NULL;
	}

	if (Window) {
		SDL_DestroyWindow(Window);
		Window = NULL;
	}

	SDL_Quit();

	logger.log_step_out("SDL| exitWindow() Completed", CRITICAL);
}

bool		SDL::setupWindow(void) {

	logger.log_step_in("SDL| setupWindow() Called", AVERAGE);

	if (SDL_Init(SDL_INIT_EVERYTHING) < 0) {
		logger.log_step_out("SDL| SDL_INIT failed", CRITICAL);
		return false;
	}
	if ((Window = SDL_CreateWindow(
		"Nibbler Kinky Snaky",
		SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIN_WIDTH, WIN_HEIGHT, SDL_WINDOW_SHOWN)
	) == NULL ) {
		logger.log_step_out("SDL| SDL_WINDOW failed", CRITICAL);
		return false;
	}
	
	primaryDisplay = SDL_GetWindowSurface(Window);
	
	if ((Renderer = SDL_CreateRenderer(Window, -1, SDL_RENDERER_ACCELERATED)) == NULL) {
		logger.log_step_out("SDL| SDL_RENDERER failed", CRITICAL);
		return false;
	}

	SDL_SetRenderDrawColor(Renderer, 0x00, 0x00, 0x00, 0xFF);

	logger.log_step_in("SDL| setupWindow() Completed", AVERAGE);
	
	return true;

}

void		SDL::renderWindow(void) {
	SDL_RenderClear(Renderer);
	SDL_RenderPresent(Renderer);
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