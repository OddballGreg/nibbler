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

Logger::Logger(std::string filename, bool verbose)
{
	this->_logfile = new std::ofstream(filename, std::ofstream::out | std::ofstream::app);
	this->_verbose = verbose;
	this->_depth = 0;
	if (verbose)
	{
		*this->_logfile << "Logger instantiated" << std::endl;
		// std::cout << "Logger instantiated and pointed to " << filename << std::endl;
	}
}

Logger::Logger(const Logger &obj)
{
	this->_logfile = obj._logfile;
	this->_verbose = obj._verbose;
	this->_depth   = obj._depth;
}

Logger::~Logger()
{
	if (this->_verbose)
	{
		*this->_logfile << "Logger deconstructed" << std::endl;
		// std::cout << "Logger deconstructed" << std::endl;
	}
	delete this->_logfile;
}

Logger &Logger::operator =(const Logger &obj)
{
	this->_logfile = obj._logfile;
	this->_verbose = obj._verbose;
	this->_depth   = obj._depth;
	return *this;
}

void Logger::log(std::string message)
{	
	pthread_mutex_lock(&this->_log_lock);
	if (this->_verbose)
	{
		int i = -1;
		while (++i < this->_depth + 1)
			*this->_logfile << "\t";
		*this->_logfile << message << std::endl;
	}
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log_step_in(std::string message)
{	
	pthread_mutex_lock(&this->_log_lock);
	this->_depth += 1;
	if (this->_verbose)
	{
		int i = -1;
		while (++i < this->_depth)
			*this->_logfile << "\t";
		*this->_logfile << message << std::endl;
	}
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log_step_out(std::string message)
{	
	pthread_mutex_lock(&this->_log_lock);
	if (this->_verbose)
	{
		int i = -1;
		while (++i < this->_depth)
			*this->_logfile << "\t";
		*this->_logfile << message << std::endl;
	}
	this->_depth += -1;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log(std::string message, int depth_step)
{	
	pthread_mutex_lock(&this->_log_lock);
	if (depth_step > 0)
		this->_depth += 1;
	if (this->_verbose)
	{
		int i = -1;
		while (++i < this->_depth + 1)
			*this->_logfile << "\t";
		*this->_logfile << message << std::endl;
	}
	if (depth_step < 0)
		this->_depth += -1;
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log(std::string message, Coord coord)
{	
	pthread_mutex_lock(&this->_log_lock);
	if (this->_verbose)
	{
		int i = -1;
		while (++i < this->_depth + 1)
			*this->_logfile << "\t";
		*this->_logfile << message << coord.getX() << " " << coord.getY() << std::endl;
	}
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::log(std::string message, Direction direction)
{	
	pthread_mutex_lock(&this->_log_lock);
	if (this->_verbose)
	{
		int i = -1;
		while (++i < this->_depth + 1)
			*this->_logfile << "\t";
		*this->_logfile << message << " " << direction.getDirectionString() << std::endl;
	}
	pthread_mutex_unlock(&this->_log_lock);
}

void Logger::die(std::string message)
{
	pthread_mutex_lock(&this->_log_lock);
	if (this->_verbose)
		*this->_logfile << message << std::endl;
	pthread_mutex_unlock(&this->_log_lock);
	exit(1);
}