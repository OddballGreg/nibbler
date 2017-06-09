#include <iostream>
#include <string>
#include <stdlib.h>
#include <vector>
#include <fstream>
#include <cstdio>
#include <algorithm>

extern "C" {
	#include <dlfcn.h>
}

class ReadLib {

	private:
		void*	_libHandle;

	protected:
		std::vector<std::string>				_libraries;
		std::vector<std::string>::size_type		_j;

	public:
		ReadLib( void );
		~ReadLib( void );
		ReadLib( ReadLib const & copy );
		
		const ReadLib&	operator=( ReadLib const & lib );	

		void		runlib(const int& i);
		void		callRun( void );
};
