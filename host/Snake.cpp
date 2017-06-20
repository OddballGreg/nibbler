/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Snake.cpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/16 14:09:40 by khansman          #+#    #+#             */
/*   Updated: 2017/06/16 14:09:41 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Snake.hpp"

/*
** Constructors and Destructors
*/
Snake::Snake(void) {
	logger.log_step_in("Snake| Constructor Called");
	_direction = Direction(EAST);
	Part part = Part(0, 0);

	for (int k = 0; k < DEFAULT_SNAKE_LENGTH; k++) {
		_body.push_front(part);
		logger.log("Snake| coordinate moved to: ", _direction.moveCoord(part.getPos()));
		part = _direction.moveCoord(part.getPos());
	}
	logger.log_step_out("Snake| Constructor Completed");
}

Snake::Snake(Coord head, Direction tail) {
	logger.log_step_in("Snake| Coord Direction Constructor Called");
	_direction = tail.opposite();

	for (int k = 0; k < DEFAULT_SNAKE_LENGTH; k++) {
		_body.push_back(head);
		head = tail.moveCoord(head);
	}
	logger.log_step_out("Snake| Coord Direction Constructor Completed");
}

Snake::~Snake(void) {
	logger.log_step_in("Snake| Deconstructor Called");
	_body.clear();
	logger.log_step_out("Snake| Deconstructor Completed");
}

/*
** Copying
*/
Snake::Snake(const Snake &obj) {
	logger.log_step_in("Snake| Deconstructor Called");
	for (std::list<Part>::iterator it = obj.getBody().begin(); it != obj.getBody().end(); ++it)
		this->_body.push_back(*it);
	this->_direction = _direction;
	logger.log_step_out("Snake| Deconstructor Completed");
}

Snake Snake::operator = (const Snake &obj) {
	logger.log_step_in("Snake| = operator Called");
	for (std::list<Part>::iterator it = obj.getBody().begin(); it != obj.getBody().end(); ++it)
		this->_body.push_back(*it);
	this->_direction = _direction;

	return (*this);
	logger.log_step_out("Snake| = operator Completed");
}

/*
** Getters
*/
std::list<Part>		Snake::getBody(void) const {
	logger.log("Snake| getBody() Called");
	return (this->_body);
}

Direction			Snake::getDirection(void) const {
	logger.log("Snake| getDirection() Called");
	return (this->_direction);
}

/*
** Setters
*/
void				Snake::setDirection(Direction dir) {
	logger.log("Snake| setDirection(Direction) Called");
	this->_direction = dir;
}

void				Snake::setDirection(char dir) {
	logger.log("Snake| setDirection(char) Called");
	this->_direction = Direction(dir);
}

/*
** Display
*/
std::ostream& operator << (std::ostream &o, const Snake &s) {
	o << "<Snake>";//temp
	(void)s;

	return (o);
}

/*
** Functions
*/
void				Snake::moveSnake(void) {
	logger.log_step_in("Snake| moveSnake() Called");
	Part	head = this->_direction.moveCoord(this->_body.front().getPos());

	this->_body.push_front(head);
	if (!this->_body.back().getEaten())
		this->_body.pop_back();
	else
		this->_body.back().setEaten(false);
	logger.log_step_out("Snake| moveSnake() Completed");
}

void				Snake::eat(void) {
	logger.log_step_in("Snake| eat() Called");
	this->_body.front().setEaten(true);
	logger.log_step_out("Snake| eat() Completed");
}

Coord				Snake::getHeadPos(void) const {
	logger.log("Snake| getHeadPos() Called");
	return (this->_body.front().getPos());
}

Coord				Snake::getTailPos(void) const {
	logger.log("Snake| getTailPos() Called");
	return (this->_body.back().getPos());
}

void				Snake::resetSnake(void) {
	logger.log_step_in("Snake| resetSnake() Called");
	this->_body.clear();
	*this = Snake();
	logger.log_step_out("Snake| resetSnake() Completed");
}

void				Snake::resetSnake(Coord head, Direction tail) {
	logger.log_step_in("Snake| resetSnake(Coord Direction) Called");
	this->_body.clear();
	*this = Snake(head, tail);
	logger.log_step_out("Snake| resetSnake(Coord Direction) Completed");
}
