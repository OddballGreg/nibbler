/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Direction.cpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/16 14:13:09 by khansman          #+#    #+#             */
/*   Updated: 2017/06/16 14:13:10 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Direction.hpp"

/*
** Constructors and Destructors
*/
Direction::Direction(void): _x(0), _y(0) {
	//
}

Direction::Direction(char x, char y) {
	if (x > 1)
		x = 1;
	else if (x < -1)
		x = -1;
	_x = x;

	if (y > 1)
		y = 1;
	else if (y < -1)
		_y = -1;
	_y = y;
}

Direction::Direction(char direction) {
	setDirection(direction);
}

Direction::~Direction(void) {
	//
}

/*
** Copying
*/
Direction::Direction(const Direction &obj) {
	this->_x = obj._x;
	this->_y = obj._y;
}

Direction Direction::operator = (const Direction &obj) {
	this->_x = obj._x;
	this->_y = obj._y;

	return (*this);
}

/*
** Getters
*/
char	Direction::getX(void) const {
	return (this->_x);
}

char	Direction::getY(void) const {
	return (this->_y);
}

char	Direction::getDirection(void) const {
	if (this->_x == 0 && this->_y == 1)
		return (NORTH);
	if (this->_x == 1 && this->_y == 0)
		return (EAST);
	if (this->_x == 0 && this->_y == -1)
		return (SOUTH);
	if (this->_x == -1 && this->_y == 0)
		return (WEST);

	if (this->_x == -1 && this->_y == -1)
		return (SOUTH_WEST);
	if (this->_x == 1 && this->_y == -1)
		return (SOUTH_EAST);
	if (this->_x == -1 && this->_y == 1)
		return (NORTH_WEST);
	if (this->_x == 1 && this->_y == 1)
		return (NORTH_EAST);

	return (LOST);
}

std::string Direction::getDirectionString(void) const {
	if (this->_x == 0 && this->_y == 1)
		return ("NORTH");
	if (this->_x == 1 && this->_y == 0)
		return ("EAST");
	if (this->_x == 0 && this->_y == -1)
		return ("SOUTH");
	if (this->_x == -1 && this->_y == 0)
		return ("WEST");

	if (this->_x == -1 && this->_y == -1)
		return ("SOUTH_WEST");
	if (this->_x == 1 && this->_y == -1)
		return ("SOUTH_EAST");
	if (this->_x == -1 && this->_y == 1)
		return ("NORTH_WEST");
	if (this->_x == 1 && this->_y == 1)
		return ("NORTH_EAST");

	return ("LOST");
}

/*
** Setters
*/
void	Direction::setX(char x) {
	if (-1 <= x && x <= 1)
		this->_x = x;
	else
		x = (x > 0) ? 1 : -1;
}

void	Direction::setY(char y) {
	if (-1 <= y && y <= 1)
		this->_y = y;
	else
		y = (y > 0) ? 1 : -1;
}

void	Direction::setDirection(char direction) {
	switch (direction) {
		case NORTH :
			_x = 0;
			_y = 1;
			break;
		case EAST :
			_x = 1;
			_y = 0;
			break;
		case SOUTH :
			_x = 0;
			_y = -1;
			break;
		case WEST :
			_x = -1;
			_y = 0;
			break;
		case NORTH_EAST :
			_x = 1;
			_y = 1;
			break;
		case NORTH_WEST :
			_x = -1;
			_y = 1;
			break;
		case SOUTH_EAST :
			_x = 1;
			_y = -1;
			break;
		case SOUTH_WEST :
			_x = -1;
			_y = -1;
			break;
		default :
			_x = 0;
			_y = 0;
	}
}

/*
** Operators
*/

bool Direction::operator != (const Direction &obj) {
	return  (this->_x != obj._x && this->_y != obj._y);
}

bool Direction::operator == (const Direction &obj) {
	return (this->_x == obj._x && this->_y == obj._y);
}

/*
** Functions
*/
Coord	Direction::moveCoord(Coord coord) const {
	if (this->_x == RIGHT)
		coord.incX();
	else if (this->_x == LEFT)
		coord.decX();
	
	if (this->_y == UP)
		coord.incY();
	else if (this->_y == DOWN)
		coord.decY();

	return (coord);
}

Direction	Direction::opposite(void) const {
	if (this->_x == 0 && this->_y == 1)
		return (Direction(SOUTH));
	if (this->_x == 1 && this->_y == 0)
		return (Direction(WEST));
	if (this->_x == 0 && this->_y == -1)
		return (Direction(NORTH));
	if (this->_x == -1 && this->_y == 0)
		return (Direction(EAST));

	if (this->_x == 1 && this->_y == 1)
		return (Direction(NORTH_EAST));
	if (this->_x == -1 && this->_y == 1)
		return (Direction(NORTH_WEST));
	if (this->_x == 1 && this->_y == -1)
		return (Direction(SOUTH_EAST));
	if (this->_x == -1 && this->_y == -1)
		return (Direction(SOUTH_WEST));
	
	return (Direction(LOST));
}
