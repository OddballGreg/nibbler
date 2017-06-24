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
	Log log("Gamestate", "Constructor", CRITICAL);
	_size = Coord(DEFAULT_HEIGHT, DEFAULT_WIDTH);
	_snake = Snake();
	_mode = MODE_PLAY;
	_score = 0;
	_AI = new AI();
	_AI_flag = true;

	resetMap();
	generateObstacles();
	generateFood();
}

GameState::GameState(Coord size) {
	Log log("Gamestate", "Copy Constructor", CRITICAL);
	log.log("Passed Size =", size, CRITICAL);
	_size = size;
	_snake = Snake(Coord(size.getX() / 2 + 2, size.getY() / 2), Direction(WEST));
	_mode = MODE_PLAY;
	_score = 0;
	_AI = new AI();
	_AI_flag = true;

	resetMap();
	generateObstacles();
	generateFood();
}

GameState::GameState(int width, int height) {
	Log log("Gamestate", "Width Height Constructor", CRITICAL);
	log.log("Passed width = " + std::to_string(width), UNIMPORTANT);
	log.log("Passed height = " + std::to_string(height), UNIMPORTANT);
	_size = Coord(width, height);
	_snake = Snake(Coord(width / 2 + 2, height / 2), Direction(WEST));
	_mode = MODE_PLAY;
	_score = 0;
	_AI = new AI();
	_AI_flag = true;

	resetMap();
	generateObstacles();
	generateFood();
}

GameState::~GameState(void) {
	Log log("Gamestate", "Deconstructor", CRITICAL);
	_map.clear();
	delete _AI;
}

/*
** Copying
*/
GameState::GameState(const GameState &obj) {
	Log log("Gamestate", "Copy Constructor", CRITICAL);
	this->_snake = obj._snake;
	this->_map = obj._map;
	this->_food = obj._food;
	this->_size = obj._size;
	this->_mode = obj._mode;
	this->_score = obj._score;
	this->_AI = obj._AI;
	this->_AI_flag = obj._AI_flag;
}

GameState GameState::operator = (const GameState &obj) {
	Log log("Gamestate", "= operator", CRITICAL);
	this->_snake = obj._snake;
	this->_map = obj._map;
	this->_food = obj._food;
	this->_size = obj._size;
	this->_mode = obj._mode;
	this->_score = obj._score;
	this->_AI = obj._AI;
	this->_AI_flag = obj._AI_flag;

	return (*this);
}

/*
** Getters
*/
MAP		GameState::getMap(void) const {
	Log log("Gamestate", "getMap()", UNIMPORTANT);
	return (this->_map);
}

Snake	GameState::getSnake(void) const {
	Log log("Gamestate", "getSnake()", UNIMPORTANT);
	return (this->_snake);
}

Coord	GameState::getSize(void) const {
	Log log("Gamestate", "getSize()", UNIMPORTANT);
	return (this->_size);
}

int		GameState::getWidth(void) const {
	Log log("Gamestate", "getWidth()", UNIMPORTANT);
	return (this->_size.getX());
}

int		GameState::getHeight(void) const {
	Log log("Gamestate", "getHeight()", UNIMPORTANT);
	return (this->_size.getY());
}

Direction	GameState::getSnakeDir(void) const {
	Log log("Gamestate", "getSnakeDir()", CRITICAL);
	return (this->_snake.getDirection());
}

char		GameState::getMode(void) const {
	Log log("Gamestate", "getMode()", UNIMPORTANT);
	return (this->_mode);
}

int			GameState::getScore(void) const {
	Log log("Gamestate", "getScore()", UNIMPORTANT);
	return (this->_score);
}

Coord	GameState::getFood(void) const {
	Log log("Gamestate", "getFood()", UNIMPORTANT);
	return (this->_food);
}

Coord	GameState::getSnakeHeadPos(void) const {
	Log log("Gamestate", "getSnakeHeadPos()", UNIMPORTANT);
	return (this->_snake.getHeadPos());
}

bool	GameState::getAIFlag(void) const {
	Log log("Gamestate", "getAIFlag()", UNIMPORTANT);
	return (this->_AI_flag);
}

/*
** Setters
*/
void	GameState::setSize(Coord size) {
	Log log("Gamestate", "setSize(Coord size)", UNIMPORTANT);
	this->_size = size;
}

void	GameState::setWidth(int width) {
	Log log("Gamestate", "setWidth(int width)", UNIMPORTANT);
	this->_size.setX(width);
}

void	GameState::setHeight(int height) {
	Log log("Gamestate", "setHeight(int height)", UNIMPORTANT);
	this->_size.setY(height);
}

void	GameState::setSnakeDir(char direction) {
	Log log("Gamestate", "setSnakeDir(char)", CRITICAL);
	this->_snake.setDirection(direction);
}

void	GameState::setSnakeDir(Direction direction) {
	Log log("Gamestate", "setSnakeDir(Directiono)", CRITICAL);
	this->_snake.setDirection(direction);
}

void	GameState::setMode(char mode) {
	Log log("Gamestate", "setMode(char mode)", UNIMPORTANT);
	if (this->_mode == MODE_END && (mode == MODE_PLAY || mode == MODE_PAUSE)) {
		resetGame();
		this->_mode = mode;
	}
	else if (mode == MODE_PLAY || mode == MODE_PAUSE || mode == MODE_END)
		this->_mode = mode;
}

void	GameState::setAIFlag(bool flag) {
	this->_AI_flag = flag;
}

void	GameState::setPaused(bool paused) {
	// this->_paused = paused;

	if (this->_mode == MODE_PLAY && paused)
		this->_mode = MODE_PAUSE;
	else if (this->_mode == MODE_PAUSE && !paused)
		this->_mode = MODE_PLAY;
}

/*
** Functions
*/

bool		GameState::runIteration(void) {
	Log log("Gamestate", "runIteration()", CRITICAL);
	if (this->_mode != MODE_PLAY)
		return (false);
	
	if (this->_AI_flag == true)
		this->_AI->run(*this);

	if (!inBounds(this->_food) || this->_map[this->_food.getX()][this->_food.getY()] != MAP_FOOD)
		generateFood();

	moveSnake();

	if ((this->_mode == MODE_PLAY) ? true : false)
		log.log("runIteration() will return true", CRITICAL);
	else
		log.log("runIteration() will return false", CRITICAL);
		
	return ((this->_mode == MODE_PLAY) ? true : false);
}

void		GameState::resetGame(void) {
	Log log("Gamestate", "resetGame()", CRITICAL);
	_map.clear();

	*this = GameState();
}

void		GameState::updateMap(void) {
	resetMap();
	loadSnake();
	loadFood();
	// generateObstacles();
}

bool		GameState::inBounds(Coord pos) const {
	if (pos.getX() < 0 || pos.getY() < 0)
		return (false);
	if (pos.getX() >= this->_size.getX() || pos.getY() >= this->_size.getY())
		return (false);
	return (true);
}

/*
** Private Functions
*/
void		GameState::resetMap(void) {
	Log log("Gamestate", "resetMap()", CRITICAL);
	for (int k = 0; k < this->_size.getY(); k++)
		for (int l = 0; l < this->_size.getX(); l++)
			this->_map[l][k] = MAP_EMPTY;
}

void		GameState::resetSnake(void) {
	Log log("Gamestate", "resetSnake()", CRITICAL);
	this->_snake.resetSnake();
}

void		GameState::resetSnake(Coord head_pos, Direction tail_dir) {
	Log log("Gamestate", "resetSnake()", CRITICAL);
	this->_snake.resetSnake(head_pos, tail_dir);
}

/* Requires other assets to be loaded into the map first */
void		GameState::generateFood(void) {
	Log log("Gamestate", "generateFood()", CRITICAL);

	bool	found = false;
	Coord	pos;
	int		max_runs = 0;

	srand(static_cast<unsigned int>(clock()));
	do {
		pos = Coord(rand() % this->_size.getX(), rand() % this->_size.getY());

		if (this->inBounds(pos) && this->_map[pos.getX()][pos.getY()] == MAP_EMPTY) {
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
}

void		GameState::loadSnake(void) {
	Log log("Gamestate", "loadSnake()", CRITICAL);
	std::list<Part>	body = this->_snake.getBody();
	Coord			pos;

	for (std::list<Part>::iterator k = body.begin(); k != body.end(); k++) {
		pos = k->getPos();
		this->_map[pos.getX()][pos.getY()] = MAP_BODY;
	}
	pos = this->_snake.getHeadPos();
	this->_map[pos.getX()][pos.getY()] = MAP_HEAD;
}

void		GameState::loadFood(void) {
	Log log("Gamestate", "loadFood()", CRITICAL);
	int	c = this->_map[this->_food.getX()][this->_food.getY()];

	if (c == MAP_EMPTY)
		this->_map[this->_food.getX()][this->_food.getY()] = MAP_FOOD;
	else if (c != MAP_FOOD)
		throw std::runtime_error("Food has been incorrectly generated");
}

void		GameState::generateObstacles(void) {
	Log log("Gamestate", "loadObstacles()", CRITICAL);
	Coord	pos;

	while (static_cast<int>(this->_obstacles.size()) < (this->getHeight() * this->getWidth() * 2) / 3)
	{
		srand(static_cast<unsigned int>(time(NULL)));
		pos = Coord(rand() % (this->_size.getX() * this->getWidth()), rand() % (this->_size.getY() * this->getWidth()));
		
		while (this->_map[pos.getX()][pos.getY()] != MAP_EMPTY)
			pos = Coord(rand() % (this->_size.getX() * this->getHeight()), rand() % (this->_size.getY() * this->getHeight()));

		this->_obstacles.push_back(pos);
		this->_map[pos.getX()][pos.getY()] = MAP_OBSTICLE;
	}
}

void		GameState::moveSnake(void) {
	Log log("Gamestate", "moveSnake()", CRITICAL);
	Coord		pos;

	pos = this->_snake.getTailPos();
	this->_map[pos.getX()][pos.getY()] = MAP_EMPTY;
	pos = this->_snake.getHeadPos();
	this->_map[pos.getX()][pos.getY()] = MAP_BODY;

	this->_snake.moveSnake();
	pos = this->_snake.getHeadPos();
	if (pos.getX() < 0 || this->_size.getX() <= pos.getX())
	{
		this->_mode = MODE_END;
		log.log("has moved the snake out of X bounds. Game Was End Set.", AVERAGE);
	}
	else if (pos.getY() < 0 || this->_size.getY() <= pos.getY())
	{
		this->_mode = MODE_END;
		log.log("has moved the snake out of Y bounds. Game Was End Set.", AVERAGE);
	}
	else if (this->_map[pos.getX()][pos.getY()] == MAP_EMPTY)
	{
		this->_map[pos.getX()][pos.getY()] = MAP_HEAD;
		log.log("has succesfully moved.", AVERAGE);
	}
	else if (this->_map[pos.getX()][pos.getY()] == MAP_FOOD) 
	{
		this->_map[pos.getX()][pos.getY()] = MAP_HEAD;
		this->_snake.eat();
		++this->_score;
		generateFood();
		log.log("has succesfully moved and eaten food.", AVERAGE);
	}
	else
	{	
		log.log("map position contents: " + std::to_string(this->_map[pos.getX()][pos.getY()]), CRITICAL);
		this->_mode = MODE_END;
		log.log("met no conditions. Game End Was Set.", CRITICAL);
	}
	log.log("set mode to: " + std::to_string(this->_mode), CRITICAL);
}
