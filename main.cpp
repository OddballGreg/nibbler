#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include "main.hpp"


/**
 * Loads the library depending on what is chosen.
 */
int main( void )
{

	std::string	input;
	int			run(1);

	// Asks the user for input
	std::cout << "\n\n1: VTK" << std::endl;
	std::cout << "2: OpenGL" << std::endl;
	std::cout << "3: WebGL" << std::endl;
	std::cout << "Please select a library from the list:" << std::endl;

	std::cin >> input;

	//Reads from a file depending on input
	if ( input.compare("1") == 0 ) {
		// Load the VTK library
	} else if ( input.compare("2") == 0 ) {
		// Load the OpenGL library
	} else if ( input.compare("3") == 0 ) {
		// Load the WebGL library
	} else if ( (input.compare("exit") == 0) || (input.compare("quit") == 0) || \
	(input.compare("0") == 0) ) {
		run = 0;
	} else {
		std::cout << "You have entered an invalid command. Please try again." << std::endl;
	}

	int state_code = 0;
	Gamestate gamestate();

	while (state_code != -1)
	{
		state_code = gamestate.run_frame();

	}
}
