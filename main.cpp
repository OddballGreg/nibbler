#include "main.hpp"

extern "C" {
	#include <dlfcn.h>
}

static void		runlib(const int&	i) {

	std::vector<std::string>				libraries;
	std::vector<std::string>::iterator		j;

	std::ifstream				read;

	j = libraries.begin();

	read.open("./lib/lib.txt");
	try {
		read.is_open();
		std::cout << "File ./lib/lib.txt is open." << std::endl;
	} catch (...) {
		std::cout << "Error opening file ./lib/lib.txt" << std::endl;	 
	}

	for (int k=0; k<3; k++) {
		read.getline(libraries[j], 256);
		std::cout << "Reading libraries from ./lib: " << libraries[j] << std::endl;
		j.next();
	}

	read.close();
	
	// RTLD_NOW: Performall dynamic linking immediately, so if there are
	// undefined symbols, there will be an error here and now. That is,
	// this will cause a bad library to to load at all, rather than get
	// confused somewhere down the line

	// RTLD_LOCAL: Do not add symbols exported from this library to the
	// global symbol namespace. the only way to get at bindings is by
	// using the handle for this library.

	//void	*libhandle = dlopen(fileName, RTLD_NOW | RTLD_LOCAL);
	//if (libHandle == NULL) {
	//	std::cout << "Falied loading library: " << libraries[0] << dlerror() << std::endl;
	//	return;
	//}

	std::cout << i << std::endl;
}

/**
 * Loads the library depending on what is chosen.
 */
int				main( void )
{

	std::string	input;
	int			run(1);

	while (run) {
		// Asks the user for input
		std::cout << "\n\n1: VTK" << std::endl;
		std::cout << "2: OpenGL" << std::endl;
		std::cout << "3: WebGL" << std::endl;
		std::cout << "Please select a library from the list:" << std::endl;

		std::cin >> input;

		//Reads from a file depending on input

		if ( input.compare("1") == 0 ) {
			std::cout << "Loading the VTK library..." << std::endl;
			runlib(0);
		} else if ( input.compare("2") == 0 ) {
			std::cout << "Loading the OpenGL library..." << std::endl;
			runlib(1);
		} else if ( input.compare("3") == 0 ) {
			std::cout << "Loading the WebGL library..." << std::endl;
			runlib(2);
		} else if ( (input.compare("exit") == 0) || (input.compare("quit") == 0) || 
			(input.compare("0") == 0) ) {
			run = 0;
		} else {
			std::cout << "You have entered an invalid command. Please try again."
			"\n" << std::endl;
		}
	}

	//int state_code = 0;
	//Gamestate gamestate();

	//while (state_code != -1)
	//{
	//	state_code = gamestate.run_frame();

	//}
	return 0;
}
