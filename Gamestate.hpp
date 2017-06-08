#ifndef GAMESTATE_HPP
# define GAMESTATE_HPP

#include <iostream>

void puts(std::string message);

class Gamestate
{
public:
	//Constructors
	Gamestate(unsigned int height, unsigned int width);
	Gamestate(Gamestate &obj);
	~Gamestate();

	//Operators
	// 										DONT FORGET TO CREATE THE ASSIGNMENT OPERATOR YOU'RE NEVER GOING TO USE

	//Methods
	int 			run_frame();
	unsigned int getHeight();
	unsigned int getWidth();

protected:
	char 			**_map;
	unsigned int 	_height;
	unsigned int 	_width;
};

#endif