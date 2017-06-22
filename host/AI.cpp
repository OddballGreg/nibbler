/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   AI.cpp                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghavenga <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/16 14:09:40 by ghavenga          #+#    #+#             */
/*   Updated: 2017/06/16 14:09:41 by ghavenga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "AI.hpp"

/*
** Constructors and Destructors
*/
AI::AI(void) {
	Log log("AI", "Constructor", AVERAGE);
	_run = true;
}

AI::~AI(void) {
	Log log("AI", "Deconstructor", AVERAGE);
}

/*
** Copying
*/
AI::AI(const AI &obj) {
	Log log("AI", "Copy Constructor", UNIMPORTANT);
	if (obj._run)
		log.log("Copying running AI.", NONE);
}

AI AI::operator = (const AI &obj) {
	Log log("AI", "= operator", UNIMPORTANT);
	if (obj._run)
		log.log("Assigning running AI.", NONE);
	return (*this);
}

// Methods
void		AI::run(GameState &gamestate) {
	Log log("AI", "run()", CRITICAL);
	Coord temp;
	Coord snake_head = gamestate.getSnakeHeadPos();

	log.log("Best coord to move to selected: ", temp, CRITICAL);
	log.log("Current Snake Direction: ", gamestate.getSnakeDir(), CRITICAL);

	Direction dir = moveSnake(gamestate, gamestate.getFood().getX() - snake_head.getX(), gamestate.getFood().getY() - snake_head.getY());
	Direction temp_dir;
	char map_content = gamestate.getMap()[dir.moveCoord(snake_head).getX()][dir.moveCoord(snake_head).getY()];
	if (map_content != MAP_EMPTY && map_content != MAP_FOOD) {
		Direction	a = gamestate.getSnakeDir();
		Direction	b;
		Direction	c;
		Coord		pos;

		a.getTangent(&b, &c);

		pos = c.moveCoord(gamestate.getSnakeHeadPos());
		map_content = gamestate.getMap()[pos.getX()][pos.getY()];
		if (map_content == MAP_EMPTY || map_content == MAP_FOOD) {
			dir = c;
		}
		else {
			pos = b.moveCoord(gamestate.getSnakeHeadPos());
			map_content = gamestate.getMap()[pos.getX()][pos.getY()];

			if (map_content == MAP_EMPTY || map_content == MAP_FOOD) {
				dir = b;
			}
			else {
				pos = a.moveCoord(gamestate.getSnakeHeadPos());
				map_content = gamestate.getMap()[pos.getX()][pos.getY()];

				if (map_content == MAP_EMPTY || map_content == MAP_FOOD)
					dir = a;
				else
					dir = Direction(LOST);
			}
		}
	}

	log.log("direction chosen: ", dir, CRITICAL);
	if (dir == gamestate.getSnakeDir() || dir.getDirection() == LOST || dir == gamestate.getSnakeDir().opposite())
		return;

	gamestate.setSnakeDir(dir);
	log.log("Current Snake Direction after setting: ", gamestate.getSnakeDir(), CRITICAL);
}

/*
** Private
*/
Direction	AI::moveSnake(GameState &gamestate, int delta_x, int delta_y) {
	static	Direction	dir;
	char				tmp = 0;

	if (dir != LOST && dir.getDirection() <= WEST && dir != gamestate.getSnakeDir().opposite()) {
			tmp = dir.getDirection();
			dir = Direction(LOST);
			return (Direction(tmp));
	}
	if (delta_x > 1)
		delta_x = 1;
	else if (delta_x < -1)
		delta_x = -1;
	if (delta_y > 1)
		delta_y = 1;
	else if (delta_y < -1)
		delta_y = -1;
	dir = Direction(static_cast<char>(delta_x), static_cast<char>(delta_y));

	if (dir == gamestate.getSnakeDir().opposite()) {
		Direction	dir1;
		Direction	dir2;
		Coord		pos;

		dir.getTangent(&dir1, &dir2);
		pos = dir1.moveCoord(gamestate.getSnakeHeadPos());
		if (tmp == MAP_EMPTY || tmp == MAP_FOOD)
			return (dir1);
		pos = dir2.moveCoord(gamestate.getSnakeHeadPos());
		if (tmp == MAP_EMPTY || tmp == MAP_FOOD)
			return (dir2);
	}

	if (dir.getDirection() <= WEST) {
		tmp = dir.getDirection();
		dir = Direction(LOST);
		return (Direction(tmp));
	}
	else {
		Direction	dir1;
		Direction	dir2;
		Coord		pos;

		dir.getAdjacent(&dir1, &dir2);
		pos = dir1.moveCoord(gamestate.getSnakeHeadPos());
		tmp = gamestate.getMap()[pos.getX()][pos.getY()];
		if (tmp == MAP_EMPTY || tmp == MAP_FOOD) {
			dir = dir2;
			return (dir1);
		}
		pos = dir2.moveCoord(gamestate.getSnakeHeadPos());
		tmp = gamestate.getMap()[pos.getX()][pos.getY()];
		if (tmp == MAP_EMPTY || tmp == MAP_FOOD){
			dir = dir1;
			return (dir2);
		}
	}

	return Direction(LOST);
}
