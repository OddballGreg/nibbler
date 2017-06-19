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
	this->_logfile = new std::ofstream(filename);
	this->_verbose = verbose;
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
	return *this;
}

void Logger::log(std::string message)
{	
	if (this->_verbose)
		*this->_logfile << message << std::endl;
}

void Logger::die(std::string message)
{
	if (this->_verbose)
		*this->_logfile << message << std::endl;
	exit(1);
}