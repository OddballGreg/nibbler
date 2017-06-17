/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   NcursesWindow.hpp                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: khansman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/17 11:35:35 by khansman          #+#    #+#             */
/*   Updated: 2017/06/17 11:35:37 by khansman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef NCURSES_WINDOW_HPP
 # define NCURSES_WINDOW_HPP

# include <iostream>
# include <sstream>
# include <panel.h>
# include <ncurses.h>
# include <pthread.h>

# include "../shared/IDisplay.hpp"

/* Compile with: -lpthread */

class NcursesWindow : public IDisplay {
public:
	NcursesWindow(void);
	virtual ~NcursesWindow(void);

	NcursesWindow(const NcursesWindow &obj);
	virtual NcursesWindow operator = (const NcursesWindow &obj);

	virtual void		drawMap(MAP map);
	virtual void		drawScore(int score);
	virtual void		drawPause(void);
	virtual void		drawGameOver(int finalScore);

	virtual	void		initWindow(void);
	virtual void		exitWindow(void);

	virtual Direction	getDirection(void);
	virtual Coord		getWindowSize(void);

private:
	bool				_listen;
	Coord				_size;
	Direction			_direction;
	// MAP					_map;
	
	WINDOW				*_win;
	PANEL				*_panel;

	void    			drawWindowFrame(void);
	void				drawTitle(void);
	bool				drawChar(int y, int x, const int c);
	void				keyLoop(void *threadID);
	void				keyListener(void);
};

#endif
