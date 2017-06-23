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

	//for (int k = 0; k < this->_size.getY(); k++)
	//for (int l = 0; l < this->_size.getX(); l++) {
	//	switch (map[l][k]) {
	//		case MAP_EMPTY :
	//			drawChar(k, l, ' ');
	//			break;
	//		case MAP_OBSTICLE :
	//			drawChar(k, l, '#');
	//			break;
	//		case MAP_HEAD :
	//			drawChar(k, l, '0');
	//			break;
	//		case MAP_BODY :
	//			drawChar(k, l, 'o');
	//			break;
	//		case MAP_FOOD :
	//			drawChar(k, l, 'x');
	//			break;
	//		default :
	//			drawChar(k, l, ' ');
	//			break;
	//	}
	//}

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
	initWindow(this->_size);
}

void		SDL::initWindow(Coord size) {
	logger.log_step_in("SDL| initWindow() Called", CRITICAL);

	//if (!setupWindow())
	//	_closed = true;
	this->_size = size;

	if (SDL_CreateWindowAndRenderer(640, 480, 0, &_window, &_renderer) == 0) {
		
		_closed = true;

		while (this->isClosed()) {
			//this->renderWindow();
			//SDL_RenderClear(_renderer);
    	    //SDL_RenderCopy(_renderer, _bitmapTex, NULL, NULL);
    	    //SDL_RenderPresent(_renderer);
			SDL_SetRenderDrawColor(_renderer, 0, 0, 0, SDL_ALPHA_OPAQUE);
    	    SDL_RenderClear(_renderer);
		
   			SDL_SetRenderDrawColor(_renderer, 255, 255, 255, SDL_ALPHA_OPAQUE);
    	    SDL_RenderDrawLine(_renderer, 320, 200, 300, 240);
    	    SDL_RenderDrawLine(_renderer, 300, 240, 340, 240);
    	    SDL_RenderDrawLine(_renderer, 340, 240, 320, 200);
		
			// Set render color to red ( background will be rendered in this color )
		    SDL_SetRenderDrawColor( _renderer, 30, 30, 30, 50 );
		
		    // Clear winow
		    SDL_RenderClear( _renderer );
		
		    // Creat a rect at pos ( 50, 50 ) that's 50 pixels wide and 50 pixels high.
		    SDL_Rect r;
		    r.x = 50;
		    r.y = 50;
		    r.w = 10;
		    r.h = 10;
		
		    // Set render color to blue ( rect will be rendered in this color )
		    SDL_SetRenderDrawColor( _renderer, 230, 10, 100, 200 );
		
		    // Render rect
		    SDL_RenderFillRect( _renderer, &r );

			SDL_RenderPresent(_renderer);

			this->pollEvents();

		}
	}

	logger.log_step_out("SDL| initWindow() Completed", CRITICAL);
}

void		SDL::exitWindow(void) {
	logger.log_step_in("SDL| exitWindow() Called", CRITICAL);
	
	if (_bitmapTex) {
		SDL_DestroyTexture(_bitmapTex);
		_bitmapTex = NULL;
	}

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
	
	//this->renderWindow();

	if (_renderer == nullptr) {
		logger.log_step_out("SDL| renderer failed()", CRITICAL);
		return false;
	}

	logger.log_step_in("SDL| setupWindow() Completed", AVERAGE);
	
	return true;

}

void		SDL::renderWindow(void) {
	
	_renderer = SDL_CreateRenderer(_window, -1, SDL_RENDERER_PRESENTVSYNC);
		
	//SDL_FreeSurface(_primaryDisplay);

	SDL_SetRenderDrawColor(_renderer, 0, 0, 200, 0);
		
	SDL_Rect	rect;

	rect.w = 120;
	rect.h = 120;
	rect.x = (WIN_WIDTH / 2) - (rect.w / 2);
	rect.y = (WIN_HEIGHT / 2) - (rect.h / 2);

	SDL_SetRenderDrawColor(_renderer, 200, 0, 200, 0);
	SDL_RenderClear(_renderer);
	SDL_RenderFillRect(_renderer, &rect);

	SDL_RenderPresent(_renderer);
}

void		SDL::pollEvents( void ) {

	SDL_Event	event;

	if (SDL_PollEvent(&event)) {
		switch (event.type) {
			case SDL_QUIT:
				_closed = false;
				break;
			case SDL_KEYDOWN:
				switch (event.key.keysym.sym) {
					case SDLK_ESCAPE:
						_closed = false;
						break;
					default:
						break;
				}
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
** Setters
*/
void		SDL::setWindowSize(Coord size) {
	this->_size = size;
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