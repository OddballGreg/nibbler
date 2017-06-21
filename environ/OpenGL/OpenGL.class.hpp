#ifndef NCURSES_WINDOW_HPP
# define NCURSES_WINDOW_HPP

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

# ifdef OPENGL_FILE

bool		listen = false;
bool		glLoop = false;
int			lastKeyPress = 0;

# else

extern bool	listen;
extern bool glLoop;
extern int	lastKeyPress;

# endif

# include "../../shared/IDisplay.hpp"

class OpenGL : public IDisplay {

	private:
		Coord				_size;
		Direction			_direction;

	public:
		OpenGL(void);
		virtual ~OpenGL(void);
	
		OpenGL(const OpenGL &obj);
		virtual OpenGL operator = (const OpenGL &obj);
	
		virtual void		drawMap(MAP map);
		virtual void		drawScore(int score);
		virtual void		drawPause(void);
		virtual void		drawGameOver(int finalScore);
	
		virtual	void		initWindow(void);
		virtual void		exitWindow(void);
	
		virtual Direction	getDirection(void);
		virtual Coord		getWindowSize(void);
};

void			pressKey(int key, int x, int y);
void			renderScene(void);
void			changeSize(int width, int height);

void			*startGlutLoop(void *threadID);

#endif