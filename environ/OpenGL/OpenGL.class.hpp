#ifndef OPENGL_WINDOW_HPP
# define OPENGL_WINDOW_HPP

# ifdef __APPLE__
#  include <OpenGL/gl.h>
#  include <GLUT/glut.h>
# else
#  include <GL/gl.h>
#  include <GL/glut.h>
# endif

# include <unistd.h> //debug
# include <pthread.h>

# include "../../shared/IDisplay.hpp"

# define WIN_WIDTH		720
# define WIN_HEIGHT		720
# define WIN_X			200
# define WIN_Y			200

# define GRID_WIDTH		50
# define GRID_HEIGHT	50

# ifdef OPENGL_FILE

bool			listen = false;
bool			glLoop = false;
bool			paused = false;
int				lastKeyPress = 0;
Coord			winSize = Coord(GRID_WIDTH, GRID_HEIGHT);

# else

extern bool		listen;
extern bool 	glLoop;
extern int		lastKeyPress;
extern Coord	winSize;
extern bool		paused;

# endif

class OpenGL : public IDisplay {

	private:
		Direction			_direction;
		bool				_closed = false;

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
		virtual void		initWindow(Coord size);
		virtual void		exitWindow(void);
	
		virtual Direction	getDirection(void);
		virtual Coord		getWindowSize(void);
		virtual bool		getPaused(void);

		virtual void		setWindowSize(Coord size);
};

void			pressKey(int key, int x, int y);
void			renderScene(void);
void			changeSize(int width, int height);

void			*startGlutLoop(void *threadID);
void			drawSquare(int x, int y, char colour);

void			renderBitmapString(float x, float y, float z, void *font, const char *string);
void			setOrthographicProjection(void);
void			restorePerspectiveProjection(void);

#endif