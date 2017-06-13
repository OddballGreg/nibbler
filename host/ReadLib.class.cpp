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

void		ReadLib::runlib( int const & i ) {

	std::ifstream	read;
	std::string		str;

	read.open("./lib/lib.txt");
	if (read.is_open()) {
		std::cout << "File ./lib/lib.txt is open." << std::endl;
		for (_j = 0; _j < 3; _j++) {
			getline(read, str);
			_libraries.push_back(str);
			std::cout << "Reading _libraries from ./lib: " << _libraries.at(_j)
			 << std::endl;
		}
		read.close();
	} else {
		std::cout << "\nError opening file ./lib/lib.txt" << std::endl;	 
	}

	// RTLD_NOW: Performall dynamic linking immediately, so if there are
	// undefined symbols, there will be an error here and now. That is,
	// this will cause a bad library to to load at all, rather than get
	// confused somewhere down the line

	// RTLD_LOCAL: Do not add symbols exported from this library to the
	// global symbol namespace. the only way to get at bindings is by
	// using the handle for this library.

	_libHandle = dlopen(_libraries.at(i).c_str(), RTLD_NOW | RTLD_LOCAL);
	if (_libHandle == NULL) {
		std::cout << "Falied loading library: " << _libraries.at(i) << std::endl; 
		std::cout << dlerror() << std::endl;
		return;
	} else {
		std::cout << "Cool beans... You library has loaded." << std::endl;
		callRun();
	}

	//std::cout << i << std::endl;
}


/**
 * This calls the `run` function in the indicated library
 */
void		ReadLib::callRun( void ) {
	std::cout << "Running... " << std::endl;

	// The circumlocution used to assign `runFn` is required, because
	// directly assigning a `void *` to a function pointer type is
	// an undefined operation in ISO C. Reference:
	// <http://pubs.opengroup.org/onlinepubs/009695399/functions/dlsym.html>
	runFunction	*runFn;
	*(void **)(&runFn) = dlsym(_libHandle, "run");

	if (runFn == NULL) {
		std::cout << "Trouble finding `run`: " << dlerror() << std::endl;
	}

	runFn();

};
