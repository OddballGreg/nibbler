#define OPENGL_FILE
#include "OpenGL.class.hpp"

MAP		glMap;

/*
** Constructors and Destructors
*/
OpenGL::OpenGL(void) {
	logger.log_step_in("OpenGl| Constructor Called {", CRITICAL);
	
	_size = Coord(25, 25);

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
	logger.log_step_in("OpenGL| drawMap() Called", IMPORTANT);
	glMap = map;

	renderScene();
	logger.log_step_in("OpenGL| drawMap() Called", IMPORTANT);
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

	char		*av[1];
	int			ac = 1;
	pthread_t	thread;
	int			ret;

	av [0] = strdup ("nibbler");

	if (!glLoop) {
		glLoop = true;

		glutInit(&ac, av);
		glutInitDisplayMode(GLUT_DEPTH | GLUT_MULTISAMPLE | GLUT_RGBA | GLUT_DOUBLE);
		glutInitWindowPosition(WIN_X, WIN_Y);
		glutInitWindowSize(WIN_WIDTH, WIN_HEIGHT);
		glutCreateWindow("Nibbler");

		glutDisplayFunc(renderScene);
		glutReshapeFunc(changeSize);
		// glutIdleFunc(renderScene);
		glutSpecialFunc(pressKey);

		// glEnable(GL_LIGHTING);
		// glEnable(GL_COLOR_MATERIAL);
		glEnable(GL_DEPTH_TEST);

		ret = pthread_create(&thread, NULL, startGlutLoop, (void *)1);
		 if (ret)
		 	throw std::runtime_error("Unable to create new thread");
	}
	free(av[0]);

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
** Linker Functions
*/
extern "C" OpenGL*	createObject() {
	return new OpenGL;
}

extern "C" void destroyObject( OpenGL* object ) {
	delete object;
}

IDisplay			*createWindow(void) {
	logger.log("OpenGL| createWindow() called", CRITICAL);
	return new OpenGL;
}

void				deleteWindow(IDisplay *window) {
	logger.log("OpenGL| deleteWindow() called", CRITICAL);
	OpenGL	*win = static_cast<OpenGL *>(window);

	delete win;
}

/*
** Private Functions
*/
void	renderScene(void) {
	logger.log_step_in("OpenGL| drawMap() Called", IMPORTANT);
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glLoadIdentity();

	gluLookAt(
		0.0, 1.0, 0.0,
		0.0, 1.0, 0.0,
		0.0, 2.0, 0.0);
	
	glutSolidTeapot(1.0f);

	// (void)map;//FIXME

	glutSwapBuffers();
	logger.log_step_out("OpenGL| drawMap() Completed", IMPORTANT);
}

void	changeSize(int width, int height)
{
	float		ratio;

	if (height == 0)
		height = 1;
	ratio = ((float)width * 1.0f) / (float)height;
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glViewport(0, 0, width, height);
	gluPerspective(45.0, ratio, 1.0, 150.0);
	glMatrixMode(GL_MODELVIEW);
	// g_win.height = height;
	// g_win.width = width;
}

void			pressKey(int key, int x, int y) {
	lastKeyPress = key;
	(void)x;
	(void)y;
}

void			*startGlutLoop(void *threadID) {
	logger.log("OpenGL| starGlutLoop() Called", CRITICAL);
	(void)threadID;
	glutMainLoop();

	return (NULL);
}
