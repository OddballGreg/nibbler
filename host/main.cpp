#include "./main.hpp"

//void puts(std::string message) { std::cout << message << std::endl; }

int				main( void )
{
	logger.log("");
	logger.log("----------------------------------------------------");
	logger.log("Program Started");
	std::string	input;
	int			run(1);

	ReadLib* lib = new ReadLib();

	while (run) {
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
	}

	logger.log("Graceful Exit");
	return 0;
}
