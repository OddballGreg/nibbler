#include "Gamestate.hpp"

//Constructors
Gamestate::Gamestate(unsigned int width, unsigned int height)
{
	this->_width = width;
	this->_height = height;
	this->_map = new char *[height];
  for (unsigned int i = 0; i < height; i++)
    this->_map[i] = new char[width];
}

Gamestate::Gamestate(Gamestate &obj)
{
  this->_width = obj.getWidth();
  this->_height = obj.getWidth();
  // this->_map = obj.getMap();
}

Gamestate::~Gamestate()
{
  for (unsigned int i = 0; i < this->_height; i++)
    delete [] this->_map[i];
	delete [] this->_map;

}

//Operators
// Gamestate 		&Gamestate::operator =(Gamestate &obj)
// {
//   this->_width = obj.getWidth();
//   this->_height = obj.getWidth();
//   // this->_map = obj.getMap();
// }

//Methods
int 			Gamestate::run_frame()
{
  puts("Frame Run");
  return 0;
}

unsigned int Gamestate::getHeight() { return this->_height; }
unsigned int Gamestate::getWidth() { return this->_width; }