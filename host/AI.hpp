/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   AI.hpp                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghavenga <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/16 14:09:31 by ghavenga          #+#    #+#             */
/*   Updated: 2017/06/16 14:09:32 by ghavenga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef AI_HPP
# define AI_HPP

# include "../shared/Coord.hpp"
# include "../shared/Direction.hpp"
# include "../shared/Log.hpp"
# include "GameState.hpp"

class GameState;

class AI {
public:
	// Constructors
	AI(void);
	~AI(void);

	AI(const AI &obj);
	AI operator = (const AI &obj);

	//Methods
	void run(GameState &gamestate);

private:
	bool _run;

	Direction	moveSnake(GameState &gamestate, int x, int y);

};

#endif

