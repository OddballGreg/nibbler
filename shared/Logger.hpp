/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Logger.hpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghavenga <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/26 20:09:52 by ghavenga          #+#    #+#             */
/*   Updated: 2017/05/26 20:14:43 by ghavenga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LOGGER_HPP
# define LOGGER_HPP

# include <iostream>
# include <fstream>
# include <pthread.h>

# include "Direction.hpp"
# include "Coord.hpp"

class Logger
{
	public:
		// Constructors & Destructors
		Logger(std::string logfile, bool verbose);
		Logger(const Logger &obj);
		~Logger();

		// Operators Overloads
		Logger& operator =(const Logger &obj);
		
		// Member Methods
		void log(std::string message);
		void log(std::string message, int depth_step);
		void log(std::string message, Coord coord);
		void log(std::string message, Direction direction);
		void die(std::string message);

	private:
		pthread_mutex_t _log_lock = PTHREAD_MUTEX_INITIALIZER;
		bool _verbose;
		int  _depth;
		std::ofstream* _logfile;
};

# ifdef LOGGER_GLOBAL

Logger		logger("nibbler_log.txt", true);

# else

extern Logger	logger;

# endif

#endif
