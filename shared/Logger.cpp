/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Logger.cpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghavenga <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/26 20:09:25 by ghavenga          #+#    #+#             */
/*   Updated: 2017/05/26 20:09:42 by ghavenga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#define  LOGGER_GLOBAL
#include "Logger.hpp"

Logger::Logger(std::string filename, int verbosity)
{
	this->_logfile = new std::ofstream(filename, std::ofstream::out | std::ofstream::app);
	this->_verbosity = verbosity;
	this->_depth = 0;
	if (this->_verbosity >= UNIMPORTANT)
		*this->_logfile << "Logger| Instantiated" << std::endl;
}

Logger::Logger(const Logger &obj)
{
	this->_logfile = obj._logfile;
	this->_verbosity = obj._verbosity;
	this->_depth   = obj._depth;
}

Logger::~Logger()
{
	if (this->_verbosity >= UNIMPORTANT)
		*this->_logfile << "Logger| Deconstructed" << std::endl;
	delete this->_logfile;
}

Logger &Logger::operator =(const Logger &obj)
{
	this->_logfile = obj._logfile;
	this->_verbosity = obj._verbosity;
	this->_depth   = obj._depth;
	return *this;
}

void Logger::log(std::string message, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	int i = -1;
	while (++i < this->_depth + 1)
		*this->_logfile << "\t";
	*this->_logfile << message << std::endl;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log_step_in(std::string message, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	this->_depth += 1;
	int i = -1;
	while (++i < this->_depth)
		*this->_logfile << "\t";
	*this->_logfile << message << std::endl;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log_step_out(std::string message, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	int i = -1;
	while (++i < this->_depth)
		*this->_logfile << "\t";
	*this->_logfile << message << std::endl;
	this->_depth += -1;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log(std::string message, int depth_step, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	if (depth_step > 0)
		this->_depth += 1;
	int i = -1;
	while (++i < this->_depth + 1)
		*this->_logfile << "\t";
	*this->_logfile << message << std::endl;
	if (depth_step < 0)
		this->_depth += -1;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log(std::string message, Coord coord, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	int i = -1;
	while (++i < this->_depth + 1)
		*this->_logfile << "\t";
	*this->_logfile << message << coord.getX() << " " << coord.getY() << std::endl;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log(std::string message, Direction direction, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	int i = -1;
	while (++i < this->_depth + 1)
		*this->_logfile << "\t";
	*this->_logfile << message << " " << direction.getDirectionString() << std::endl;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::die(std::string message, int verbosity)
{	
	if (verbosity > this->_verbosity)
		return;
	pthread_mutex_lock(&this->_log_lock);
	*this->_logfile << message << std::endl;
	pthread_mutex_unlock(&this->_log_lock);
	exit(1);
}