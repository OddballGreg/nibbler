#include <iostream>
#include <string>
#include <stdlib.h>
#include <vector>
#include <fstream>

extern "C" {
	#include <dlfcn.h>
}

class ReadLib {

	protected:
		std::vector<std::string>				_libraries;
		std::vector<std::string>::iterator		_j;

	public:
		ReadLib( void );
		~ReadLib( void );
		ReadLib( ReadLib const & copy );
		
		const ReadLib&	operator=( ReadLib const & lib );	
		const ReadLib&	operator[]( ReadLib const & lib );	

		void		runlib(const int& i);

};
