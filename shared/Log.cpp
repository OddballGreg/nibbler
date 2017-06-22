/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Log.cpp                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghavenga <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/26 20:09:25 by ghavenga          #+#    #+#             */
/*   Updated: 2017/05/26 20:09:42 by ghavenga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Log.hpp"

//Constructors
Log::Log(std::string class_name, std::string function_name, int verbosity)
{
	this->_class     = class_name;
	this->_function  = function_name;
	this->_verbosity = verbosity;
	logger.log_step_in(class_name + "| " + function_name + " Called", verbosity);
}

Log::Log(const Log &obj)
{
	this->_class     = obj._class;
	this->_function  = obj._function;
	this->_verbosity = obj._verbosity;
}

Log::~Log()
{ logger.log_step_out(this->_class + "| " + this->_function + " Completed", this->_verbosity); }

Log &Log::operator =(const Log &obj)
{
	this->_class     = obj._class;
	this->_function  = obj._function;
	this->_verbosity = obj._verbosity;
	return *this;
}

// Setters
void Log::setVerbosity(int verbosity) { this->_verbosity = verbosity; }

// Methods
void Log::log(std::string message, int verbosity)
{ logger.log(this->_class + "| " + this->_function + " -> " + message, verbosity); }

void Log::log_step_in(std::string message, int verbosity) 
{ logger.log_step_in(this->_class + "| " + this->_function + " -> " + message, verbosity); }

void Log::log_step_out(std::string message, int verbosity)
{ logger.log_step_out(this->_class + "| " + this->_function + " -> " + message, verbosity); }

void Log::log(std::string message, int depth_step, int verbosity)
{ logger.log(this->_class + "| " + this->_function + " -> " + message, depth_step, verbosity); }

void Log::log(std::string message, Coord coord, int verbosity)
{ logger.log(this->_class + "| " + this->_function + " -> " + message, coord, verbosity); }

void Log::log(std::string message, Direction direction, int verbosity) 
{ logger.log(this->_class + "| " + this->_function + " -> " + message, direction, verbosity); }

void Log::die(std::string message, int verbosity)                      
{ logger.die(this->_class + "| " + this->_function + " -> " + message, verbosity); }