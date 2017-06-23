#include "./main.hpp"

//void puts(std::string message) { std::cout << message << std::endl; }

void			handleArgs(int ac, char **av) {
	if (ac <= 1) {
		std::cout << "Using Default Sizes" << std::endl;
	}
	else if (ac % 2 == 0) {//rethink
		std::cout << "Invalid arguments. Usage [-v 0..9] [-h 0..100] [-w 0..100] [-a]" << std::endl;
		exit(0);
	}
	else {
		for (int k = 1; k < ac; k++) {
			(void)av;
		}
	}
}

int				main( int argc, char **argv )
{
	if (argc > 1)
		if (std::atoi(argv[1]) >= NONE && std::atoi(argv[1]) <= ALL)
			logger.setVerbosity(std::atoi(argv[1]));

	logger.log("", CRITICAL);
	logger.log("----------------------------------------------------", CRITICAL);
	logger.log("Program Started", CRITICAL);
	std::string	input;
	int			run(1);

	while (run) {

		ReadLib* lib = new ReadLib();

		// Asks the user for input
		std::cout << "\n\n1: VTK" << std::endl;
		std::cout << "2: OpenGL" << std::endl;
		std::cout << "3: SDL" << std::endl;
		std::cout << "4: NCurses" << std::endl;
		std::cout << "Please select a library from the list:" << std::endl;

		std::cin >> input;

		//Reads from a file depending on input

		if ( input.compare("1") == 0 ) {
			std::cout << "Loading the VTK library..." << std::endl;
			lib->runlib(0);
		} else if ( input.compare("2") == 0 ) {
			std::cout << "Loading the OpenGL library..." << std::endl;
			lib->runlib(1);
		} else if ( input.compare("3") == 0 ) {
			std::cout << "Loading the SDL library..." << std::endl;
			lib->runlib(2);
		} else if ( input.compare("4") == 0 ) {
			std::cout << "Loading the ncurses library..." << std::endl;
			lib->runlib(3);
		} else if ( (input.compare("exit") == 0) || (input.compare("quit") == 0) || 
			(input.compare("0") == 0) ) {
			run = 0;
		} else {
			std::cout << "You have entered an invalid command. Please try again."
			"\n" << std::endl;
		}

		delete lib;
	}

	logger.log("Graceful Exit", CRITICAL);
	exit(0);
	return 0;
}
