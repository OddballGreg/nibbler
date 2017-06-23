
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
	logger.log_step_in("Ncurses Window| Constructor Called {", CRITICAL);
	_direction = Direction(EAST);

	_win = NULL;
	_panel = NULL;

	logger.log_step_out("} Ncurses Window| Constructor Completed", CRITICAL);
}

NcursesWindow::~NcursesWindow(void) {
	logger.log_step_in("Ncurses Window| Deconstructing", CRITICAL);
	listen = false;
	// _map.clear();

	if (_win)
		delwin(this->_win);

	// if (_panel)
	// 	del_panel(this->_panel);
	logger.log_step_out("Ncurses Window| Deconstructed", CRITICAL);
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
	logger.log_step_in("NcursesWindow| drawMap() Called", IMPORTANT);

	for (int k = 0; k < this->_size.getY(); k++)
		for (int l = 0; l < this->_size.getX(); l++) {
			switch (map[l][k]) {
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
	wmove(this->_win, 3, 1);
	logger.log_step_out("NcursesWindow| drawMap() Completed", IMPORTANT);
}

void		NcursesWindow::drawScore(int score) {
	logger.log_step_in("Ncurses Window| drawScore() Called", IMPORTANT);
	std::stringstream s;
	s << "Score: " << score << "            ";

	std::string str = s.str();
	str.resize(20);

	mvwaddstr(this->_win, this->_size.getY() - 2, 2, str.c_str());
	logger.log_step_out("Ncurses Window| drawScore() Completed", IMPORTANT);
}

void		NcursesWindow::drawPause(void) {
	logger.log_step_in("Ncurses Window| drawPause() Called", IMPORTANT);
	mvwaddstr(this->_win, this->_size.getY() - 2, 2, "-PAUSED-            ");
	logger.log_step_out("Ncurses Window| drawPause() Completed", IMPORTANT);
}

void		NcursesWindow::drawGameOver(int finalScore) {
	logger.log_step_in("Ncurses Window| drawGameOver() Called", IMPORTANT);
	std::stringstream s;
	s << "-GAMEOVER- [score: " << finalScore << "]            ";

	std::string str = s.str();
	mvwaddstr(this->_win, this->_size.getY() - 2, 2, str.c_str());

	update_panels();
	doupdate();

	logger.log_step_out("Ncurses Window| drawGameOver() Completed", IMPORTANT);
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
	// int		x, y;
	// Coord	size;

	// getmaxyx(stdscr, y, x);

	// size = Coord(x - 2, y - 2);
	// initWindow(size);

	initWindow(Coord(0, 0));
}

void		NcursesWindow::initWindow(Coord size) {
	int 	x, y;

	logger.log_step_in("Ncurses Window| initWindow() Called", CRITICAL);
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

	/* Set Size */
	getmaxyx(stdscr, y, x);

	if (size.getX() == 0 && size.getY() == 0)
		size = Coord(x - 2, y - 2);

	if (x <= size.getX() || y <= size.getY())
		throw std::runtime_error("Error The terminal is too small for the specified size");

	_size = size;

	// _size = Coord(x - 2, y - 2);
	_win  = newwin(this->_size.getY(), this->_size.getX(), 1, 1);
	_panel = new_panel(_win);

	drawWindowFrame();
	update_panels();
	doupdate();

	keyListener();
	logger.log_step_out("Ncurses Window| initWindow() Completed", CRITICAL);
}

void		NcursesWindow::exitWindow(void) {
	logger.log_step_in("Ncurses Window| exitWindow() Called", CRITICAL);
	if (this->_win) {
		delwin(this->_win);
		this->_win = NULL;
	}

	// if (_panel) {
	// 	del_panel(this->_panel);
	// 	this->_panel = NULL;
	// }

	endwin();

	logger.log_step_out("Ncurses Window| exitWindow() Completed", CRITICAL);
}

/*
** Getters
*/
Direction	NcursesWindow::getDirection(void) {
	logger.log("Ncurses Window| getDirection() Called", AVERAGE);
	keyListener();

	return (this->_direction);
}

Coord		NcursesWindow::getWindowSize(void) {
	logger.log("Ncurses Window| getWindowSize() Called", AVERAGE);
	return (Coord(this->_size.getX() - 4, this->_size.getY() - 8));
}

/*
** Setters
*/
void			NcursesWindow::setWindowSize(Coord size) {
	this->_size = size;
}

/*
** Private Functions
*/
void    	NcursesWindow::drawWindowFrame(void) {
	logger.log_step_in("Ncurses Window| drawWindowFrame() Called", CRITICAL);
	box(this->_win, 0, 0);
	mvwaddch(this->_win, 2, 0, ACS_LTEE);
	mvwaddch(this->_win, 2, this->_size.getX() - 1, ACS_RTEE);
	for (int k = 1; k < this->_size.getX() - 1; k++) {
		mvwaddch(this->_win, 2, k, ACS_HLINE);
		mvwaddch(this->_win, this->_size.getY() - 3, k, ACS_HLINE);
	}

	drawTitle();
	wmove(this->_win, 3, 1);// used to move
	logger.log_step_out("Ncurses Window| drawWindowFrame() Completed", CRITICAL);
}

void		NcursesWindow::drawTitle(void) {
	logger.log_step_in("Ncurses Window| drawTitle() Called", CRITICAL);
	std::string		title("NIBBLER");

    mvwaddstr(this->_win, 1, (this->_size.getX() - static_cast<int>(title.length())) / 2, title.c_str());
	logger.log_step_out("Ncurses Window| drawTitle() Completed", CRITICAL);
}

bool		NcursesWindow::drawChar(int y, int x, const int c) {
	x += 2;
	y += 4;

	if ((1 < x && x < this->_size.getX() - 2) && (1 < y && y < this->_size.getY() - 3)) {
		mvwaddch(this->_win, y, x, c);
		return (true);
	}

	return (false);
}

void		NcursesWindow::keyListener(void) {
	logger.log("Ncurses Window| keyListener() Called", IMPORTANT);
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
		else if ((lastKeyPress == 'w') && this->_direction.getDirection() != NORTH)
			this->_direction = Direction(SOUTH);
		else if ((lastKeyPress == 's') && this->_direction.getDirection() != SOUTH)
			this->_direction = Direction(NORTH);
		lastKeyPress = 0;
	 }
	logger.log("Ncurses Window| keyListener() Completed", IMPORTANT);
}

/*
** Other Functions
*/

void		*keyLoop(void *threadID) {
	int		key;
	logger.log("Ncurses Window| keyLoop() Called", IMPORTANT);

	if (!threadID)
		throw std::runtime_error("Calling NCurses Loop with main thread");

	while (listen) {
		if (((key = getch()) != ERR)) {
			logger.log("Ncurses Window| keyLoop() - getch() = " + std::to_string(key), IMPORTANT);
			lastKeyPress = key;
		}
	}
	logger.log("Ncurses Window| keyLoop() - pthread exited", IMPORTANT);
	pthread_exit(NULL);
}

IDisplay			*createWindow(void) {
	logger.log("Ncurses Window| createWindow() Called", CRITICAL);
	return new NcursesWindow;
}

void				deleteWindow(IDisplay *window) {
	logger.log("Ncurses Window| deleteWindow() called", CRITICAL);
	NcursesWindow	*win = static_cast<NcursesWindow *>(window);

	delete win;
}
