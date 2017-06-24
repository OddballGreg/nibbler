#ifndef SDL_WINDOW_HPP
# define SDL_WINDOW_HPP

# include <SDL2/SDL.h>
# include <SDL2/SDL_main.h>
# include <SDL/SDL.h>
# include <SDL/SDL_main.h>

# define WIN_WIDTH    920
# define WIN_HEIGHT   920
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

# include <cstring>
# include <string>

# include <unistd.h>
# include <pthread.h>

# include "../../shared/IDisplay.hpp"

class SDL : public IDisplay {

	private:
		Coord				_size;
		Direction			_direction;
		SDL_Window*			_window = nullptr;
		SDL_Renderer*		_renderer = nullptr;
		SDL_Surface*		_primaryDisplay = nullptr;
		SDL_Texture*		_bitmapTex = nullptr;
		SDL_Color			_colors[8];

		bool				_closed = false;
		bool				_paused = false;
		bool				_exit = false;

	public:
		SDL(void);
		virtual ~SDL(void);
	
		SDL(const SDL &obj);
		virtual SDL operator = (const SDL &obj);
	
		virtual void		drawMap(MAP map);
		virtual void		drawScore(int score);
		virtual void		drawPause(void);
		virtual void		drawGameOver(int finalScore);
	
				void		drawBlock(int x, int y, int i);
				void		drawBlank(int x, int y, int i, int j);

				void		setPalette( void );

		virtual	void		initWindow(void);
		virtual void		initWindow(Coord size);
				bool		setupWindow(void);
				void		renderWindow(void);
		virtual void		exitWindow(void);
	
		virtual Direction	getDirection(void);
		virtual Coord		getWindowSize(void);
		virtual bool		getPaused(void);
		virtual bool		getExit(void);

		virtual void		setWindowSize(Coord size);
				void		pollEvents( void );
				void		displayBMP(char *file_name);
		inline bool			isClosed() const { return _closed; };
};

#endif