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

#include "NcursesWindow.hpp"

/*
** Constructors and Destructors
*/
NcursesWindow::NcursesWindow(void) {
	int x, y;

	getmaxyx(stdscr, y, x);

	_size = Coord(x - 2, y - 2);
	_direction = Direction(EAST);

	_win = NULL;
	_panel = NULL;
}

NcursesWindow::~NcursesWindow(void) {
	_map.clear();

	if (_win)
		delwin(this->_win);

	// if (_panel)
	// 	del_panel(this->_panel);
}

/*
** Copying
*/
NcursesWindow::NcursesWindow(const NcursesWindow &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
	this->_map = obj._map;

	this->_win = obj._win;
	this->_panel = obj._panel;
}

NcursesWindow NcursesWindow::operator = (const NcursesWindow &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
	this->_map = obj._map;

	this->_win = obj._win;
	this->_panel = obj._panel;

	return (*this);
}

/*
** Draw Functions
*/
void		NcursesWindow::drawMap(MAP map) {
	this->_map.clear();
	this->_map = map;

	//
}

void		NcursesWindow::drawScore(int score) {
	//
}

void		NcursesWindow::drawPause(void) {
	//
}

void		NcursesWindow::drawGameOver(void) {
	//
}

/*
** Window Specialities
*/
void		NcursesWindow::initWindow(void) {
	//
}

void		NcursesWindow::exitWindow(void) {
	//
}

/*
** Getters
*/
Direction	NcursesWindow::getDirection(void) {
	//
}

int			NcursesWindow::getWindowSize(void) {
	//
}

/*
** Private Functions
*/
void    	NcursesWindow::drawWindowFrame(void) {
	//
}

void		NcursesWindow::drawTitle(void) {
	//
}

bool		NcursesWindow::drawChar(int y, int x, const int c) {
	x += 1;
	y += 3;

	if ((0 < x && x < this->_size.getX() - 2) && (0 < y && y < this->_size.getY() - 3)) {
		mvwaddch(this->_win, y, x, c);
		return (true);
	}

	return (false);
}
