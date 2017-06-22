/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GameState.hpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/16 17:29:39 by khansman          #+#    #+#             */
/*   Updated: 2017/06/16 17:29:40 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GAMESTATE_HPP
# define GAMESTATE_HPP

# include <iostream>
# include <map>
# include <time.h>
# include <sys/time.h>

# include "../shared/Coord.hpp"
# include "../shared/Log.hpp"
# include "Snake.hpp"
# include "AI.hpp"

# define DEFAULT_HEIGHT	20
# define DEFAULT_WIDTH	20

# ifndef MAP_EMPTY
#  define MAP_EMPTY		0
#  define MAP_OBSTICLE	1
#  define MAP_HEAD		2
#  define MAP_BODY		3
#  define MAP_FOOD		4
# endif

# define MODE_PAUSE		0
# define MODE_PLAY		1
# define MODE_END		2

// # define DELAY 120000
# define DELAY 1

# ifndef MAP
#  define MAP std::map<int, std::map<int, char> >
# endif

class AI;

class GameState {
public:
	GameState(void);
	GameState(Coord size);
	GameState(int width, int height);
	~GameState(void);

	GameState(const GameState &obj);
	GameState operator = (const GameState &obj);

	MAP			getMap(void) const;
	Snake		getSnake(void) const;
	Coord		getSize(void) const;
	int			getWidth(void) const;
	int			getHeight(void) const;
	Direction	getSnakeDir(void) const;
	char		getMode(void) const;
	int			getScore(void) const;
	Coord		getFood(void) const;
	Coord		getSnakeHeadPos(void) const;
	bool		getAIFlag(void) const;

	void		setSize(Coord size);
	void		setWidth(int width);
	void		setHeight(int height);
	void		setSnakeDir(char direction);
	void		setSnakeDir(Direction direction);
	void		setMode(char mode);

	bool		runIteration(void);
	void		resetGame(void);
	void		updateMap(void);

private:
	void		resetMap(void);
	void		resetSnake(void);
	void		generateFood(void);
	void		loadSnake(void);
	void		loadFood(void);
	void		moveSnake(void);

	Snake		_snake;
	MAP			_map;
	Coord		_food;
	char		_mode;
	int			_score;
	bool		_AI_flag;
	AI			*_AI;

	Coord		_size;

};

#endif
