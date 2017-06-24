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

# include "../../shared/Logger.hpp"
# include "../../shared/IDisplay.hpp"
# include "../../shared/Logger.hpp"

/* Compile with: -lpthread */

# ifdef NCURSES_FILE

bool		listen = false;
int			lastKeyPress = 0;
bool		paused = false;

# else

extern bool	listen;
extern int	lastKeyPress;
extern bool paused;

# endif

class NcursesWindow : public IDisplay {
public:
	NcursesWindow(void);
	virtual ~NcursesWindow(void);

	NcursesWindow(const NcursesWindow &obj);
	virtual NcursesWindow operator = (const NcursesWindow &obj);

	virtual void			drawMap(MAP map);
	virtual void			drawScore(int score);
	virtual void			drawPause(void);
	virtual void			drawGameOver(int finalScore);

	virtual	void			initWindow(void);
	virtual	void			initWindow(Coord size);
	virtual void			exitWindow(void);
	
	virtual Direction		getDirection(void);
	virtual Coord			getWindowSize(void);
	virtual bool			getPaused(void);

	virtual void			setWindowSize(Coord size);

	// virtual NcursesWindow* 	createObject();
	// virtual void 			destroyObject( NcursesWindow* object );	

private:
	Coord					_size;
	Direction				_direction;
	// MAP					_map;
	bool					_closed = false;

	WINDOW					*_win;
	PANEL					*_panel;

	void    				drawWindowFrame(void);
	void					drawTitle(void);
	bool					drawChar(int y, int x, const int c);
	void					keyListener(void);

};

void						*keyLoop(void *threadID);

#endif
