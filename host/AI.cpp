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
	Coord map_size = gamestate.getSize();
	log.log("Map Size Obtained: ", map_size , CRITICAL);
	MAP map;
	Coord temp;
	int best(-100);
	Coord snake_head = gamestate.getSnakeHeadPos();
	log.log("Snake Head Postion Obtained: ", snake_head, CRITICAL);

	for (int k = 0; k < map_size.getY(); k++)
		for (int l = 0; l < map_size.getX(); l++)
		{
			temp.setX(k); 
			temp.setY(l);
			map[k][l] = static_cast<char>((map_size.getY() * map_size.getX()) - static_cast<char>((gamestate.getFood().distTo(temp))));
		}
	log.log("Map Weighted based on food position: ", gamestate.getFood(), CRITICAL);

	for (int k = snake_head.getY() - 1; k <= snake_head.getY() + 1; k++)
		for (int l = snake_head.getX() - 1; l <= snake_head.getX() + 1; l++)
		{
			log.log("Querying Position " + std::to_string(k) + " " +  std::to_string(l) + " with weight: " + std::to_string(map[k][l]), CRITICAL);
			if (l < 0 || k < 0 || l > map_size.getX() || k > map_size.getY() || (l == snake_head.getX() && k == snake_head.getY()) )
				map[k][l] = -100;
			else if (map[k][l] > best && (gamestate.getMap()[k][l] == 0 || gamestate.getMap()[k][l] == 4))
			{
				temp.setX(l); 
				temp.setY(k);
				best = map[k][l];
				log.log("New best: " + std::to_string(best) + " at: ", temp, CRITICAL);
			}
		}
	log.log("Best coord to move to selected: ", temp, CRITICAL);
	log.log("Current Snake Direction: ", gamestate.getSnakeDir(), CRITICAL);

	char x = static_cast<char>(temp.getX() - snake_head.getX());
	char y = static_cast<char>(temp.getY() - snake_head.getY());
	log.log("dir x: " + std::to_string(x), CRITICAL);
	log.log("dir y: " + std::to_string(y), CRITICAL);
	
	Direction dir;
	if (x > 0 && gamestate.getSnakeDir() != WEST && dir.moveCoord(Coord(snake_head)).getX() > -1 && dir.moveCoord(Coord(snake_head)).getX() < map_size.getX())
		dir = Direction(x, 0);
	else if (x < 0 && gamestate.getSnakeDir() != EAST && dir.moveCoord(Coord(snake_head)).getX() > -1 && dir.moveCoord(Coord(snake_head)).getX() < map_size.getX())
		dir = Direction(x, 0);
	else if (y < 0 && gamestate.getSnakeDir() != NORTH && dir.moveCoord(Coord(snake_head)).getY() > -1 && dir.moveCoord(Coord(snake_head)).getY() < map_size.getY())
		dir = Direction(0, y);
	else if (y > 0 && gamestate.getSnakeDir() != SOUTH && dir.moveCoord(Coord(snake_head)).getY() > -1 && dir.moveCoord(Coord(snake_head)).getY() < map_size.getY())
		dir = Direction(0, y);

	log.log("direction chosen: ", dir, CRITICAL);
	if (dir == gamestate.getSnakeDir() || dir.getDirection() == LOST || dir == gamestate.getSnakeDir().opposite())
		return;
	// temp = snake_head.moveCoord(dir);
	// if (temp.getX())

	// log.log("temp coords: ", temp, CRITICAL);
	// log.log("snake head coords: ", snake_head, CRITICAL);
	// log.log("current direction: ", dir, CRITICAL);
	// if (temp.getX() > snake_head.getX() && 
	// 	gamestate.getSnakeDir() != Direction(WEST) && 
	// 	temp.getX() > 0 && 
	// 	temp.getX() < map_size.getX())
	// {
	// 	log.log("direction chosen: ", dir, CRITICAL);
	// 	dir = Direction(EAST);
	// }
	// else if (temp.getX() < snake_head.getX() && 
	// 	gamestate.getSnakeDir() != Direction(EAST) && 
	// 	temp.getX() > 0 && 
	// 	temp.getX() < map_size.getX())
	// {
	// 	dir = Direction(WEST);
	// 	log.log("direction chosen: ", dir, CRITICAL);
	// }
	// else if (temp.getY() > snake_head.getY() && 
	// 	gamestate.getSnakeDir() != Direction(SOUTH) && 
	// 	temp.getY() > 0 && 
	// 	temp.getY() < map_size.getY())
	// {
	// 	dir = Direction(NORTH);
	// 	log.log("direction chosen: ", dir, CRITICAL);
	// }
	// else if (temp.getY() < snake_head.getY() && 
	// 	gamestate.getSnakeDir() != Direction(NORTH) && 
	// 	temp.getY() > 0 && 
	// 	temp.getY() < map_size.getY())
	// {
	// 	dir = Direction(SOUTH);
	// 	log.log("direction chosen: ", dir, CRITICAL);
	// }
	// log.log("Weighting chosen: " + std::to_string(best), CRITICAL);
	// log.log("Current Snake Direction: ", gamestate.getSnakeDir(), CRITICAL);
	// log.log("Direction assigned: ", dir, CRITICAL);

	// if (dir != Direction(LOST))
		gamestate.setSnakeDir(dir);
	log.log("Current Snake Direction after setting: ", gamestate.getSnakeDir(), CRITICAL);
}


