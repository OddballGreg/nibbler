#include "OpenGL.class.hpp"

/*
** Constructors and Destructors
*/
OpenGL::OpenGL(void) {
	int x, y;

	getmaxyx(stdscr, y, x);

	_size = Coord(x - 2, y - 2);
	_direction = Direction(EAST);

	_win = NULL;
	_panel = NULL;
}

OpenGL::~OpenGL(void) {
	// _map.clear();

	if (_win)
		delwin(this->_win);

	// if (_panel)
	// 	del_panel(this->_panel);
}

/*
** Copying
*/
OpenGL::OpenGL(const OpenGL &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
	// this->_map = obj._map;

	this->_win = obj._win;
	this->_panel = obj._panel;
}

OpenGL OpenGL::operator = (const OpenGL &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
	// this->_map = obj._map;

	this->_win = obj._win;
	this->_panel = obj._panel;

	return (*this);
}

/*
** Draw Functions
*/
void		OpenGL::drawMap(MAP map) {
	
}

void		OpenGL::drawScore(int score) {
	std::stringstream s;
	s << "Score: " << score << "            ";

	std::string str = s.str();
	str.resize(20);

	mvwaddstr(this->_win, this->_size.getY() - 2, 2, str.c_str());
}

void		OpenGL::drawPause(void) {
	mvwaddstr(this->_win, this->_size.getY() - 2, 2, "-PAUSED-            ");
}

void		OpenGL::drawGameOver(int finalScore) {
	std::stringstream s;
	s << "-GAMEOVER- [score: " << finalScore << "]            ";

	std::string str = s.str();
	mvwaddstr(this->_win, this->_size.getY() - 2, 2, str.c_str());
}

/*
** Window Specialities
*/
void		OpenGL::initWindow(void) {
	
}

void		OpenGL::exitWindow(void) {
	
}

/*
** Getters
*/
Direction	OpenGL::getDirection(void) {
	return (this->_direction);
}

Coord		OpenGL::getWindowSize(void) {
	//
}
