#include "./ReadLib.class.hpp"

/*
** This is the type of run functions defined by our libraries
*/
typedef void	runFunction( void );

ReadLib::ReadLib( void ) {};

ReadLib::~ReadLib( void ) {};

ReadLib::ReadLib( ReadLib const & copy ) {
	*this = copy;
};
		
const ReadLib&	ReadLib::operator=( ReadLib const & lib ) {
	//if (*this != lib)
	//	*this = lib;
	return lib;	
};

void			ReadLib::runlib( const int & i ) {
	logger.log_step_in("ReadLib| runlib() Called", CRITICAL);

	std::ifstream	read;
	std::string		str;

	read.open("./lib/lib.txt");
	if (read.is_open()) {
		std::cout << "File ./lib/lib.txt is open." << std::endl;
		for (_j = 0; _j < 10 ; _j++) { 
			getline(read, str);
			_libraries.push_back(str);
			std::cout << "Reading _libraries from ./lib: " << _libraries.at(_j)
			 << std::endl;
		}
		read.close();
	} else {
		std::cout << "\nError opening file ./lib/lib.txt" << std::endl;	 
	}

	this->openLib(i);
	logger.log_step_out("ReadLib| runlib() Completed", CRITICAL);

}

/**
 * This is where the libraries are loaded dynamically.
 */

void		ReadLib::openLib( const int & i ) {
	logger.log_step_in("ReadLib| openlib() Called", CRITICAL);

	_libHandle = dlopen(_libraries.at(static_cast<size_t>(i)).c_str(), RTLD_LAZY | RTLD_LOCAL);
	
	if (_libHandle == NULL) {
		std::cout << "Falied loading library: " << _libraries.at(static_cast<size_t>(i)) << std::endl; 
		std::cout << dlerror() << std::endl;
		return;
	} else {
		std::cout << "Cool beans... You library has loaded." << std::endl;
		callRun();
		dlclose(_libHandle);
	}
	logger.log_step_out("ReadLib| openlib() Completed", CRITICAL);
}

/**
 * This calls the `run` function in the indicated library
 */
void		ReadLib::callRun( void ) {
	logger.log_step_in("ReadLib| callRun() Called", CRITICAL);
	
	std::cout << "Busy loading symbols..." << std::endl;

	// For now I will only load the ncurses library. I will have to create
	// template for loading different classes.
	IDisplay* (*create)();
	void	(*destroy)(IDisplay*);

	// reset errors
	dlerror();
	create = (IDisplay* (*)())dlsym(_libHandle, "createObject");
	destroy = (void (*)(IDisplay*))dlsym(_libHandle, "destroyObject");
	const char *dlsym_error = dlerror();
	if (dlsym_error) {
		std::cerr << "Trouble finding `run`: " << dlerror() << std::endl;
		dlclose(_libHandle);
	}

	IDisplay* display = (IDisplay*)create();
	display->initWindow();
	while (!(display->isClosed())) {
		
		this->runGame(display);
		sleep(2);
		
	}
	display->exitWindow();
	destroy( display );

	logger.log_step_out("ReadLib| callRun() Completed", CRITICAL);
};

/**
 * The bash script is executed to load the library.
 */
std::string		ReadLib::execute( const char* cmd ) {
	logger.log_step_in("ReadLib| execute() Called", CRITICAL);
    std::array<char, 512> buffer;
    std::string result;
    std::shared_ptr<FILE> pipe(popen(cmd, "r"), pclose);
    if (!pipe) throw std::runtime_error("popen() failed!");
    while (!feof(pipe.get())) {
        if (fgets(buffer.data(), 128, pipe.get()) != NULL)
            result += buffer.data();
    }
    return result;
	logger.log_step_out("ReadLib| execute() Completed", CRITICAL);
};

/*
** The gameplay logic
*/
void		ReadLib::runGame(IDisplay *window) const {
	logger.log_step_in("ReadLib| runGame() Called", CRITICAL);
	GameState	game;
	Direction	dir;
	struct timeval	now, reff;
	unsigned int	utime;

	logger.log("Readlib runGame() called", CRITICAL);
	game.setSize(window->getWindowSize());
	gettimeofday(&reff, NULL);

	while (game.runIteration()) {
		window->drawScore(game.getScore());
		window->drawMap(game.getMap());

		if (game.getAIFlag() != true)
		{
			dir = window->getDirection();
			if (dir.getDirection() != LOST)
				game.setSnakeDir(dir.getDirection());
		}

		gettimeofday(&now, NULL);

		utime = static_cast<unsigned int>(abs(reff.tv_usec - now.tv_usec));

		if (utime < DELAY)
			usleep(DELAY - utime);

		gettimeofday(&reff, NULL);
	}
	window->drawGameOver(game.getScore());
	logger.log_step_out("ReadLib| runGame() Completed", CRITICAL);
}
