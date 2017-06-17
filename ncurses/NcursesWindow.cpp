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
	//
}

NcursesWindow::~NcursesWindow(void) {
	//
}

/*
** Copying
*/
NcursesWindow::NcursesWindow(const NcursesWindow &obj) {
	//
}

NcursesWindow NcursesWindow::operator = (const NcursesWindow &obj) {
	//
}

/*
** Draw Functions
*/
void		NcursesWindow::drawMap(MAP map) {
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
