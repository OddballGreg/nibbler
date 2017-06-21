#ifndef SDL_WINDOW_HPP
# define SDL_WINDOW_HPP

# ifdef __APPLE__
#  include <OpenGL/gl.h>
#  include <GLUT/glut.h>
# else
#  include <GL/gl.h>
#  include <GL/glut.h>
# endif

# include <unistd.h> //debug
# include <pthread.h>

# define WIN_WIDTH    720
# define WIN_HEIGHT   720
# define WIN_X        200
# define WIN_Y        200

# include "../../shared/IDisplay.hpp"

class SDL : public IDisplay {

	private:
		Coord				_size;
		Direction			_direction;

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