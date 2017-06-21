#include "OpenGL.class.hpp"

/*
** Constructors and Destructors
*/
OpenGL::OpenGL(void) {
	logger.log_step_in("OpenGl| Constructor Called {", CRITICAL);
	//
	logger.log_step_out("} OpenGL| Constructor Completed", CRITICAL);
}

OpenGL::~OpenGL(void) {
	logger.log_step_in("OpenGL| Deconstructing", CRITICAL);
	//
	logger.log_step_out("OpenGL| Deconstructed", CRITICAL);
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
	logger.log_step_in("NcursesWindow| drawMap() Called", CRITICAL);
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
	logger.log_step_out("NcursesWindow| drawMap() Completed", CRITICAL);
}

void		OpenGL::drawScore(int score) {
	logger.log_step_in("OpenGL| drawScore() Called", IMPORTANT);
	(void)score;//FIXME
	logger.log_step_out("OpenGL| drawScore() Completed", IMPORTANT);
}

void		OpenGL::drawPause(void) {
	logger.log_step_in("OpenGL| drawPause() Called", IMPORTANT);
	//
	logger.log_step_out("OpenGL| drawPause() Completed", IMPORTANT);
}

void		OpenGL::drawGameOver(int finalScore) {
	logger.log_step_in("OpenGL| drawGameOver() Called", IMPORTANT);
	(void)finalScore;//FIXME
	logger.log_step_out("OpenGL| drawGameOver() Completed", IMPORTANT);
}

/*
** Window Specialities
*/
void		OpenGL::initWindow(void) {
	logger.log_step_in("OpenGL| initWindow() Called", CRITICAL);
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
	logger.log_step_out("OpenGL| initWindow() Completed", CRITICAL);
}

void		OpenGL::exitWindow(void) {
	logger.log_step_in("OpenGL| exitWindow() Called", CRITICAL);
	//
	logger.log_step_out("OpenGL| exitWindow() Completed", CRITICAL);
}

/*
** Getters
*/
Direction	OpenGL::getDirection(void) {
	logger.log("OpenGL| getDirection() Called", AVERAGE);
	return (this->_direction);
}

Coord		OpenGL::getWindowSize(void) {
	logger.log("OpenGL| getWindowSize() Called", AVERAGE);
	return (this->_size);
}

/*
** Other Functions
*/
IDisplay			*createWindow(void) {
	return new OpenGL;
}

void				deleteWindow(IDisplay *window) {
	logger.log("OpenGL| deleteWindow() called", CRITICAL);
	OpenGL	*win = static_cast<OpenGL *>(window);

	delete win;
}
