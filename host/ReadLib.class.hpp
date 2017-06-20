#include <iostream>
#include <string>
#include <stdlib.h>
#include <vector>
#include <fstream>
#include <cstdio>
#include <array>
#include <algorithm>
#include <fcntl.h>
#include <stdio.h>
#include <memory>
#include <dlfcn.h>
#include <unistd.h>
#include "../shared/IDisplay.hpp"
#include "../shared/Logger.hpp"
#include "GameState.hpp"

class ReadLib {

	private:
		void*		_libHandle;
		std::string	_exect;

	protected:
		std::vector<std::string>				_libraries;
		std::vector<std::string>::size_type		_j;

	public:
		ReadLib( void );
		~ReadLib( void );
		ReadLib( ReadLib const & copy );
		
		const ReadLib&	operator=( ReadLib const & lib );	

		void			runlib( const int & i );
		std::string		execute( const char* cmd );
		void			openLib( const int & i );
		void			callRun( void );
		void			runGame(IDisplay *window) const;
};
