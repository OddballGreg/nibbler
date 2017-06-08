#include "ReadLib.class.hpp"

extern "C" {
	#include <dlfcn.h>
}


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
	try {
		read.is_open();
		std::cout << "File ./lib/lib.txt is open." << std::endl;
		for (_j = 0; _j < 1; _j++) {
		//	getline(read, _libraries[_j]);
			std::cout << "Reading _libraries from ./lib: " << _libraries.at(_j)
			 << std::endl;
		}
		read.close();
	
	} catch (...) {
		std::cout << "\nError opening file ./lib/lib.txt" << std::endl;	 
	}

	if (i != 200)
		return;

	// RTLD_NOW: Performall dynamic linking immediately, so if there are
	// undefined symbols, there will be an error here and now. That is,
	// this will cause a bad library to to load at all, rather than get
	// confused somewhere down the line

	// RTLD_LOCAL: Do not add symbols exported from this library to the
	// global symbol namespace. the only way to get at bindings is by
	// using the handle for this library.

//	void	*libhandle = dlopen(_libraries.at(0), RTLD_NOW | RTLD_LOCAL);
//	if (libhandle == NULL) {
//		std::cout << "Falied loading library: " << _libraries.at(0) << 
//		dlerror() << std::endl;
//		return;
//	}

	//std::cout << i << std::endl;
}


