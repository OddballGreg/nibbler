#ifndef NCURSES_WINDOW_HPP
 # define NCURSES_WINDOW_HPP

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

#endif