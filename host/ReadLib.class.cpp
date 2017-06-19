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

	this->openLib(i);

}

/**
 * This is where the libraries are loaded dynamically.
 */

void		ReadLib::openLib( std::string const & str ) {

	_libHandle = dlopen(str, RTLD_LAZY | RTLD_LOCAL);
	
	if (_libHandle == NULL) {
		std::cout << "Falied loading library: " << str << std::endl; 
		std::cout << dlerror() << std::endl;
		return;
	} else {
		std::cout << "Cool beans... You library has loaded." << std::endl;
		callRun(i);
	}
}

/**
 * This calls the `run` function in the indicated library
 */
void		ReadLib::callRun( int const & i ) {
	
	std::cout << "Busy loading symbols..." << std::endl;
	typedef void	(*nib_t)( int const & i );

	// reset errors
	dlerror();
	nib_t nib = (nib_t) dlsym(_libHandle, "NcursesLoad");
	const char *dlsym_error = dlerror();
	if (dlsym_error) {
		std::cerr << "Trouble finding `run`: " << dlerror() << std::endl;
		dlclose(_libHandle);
	}

	nib(i);

	dlclose(_libHandle);

};

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
