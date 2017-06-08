#ifndef GAMESTATE_HPP
# define GAMESTATE_HPP

class Gamestate
{
public:
	//Constructors
	Gamestate();
	Gamestate(const Gamestate &obj);
	~Gamestate();

	//Operators
	// 										DONT FORGET TO CREATE THE ASSIGNMENT OPERATOR YOU'RE NEVER GOING TO USE

	//Methods
	int 			run_frame();

protected:
	char 			**_map;
	unsigned int 	_height;
	unsigned int 	_width;
};

#endif