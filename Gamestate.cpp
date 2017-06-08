//Constructors
Gamestate::Gamestate(unsigned int width, unsigned int height)
{
	this->_width = width;
	this->_height = height;
	this->_map = new Char[width][height];
}

Gamestate::Gamestate(const Gamestate &obj)
{
	delete [] this->_map;
}

Gamestate::~Gamestate()
{

}

//Operators
Gamestate 		&Gamestate::operator =(const Gamestate &obj)
{

}

//Methods
int 			Gamestate::run_frame()
{

}