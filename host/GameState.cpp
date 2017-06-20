/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GameState.cpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/16 17:29:43 by khansman          #+#    #+#             */
/*   Updated: 2017/06/16 17:29:47 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "GameState.hpp"

/*
** Constructors and Destructors
*/
GameState::GameState(void) {
	logger.log_step_in("Gamestate| Constructor Called");
	_size = Coord(DEFAULT_HEIGHT, DEFAULT_WIDTH);
	// _snake = Snake();
	_mode = MODE_PLAY;
	_score = 0;

	resetMap();
	generateFood();
	logger.log_step_out("Gamestate| Constructor Completed");
}

GameState::GameState(Coord size) {
	logger.log_step_in("Gamestate| Coord Constructor Called");
	logger.log("Gamestate| Passed Size =", size);
	_size = size;
	_snake = Snake();
	_mode = MODE_PLAY;
	_score = 0;

	resetMap();
	generateFood();
	logger.log_step_out("Gamestate| Coord Constructor Completed");
}

GameState::GameState(int width, int height) {
	logger.log_step_in("Gamestate| Height Width Constructor Called");
	logger.log("Gamestate| Passed width = " + std::to_string(width));
	logger.log("Gamestate| Passed height = " + std::to_string(height));
	_size = Coord(width, height);
	_snake = Snake();
	_mode = MODE_PLAY;
	_score = 0;

	resetMap();
	generateFood();
	logger.log_step_out("Gamestate| Height Width Constructor Completed");
}

GameState::~GameState(void) {
	logger.log_step_in("Gamestate| Deconstructor Called");
	_map.clear();
	logger.log_step_out("Gamestate| Deconstructor Completed");
}

/*
** Copying
*/
GameState::GameState(const GameState &obj) {
	logger.log_step_in("Gamestate| Copy Constructor Called");
	this->_snake = obj._snake;
	this->_map = obj._map;
	this->_food = obj._food;
	this->_size = obj._size;
	this->_mode = obj._mode;
	this->_score = obj._score;
	logger.log_step_out("Gamestate| Copy Constructor Completed");
}

GameState GameState::operator = (const GameState &obj) {
	logger.log_step_in("Gamestate| = Operator Called");
	this->_snake = obj._snake;
	this->_map = obj._map;
	this->_food = obj._food;
	this->_size = obj._size;
	this->_mode = obj._mode;
	this->_score = obj._score;

	logger.log_step_out("Gamestate| = Operator Completed");
	return (*this);
}

/*
** Getters
*/
MAP		GameState::getMap(void) const {
	logger.log("Gamestate| getMap() called");
	return (this->_map);
}

Snake	GameState::getSnake(void) const {
	logger.log("Gamestate| getSnake() called");
	return (this->_snake);
}

Coord	GameState::getSize(void) const {
	logger.log("Gamestate| getSize() called");
	return (this->_size);
}

int		GameState::getWidth(void) const {
	logger.log("Gamestate| getWidth() called");
	return (this->_size.getX());
}

int		GameState::getHeight(void) const {
	logger.log("Gamestate| getHeight() called");
	return (this->_size.getY());
}

Direction	GameState::getSnakeDir(void) const {
	logger.log("Gamestate| getSnakeDir() called");
	return (this->_snake.getDirection());
}

char		GameState::getMode(void) const {
	logger.log("Gamestate| getMode() called");
	return (this->_mode);
}

int			GameState::getScore(void) const {
	logger.log("Gamestate| getScore() called");
	return (this->_score);
}

/*
** Setters
*/
void	GameState::setSize(Coord size) {
	logger.log("Gamestate| setSize() called");
	this->_size = size;
}

void	GameState::setWidth(int width) {
	logger.log("Gamestate| setWidth() called");
	this->_size.setX(width);
}

void	GameState::setHeight(int height) {
	logger.log("Gamestate| setHeight() called");
	this->_size.setY(height);
}
void	GameState::setSnakeDir(char direction) {
	logger.log("Gamestate| setSnakeDir() called");
	this->_snake.setDirection(direction);
}

void	GameState::setMode(char mode) {
	logger.log_step_in("Gamestate| setMode() called");
	if (this->_mode == MODE_END && (mode == MODE_PLAY || mode == MODE_PAUSE)) {
		resetGame();
		this->_mode = mode;
	}
	else if (mode == MODE_PLAY || mode == MODE_PAUSE || mode == MODE_END)
		this->_mode = mode;
	logger.log_step_out("Gamestate| setMode() completed");
}

/*
** Functions
*/

bool		GameState::runIteration(void) {
	logger.log_step_in("Gamestate| runIteration() called");
	if (this->_mode != MODE_PLAY)
		return (false);
	
	moveSnake();

	logger.log_step_out("Gamestate| runIteration() completed");
	return ((this->_mode == MODE_PLAY) ? true : false);
}

void		GameState::resetGame(void) {
	logger.log_step_in("Gamestate| resetGame() called");
	_map.clear();

	*this = GameState();
	logger.log_step_out("Gamestate| resetGame() completed");
}

/*
** Private Functions
*/
void		GameState::resetMap(void) {
	logger.log_step_in("Gamestate| resetMap() called");
	for (int k = 0; k < this->_size.getY(); k++)
		for (int l = 0; l < this->_size.getX(); l++)
			this->_map[l][k] = MAP_EMPTY;
	logger.log_step_out("Gamestate| resetMap() completed");
}

void		GameState::resetSnake(void) {
	logger.log_step_in("Gamestate| resetSnake() called");
	this->_snake.resetSnake();
	logger.log_step_out("Gamestate| resetSnake() completed");
}

/* Requires other assets to be loaded into the map first */
void		GameState::generateFood(void) {
	logger.log_step_in("Gamestate| generateFood() called");
	bool	found = false;
	Coord	pos;
	int		max_runs = 0;

	srand(static_cast<unsigned int>(clock()));
	do {
		pos = Coord(rand() % this->_size.getX(), rand() % this->_size.getY());

		if (this->_map[pos.getX()][pos.getY()] == MAP_EMPTY) {
			found = true;
			this->_food = pos;
		}
	} while (!found && ++max_runs < 100);

	if (!found)
	{
		for (int k = 0; k < this->_size.getY(); k++)
			for (int l = 0; l < this->_size.getX(); l++)
				if (this->_map[l][k] == MAP_EMPTY) {
					found = true;
					this->_food = Coord(l, k);
					goto food_found;
				}
	}
food_found:
	if (!found)
		this->_mode = MODE_END;
	else
		loadFood();
	logger.log_step_out("Gamestate| generateFood() completed");
}

void		GameState::loadSnake(void) {
	logger.log_step_in("Gamestate| loadSnake() called");
	std::list<Part>	body = this->_snake.getBody();
	Coord			pos;

	for (std::list<Part>::iterator k = body.begin(); k != body.end(); k++) {
		pos = k->getPos();
		this->_map[pos.getX()][pos.getY()] = MAP_BODY;
	}
	pos = this->_snake.getHeadPos();
	this->_map[pos.getX()][pos.getY()] = MAP_HEAD;
	logger.log_step_out("Gamestate| loadSnake() completed");
}

void		GameState::loadFood(void) {
	logger.log_step_in("Gamestate| loadFood() called");
	char	c = this->_map[this->_food.getX()][this->_food.getY()];

	if (c == MAP_EMPTY)
		this->_map[this->_food.getX()][this->_food.getY()] = MAP_FOOD;
	else if (c != MAP_FOOD)
		throw std::runtime_error("Food has been incorrectly generated");
	logger.log_step_out("Gamestate| loadFood() completed");
}

void		GameState::moveSnake(void) {
	logger.log_step_in("Gamestate| moveSnake() called");
	Coord		pos;

	pos = this->_snake.getTailPos();
	this->_map[pos.getX()][pos.getY()] = MAP_EMPTY;
	pos = this->_snake.getHeadPos();
	this->_map[pos.getX()][pos.getY()] = MAP_BODY;

	this->_snake.moveSnake();
	pos = this->_snake.getHeadPos();
	if (pos.getX() < 0 || this->_size.getX() >= pos.getX())
		this->_mode = MODE_END;
	else if (pos.getY() < 0 || this->_size.getY() >= pos.getY())
		this->_mode = MODE_END;
	else if (this->_map[pos.getX()][pos.getY()] == MAP_EMPTY)
		this->_map[pos.getX()][pos.getY()] = MAP_HEAD;
	else if (this->_map[pos.getX()][pos.getY()] == MAP_FOOD) {
		this->_map[pos.getX()][pos.getY()] = MAP_HEAD;
		this->_snake.eat();
		++this->_score;
		generateFood();
	}
	else
		this->_mode = MODE_END;
	logger.log_step_out("Gamestate| moveSnake() completed");
}
