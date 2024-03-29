#define MAIN_FILE
#include "./main.hpp"

//void puts(std::string message) { std::cout << message << std::endl; }

void			parseArgs(int ac, char **av) {
	try {
		boost::program_options::options_description	desc("Options");

		desc.add_options()
		("help", "Print out help messages")
		("verbose,v", boost::program_options::value<int>(&g_verbosity), "runs logs with a verbosity of 0 to 5")
		("height,h", boost::program_options::value<int>(&g_height)->required(), "sets the window height")
		("width,w", boost::program_options::value<int>(&g_width)->required(), "sets the window width")
		("ai,a", "enables the AI")
		("delay,d", boost::program_options::value<unsigned int>(&g_delay), "Sets the timmers delay, default 90000usec")
		("verse_ai,b", "allows the player to play against the AI");

		boost::program_options::variables_map	vm;

		try {
			boost::program_options::store(boost::program_options::parse_command_line(ac, av, desc), vm);

			if (vm.count("help")) {
				std::cout << "Nibbler is a version of the classical snake game, which allows for dynamic graphics libraies to be loaded and used as interfaces." << std::endl;
				std::cout << std::endl << desc << std::endl;
				exit(0);
			}

			boost::program_options::notify(vm);

			if (g_height < 15 || g_height > 200)
				throw boost::program_options::error("height can not be greater than 200, or less than 15");
			if (g_width < 15 || g_width > 200)
				throw boost::program_options::error("width can not be greater than 200, or less than 15");

			logger.setVerbosity(g_verbosity);

			if (vm.count("ai"))
				g_ai_flag = true;

		}
		catch (boost::program_options::error& e) {
			std::cerr << "ERROR: " << e.what() << std::endl;
			exit(0);
		}
	}
	catch(std::exception& e) {
		std::cerr << "Exception reached when parsing paramiters" << std::endl;
		exit(0);
	}
}

int				main( int ac, char **av )
{
	parseArgs(ac, av);
	// if (argc > 1)
	// 	if (std::atoi(argv[1]) >= NONE && std::atoi(argv[1]) <= ALL)
	// 		logger.setVerbosity(std::atoi(argv[1]));

	logger.log("", CRITICAL);
	logger.log("----------------------------------------------------", CRITICAL);
	logger.log("Program Started", CRITICAL);
	std::string	input;
	int			run(1);

	/* while (run) */ {

		ReadLib* lib = new ReadLib();

		// Asks the user for input
		std::cout << "\n\n1: VTK" << std::endl;
		std::cout << "2: OpenGL" << std::endl;
		std::cout << "3: SDL" << std::endl;
		std::cout << "4: NCurses" << std::endl;
		std::cout << "5: NCurses Full Screen" << std::endl;
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
		} else if ( input.compare("5") == 0 ) {
			std::cout << "Loading the Fullscreen ncurses library..." << std::endl;
			lib->runlib(4);
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
	system("reset");
	exit(0);
	return 0;
}
