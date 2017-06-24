#define SDL_FILE
#include "SDL.class.hpp"

//MAP		glMap;

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

	static int	suzy(0);

	if (suzy == 0) {
		SDL_CreateWindowAndRenderer(WIN_WIDTH, WIN_HEIGHT, 0, &_window, &_renderer);
		suzy++;
	}

	_closed = true;
	this->setPalette();
	SDL_RenderClear(_renderer);
	SDL_SetRenderDrawColor( _renderer, 30, 30, 30, 50 );
	for (int k = 0; k < this->_size.getY(); k++)
		for (int l = 0; l < this->_size.getX(); l++) {
			switch (map[l][k]) {
				case MAP_EMPTY :
					drawBlank(k, l, 0, 1);
					break;
				case MAP_OBSTICLE :
					drawBlock(k, l, 4);
					break;
				case MAP_HEAD :
					drawBlock(k, l, 1);
					break;
				case MAP_BODY :
					drawBlock(k, l, 6);
					break;
				case MAP_FOOD :
					drawBlock(k, l, 5);
					break;
				default :
					drawBlock(k, l, 0);
					break;
			}
		}
	SDL_RenderPresent(_renderer);
	
	this->pollEvents();

	logger.log_step_in("SDL| drawMap() Called", IMPORTANT);
}

void		SDL::drawScore(int score) {
	logger.log_step_in("SDL| drawScore() Called", IMPORTANT);
	(void)score;
	logger.log_step_out("SDL| drawScore() Completed", IMPORTANT);
}

void		SDL::drawPause(void) {
	logger.log_step_in("SDL| drawPause() Called", IMPORTANT);
	//
	logger.log_step_out("SDL| drawPause() Completed", IMPORTANT);
}

void		SDL::drawGameOver(int finalScore) {
	logger.log_step_in("SDL| drawGameOver() Called", IMPORTANT);
	(void)finalScore;
	logger.log_step_out("SDL| drawGameOver() Completed", IMPORTANT);
}

void		SDL::drawBlock(int x, int y, int i) {
	SDL_Rect r;

	r.w = WIN_WIDTH / _size.getX();
	r.h = WIN_HEIGHT / _size.getY();
	r.x = r.w * x;
	r.y = r.h * y;

	SDL_SetRenderDrawColor( _renderer, _colors[i].r, _colors[i].g, _colors[i].b, 200 );
	SDL_RenderFillRect( _renderer, &r );
};

void		SDL::drawBlank(int x, int y, int i, int j) {
	SDL_Rect r;

	r.w = WIN_WIDTH / _size.getX();
	r.h = WIN_HEIGHT / _size.getY();
	r.x = r.w * x;
	r.y = r.h * y;

	SDL_SetRenderDrawColor( _renderer, _colors[i].r, _colors[i].g, _colors[i].b, 200 );
	SDL_RenderFillRect( _renderer, &r );
	SDL_SetRenderDrawColor( _renderer, _colors[j].r, _colors[j].g, _colors[j].b, 200 );
};

void		SDL::setPalette( void ) {
	// Black
	_colors[0].r=0,_colors[0].g=0,_colors[0].b=0;
	// White
	_colors[1].r=255,_colors[1].g=255,_colors[1].b=255;
	// Dark Grey
	_colors[2].r=30,_colors[2].g=30,_colors[2].b=30;
	// Pink
	_colors[3].r=230,_colors[3].g=10,_colors[3].b=100;
	// Purple
	_colors[4].r=163,_colors[4].g=112,_colors[4].b=220;
	// Green
	_colors[5].r=16,_colors[5].g=234,_colors[5].b=45;
	// Blue
	_colors[6].r=16,_colors[6].g=150,_colors[6].b=234;
	// Whatever
	_colors[7].r=200,_colors[7].g=150,_colors[7].b=56;
};

/*
** Window Specialities
*/
void		SDL::initWindow(void) {
	initWindow(this->_size);
}

void		SDL::initWindow(Coord size) {
	logger.log_step_in("SDL| initWindow() Called", CRITICAL);

	this->_size = size;
	
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

bool		SDL::getPaused(void) {
	return (this->_paused);
}

bool		SDL::getExit(void) {
	return (this->_closed);
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