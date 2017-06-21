#ifndef SDL_WINDOW_HPP
# define SDL_WINDOW_HPP


# include <SDL/SDL_main.h>
# include <SDL/SDL.h>
# include <unistd.h> //debug
# include <pthread.h>

# define WIN_WIDTH    720
# define WIN_HEIGHT   720
# define WIN_X        200
# define WIN_Y        200

# ifdef SDL_FILE

bool		listen = false;
bool		glLoop = false;
int			lastKeyPress = 0;

# else

extern bool	listen;
extern bool glLoop;
extern int	lastKeyPress;

# endif

# include "../../shared/IDisplay.hpp"

class SDL : public IDisplay {

	private:
		Coord				_size;
		Direction			_direction;
		SDL_Surface*		surfDisplay;

	public:
		SDL(void);
		virtual ~SDL(void);
	
		SDL(const SDL &obj);
		virtual SDL operator = (const SDL &obj);
	
		virtual void		drawMap(MAP map);
		virtual void		drawScore(int score);
		virtual void		drawPause(void);
		virtual void		drawGameOver(int finalScore);
	
		virtual	void		initWindow(void);
		virtual void		exitWindow(void);
	
		virtual Direction	getDirection(void);
		virtual Coord		getWindowSize(void);
};

#endif