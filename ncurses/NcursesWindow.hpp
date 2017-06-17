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
# include <panel.h>
# include <ncurses.h>

# include "../shared/IDisplay.hpp"

class NcursesWindow : public IDisplay{
public:
	NcursesWindow(void);
	virtual ~NcursesWindow(void);

	NcursesWindow(const NcursesWindow &obj);
	virtual NcursesWindow operator = (const NcursesWindow &obj);

	virtual void		drawMap(MAP map);
	virtual void		drawScore(int score);
	virtual void		drawPause(void);
	virtual void		drawGameOver(void);

	virtual	void		initWindow(void);
	virtual void		exitWindow(void);

	virtual Direction	getDirection(void);
	virtual int			getWindowSize(void);

private:
	Coord				_size;
	Direction			_direction;
	MAP					_map;

	void    			drawWindowFrame(void);
	void				drawTitle(void);

};

#endif
