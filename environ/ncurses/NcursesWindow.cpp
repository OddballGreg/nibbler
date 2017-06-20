/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   NcursesWindow.cpp                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/17 13:04:14 by khansman          #+#    #+#             */
/*   Updated: 2017/06/17 13:04:18 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#define NCURSES_FILE
#include "NcursesWindow.hpp"

/*
** Constructors and Destructors
*/
NcursesWindow::NcursesWindow(void) {
	logger.log("Constructing Ncurses Window", 1);
	_direction = Direction(EAST);

	_win = NULL;
	_panel = NULL;

	logger.log("Ncurses Window Constructed", -1);
}

NcursesWindow::~NcursesWindow(void) {
	logger.log("Deconstructing Ncurses Window", 1);
	listen = false;
	// _map.clear();

	if (_win)
		delwin(this->_win);

	// if (_panel)
	// 	del_panel(this->_panel);
	logger.log("Ncurses Window Destructed", -1);
}

/*
** Copying
*/
NcursesWindow::NcursesWindow(const NcursesWindow &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
	// this->_map = obj._map;

	this->_win = obj._win;
	this->_panel = obj._panel;
}

NcursesWindow NcursesWindow::operator = (const NcursesWindow &obj) {
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
void		NcursesWindow::drawMap(MAP map) {
	logger.log("Drawing Ncurses Window Map", 1);
	// this->_map.clear();
	// this->_map = map;

	for (int k = 0; k < this->_size.getY(); k++)
		for (int l = 0; l < this->_size.getX(); l++) {
			switch (map[k][l]) {
				case MAP_EMPTY :
					drawChar(k, l, ' ');
					break;
				case MAP_OBSTICLE :
					drawChar(k, l, '#');
					break;
				case MAP_HEAD :
					drawChar(k, l, '0');
					break;
				case MAP_BODY :
					drawChar(k, l, 'o');
					break;
				case MAP_FOOD :
					drawChar(k, l, 'x');
					break;
				default :
					drawChar(k, l, ' ');
					break;
			}
		}

	update_panels();
	doupdate();
	wmove(this->_win, 3, 1);// used to move
	logger.log("Ncurses Window Map Drawn", -1);
}

void		NcursesWindow::drawScore(int score) {
	logger.log("Ncurses Window drawing score", 1);
	std::stringstream s;
	s << "Score: " << score << "            ";

	std::string str = s.str();
	str.resize(20);

	mvwaddstr(this->_win, this->_size.getY() - 2, 2, str.c_str());
	logger.log("Ncurses Window Score Drawn", -1);
}

void		NcursesWindow::drawPause(void) {
	logger.log("Ncurses Window drawing pause", 1);
	mvwaddstr(this->_win, this->_size.getY() - 2, 2, "-PAUSED-            ");
	logger.log("Ncurses Window Pause Drawn", -1);
}

void		NcursesWindow::drawGameOver(int finalScore) {
	logger.log("Ncurses Window drawing game over", 1);
	std::stringstream s;
	s << "-GAMEOVER- [score: " << finalScore << "]            ";

	std::string str = s.str();
	mvwaddstr(this->_win, this->_size.getY() - 2, 2, str.c_str());
	logger.log("Ncurses Window Game Over Drawn", -1);
}

extern "C" NcursesWindow*	createObject() {
	return new NcursesWindow;
}

extern "C" void destroyObject( NcursesWindow* object ) {
	delete object;
}

/*
** Window Specialities
*/
void		NcursesWindow::initWindow(void) {
	int x, y;

	logger.log("Ncurses Window initWindow() called", 1);
	initscr();
	keypad(stdscr, TRUE);
	// timeout(25);
	start_color();
	init_pair(1, COLOR_GREEN, COLOR_BLACK);
	attron(COLOR_PAIR(1));
	nodelay(stdscr, TRUE);
	curs_set(0);
    cbreak();
    noecho();

	getmaxyx(stdscr, y, x);

	_size = Coord(x - 2, y - 2);

	_win  = newwin(this->_size.getY(), this->_size.getX(), 1, 1);
	_panel = new_panel(_win);

	drawWindowFrame();
	update_panels();
	doupdate();

	keyListener();
	logger.log("Ncurses Window window initialized", -1);
}

void		NcursesWindow::exitWindow(void) {
	logger.log("Ncurses Window exitWindow() called", 1);
	if (this->_win) {
		delwin(this->_win);
		this->_win = NULL;
	}
	// if (_panel) {
	// 	del_panel(this->_panel);
	// 	this->_panel = NULL;
	// }
	logger.log("Ncurses Window window exited", -1);
}

/*
** Getters
*/
Direction	NcursesWindow::getDirection(void) {
	logger.log("Ncurses Window getDirection() called");
	keyListener();

	return (this->_direction);
}

Coord		NcursesWindow::getWindowSize(void) {
	logger.log("Ncurses Window getWindowSize() called");
	return (Coord(this->_size.getX() - 3, this->_size.getY() - 6));
}

/*
** Private Functions
*/
void    	NcursesWindow::drawWindowFrame(void) {
	logger.log("Ncurses Window drawWindowFrame() called", 1);
	box(this->_win, 0, 0);
	mvwaddch(this->_win, 2, 0, ACS_LTEE);
	mvwaddch(this->_win, 2, this->_size.getX() - 1, ACS_RTEE);
	for (int k = 1; k < this->_size.getX() - 1; k++) {
		mvwaddch(this->_win, 2, k, ACS_HLINE);
		mvwaddch(this->_win, this->_size.getY() - 3, k, ACS_HLINE);
	}

	drawTitle();
    mvwaddstr(this->_win, this->_size.getY() - 2, 2, "Score:");
	wmove(this->_win, 3, 1);// used to move
	logger.log("Ncurses Window window frame drawn", -1);
}

void		NcursesWindow::drawTitle(void) {
	logger.log("Ncurses Window drawTitle() called", 1);
	std::string		title("NIBBLER");

    mvwaddstr(this->_win, 1, (this->_size.getX() - static_cast<int>(title.length())) / 2, title.c_str());
	logger.log("Ncurses Window title drawn", -1);
}

bool		NcursesWindow::drawChar(int y, int x, const int c) {
	logger.log("Ncurses Window drawChar() called", 1);
	x += 1;
	y += 3;

	if ((0 < x && x < this->_size.getX() - 2) && (0 < y && y < this->_size.getY() - 3)) {
		mvwaddch(this->_win, y, x, c);
		return (true);
	}

	return (false);
	logger.log("Ncurses Window char drawn", -1);
}

void		NcursesWindow::keyListener(void) {
	logger.log("Ncurses Window keyListener() called", 1);
	 pthread_t	thread;
	 int		ret;

	 if (!listen) {
		 ret = pthread_create(&thread, NULL, keyLoop, (void *)1);
		 if (ret)
		 	throw std::runtime_error("Unable to create new thread");
		 listen = true;
	 }
	 if (lastKeyPress) {
		if ((lastKeyPress == 'a') && this->_direction.getDirection() != EAST)
			this->_direction = Direction(WEST);
		else if ((lastKeyPress == 'd') && this->_direction.getDirection() != WEST)
			this->_direction = Direction(EAST);
		else if ((lastKeyPress == 'w') && this->_direction.getDirection() != SOUTH)
			this->_direction = Direction(NORTH);
		else if ((lastKeyPress == 's') && this->_direction.getDirection() != NORTH)
			this->_direction = Direction(SOUTH);
		lastKeyPress = 0;
	 }
	logger.log("Ncurses Window keyListener() completed", -1);
}

/*
** Other Functions
*/

void		*keyLoop(void *threadID) {
	int		key;
	logger.log("Ncurses Window keyLoop() called", 1);

	if (!threadID)
		throw std::runtime_error("Calling NCurses Loop with main thread");

	while (listen) {
		if (((key = getch()) != ERR)) {
			logger.log("Ncurses Window keyLoop() - getch() not ERR");
			lastKeyPress = key;
		}
	}
	logger.log("Ncurses Window keyLoop() - pthread exited", -1);
	pthread_exit(NULL);
}

IDisplay			*createWindow(void) {
	logger.log("Ncurses Window createWindow() called");
	return new NcursesWindow;
}

void				deleteWindow(IDisplay *window) {
	logger.log("Ncurses Window deleteWindow() called");
	NcursesWindow	*win = static_cast<NcursesWindow *>(window);

	delete win;
}
