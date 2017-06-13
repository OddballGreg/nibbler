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

void			ReadLib::runlib( int const & i ) {

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

	// The library selected from the stdin, runs a bash script
	// to determine is the library is already loaded.
	std::string		temp{"bash " + _libraries.at(static_cast<size_t>(i))};
	
	try {
		this->execute(temp.c_str());	
	} catch(...) {
		std::cout << "Falied loading library: " << _libraries.at(static_cast<size_t>(i)) << std::endl; 
		return;
	}

}

/**
 * The bash script is executed to load the library.
 */
std::string		ReadLib::execute( const char* cmd ) {
    std::array<char, 512> buffer;
    std::string result;
    std::shared_ptr<FILE> pipe(popen(cmd, "r"), pclose);
    if (!pipe) throw std::runtime_error("popen() failed!");
    while (!feof(pipe.get())) {
        if (fgets(buffer.data(), 128, pipe.get()) != NULL)
            result += buffer.data();
    }
    return result;
};

/**
 * This is where the libraries are loaded dynamically.
 */
void		ReadLib::openLib( int const & i ) {

	// RTLD_NOW: Performall dynamic linking immediately, so if there are
	// undefined symbols, there will be an error here and now. That is,
	// this will cause a bad library to to load at all, rather than get
	// confused somewhere down the line

	// RTLD_LOCAL: Do not add symbols exported from this library to the
	// global symbol namespace. the only way to get at bindings is by
	// using the handle for this library.

	_libHandle = dlopen(_libraries.at(static_cast<size_t>(i)).c_str(), RTLD_NOW | RTLD_LOCAL);
	if (_libHandle == NULL) {
		std::cout << "Falied loading library: " << _libraries.at(static_cast<size_t>(i)) << std::endl; 
		std::cout << dlerror() << std::endl;
		return;
	} else {
		std::cout << "Cool beans... You library has loaded." << std::endl;
		callRun();
	}
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
