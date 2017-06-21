#include "OpenGL.class.hpp"

/*
** Constructors and Destructors
*/
OpenGL::OpenGL(void) {
	// glutInit(NULL, NULL);
	// glutInitDisplayMode(GLUT_DEPTH | GLUT_MULTISAMPLE | GLUT_RGBA | GLUT_DOUBLE);
	// glutInitWindowPosition(WIN_X, WIN_Y);
	// glutInitWindowSize(WIN_WIDTH, WIN_HEIGHT);
	// glutCreateWindow("Nibbler");

	// // glutDisplayFunc(render_scene);
	// // glutReshapeFunc(change_size);
	// // glutIdleFunc(render_scene);
	// // glutSpecialFunc(press_key);

	// glEnable(GL_LIGHTING);
	// glEnable(GL_COLOR_MATERIAL);
	// glEnable(GL_DEPTH_TEST);
}

OpenGL::~OpenGL(void) {
	//
}

/*
** Copying
*/
OpenGL::OpenGL(const OpenGL &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;
}

OpenGL OpenGL::operator = (const OpenGL &obj) {
	this->_size = obj._size;
	this->_direction = obj._direction;

	return (*this);
}

/*
** Draw Functions
*/
void		OpenGL::drawMap(MAP map) {
	// glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
	// glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	// glLoadIdentity();

	// gluLookAt(
	// 	0.0, 1.0, 0.0,
	// 	0.0, 1.0, 1.0,
	// 	0.0, 2.0, 0.0);
	
	// glBegin(GL_QUADS);
	// 	glVertex3f(0, 0, 15);
	// 	glVertex3f(0, 0, 15);
	// 	glVertex3f(0, 0, 15);
	// 	glVertex3f(0, 0, 15);
	// glEnd();

	(void)map;//FIXME

	// glutSwapBuffers();
}

void		OpenGL::drawScore(int score) {
	(void)score;//FIXME
}

void		OpenGL::drawPause(void) {
	//
}

void		OpenGL::drawGameOver(int finalScore) {
	(void)finalScore;//FIXME
}

/*
** Window Specialities
*/
void		OpenGL::initWindow(void) {
	//
}

void		OpenGL::exitWindow(void) {
	//
}

/*
** Getters
*/
Direction	OpenGL::getDirection(void) {
	return (this->_direction);
}

Coord		OpenGL::getWindowSize(void) {
	return (this->_size);
}

/*
** Other Functions
*/
IDisplay			*createWindow(void) {
	return new OpenGL;
}

void				deleteWindow(IDisplay *window) {
	logger.log("Ncurses Window| deleteWindow() called", CRITICAL);
	OpenGL	*win = static_cast<OpenGL *>(window);

	delete win;
}
