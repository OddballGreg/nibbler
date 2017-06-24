#define OPENGL_FILE
#include "OpenGL.class.hpp"

MAP		*glMap;

/*
** Constructors and Destructors
*/
OpenGL::OpenGL(void) {
	logger.log_step_in("OpenGl| Constructor Called {", CRITICAL);

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
	this->_direction = obj._direction;
}

OpenGL OpenGL::operator = (const OpenGL &obj) {
	this->_direction = obj._direction;

	return (*this);
}

/*
** Draw Functions
*/
void		OpenGL::drawMap(MAP map) {
	logger.log_step_in("OpenGL| drawMap() Called", IMPORTANT);
	glMap = &map;

	renderScene();
	logger.log_step_in("OpenGL| drawMap() Called", IMPORTANT);
}

void		OpenGL::drawScore(int score) {
	logger.log_step_in("OpenGL| drawScore() Called", IMPORTANT);
	(void)score;//FIXME
/*
	char	tmp[50];

	sprintf(tmp, "Distance: %i", score);

	setOrthographicProjection();
	glPushMatrix();
	glLoadIdentity();
	glColor3f(2, 2, 2);
	renderBitmapString(0, 0, -0.5, GLUT_BITMAP_HELVETICA_18, tmp);

	glPopMatrix();
	restorePerspectiveProjection();*/
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
	initWindow(winSize);
}

void		OpenGL::initWindow(Coord size) {
	logger.log_step_in("OpenGL| initWindow() Called", CRITICAL);

	char		*av[1];
	int			ac = 1;
	pthread_t	thread;
	int			ret;

	av [0] = strdup ("nibbler");
	winSize = size;

	if (!glLoop) {
		glLoop = true;

		glutInit(&ac, av);
		glutInitDisplayMode(GLUT_DEPTH | GLUT_MULTISAMPLE | GLUT_RGBA | GLUT_DOUBLE);
		glutInitWindowPosition(WIN_X, WIN_Y);
		glutInitWindowSize(WIN_WIDTH, WIN_WIDTH);
		glutCreateWindow("Nibbler");

		glutDisplayFunc(renderScene);
		glutReshapeFunc(changeSize);
		// glutIdleFunc(renderScene);
		glutSpecialFunc(pressKey);
		glutSpecialUpFunc(pressKey);//test

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

	lastKeyPress = getchar();

	if (lastKeyPress) {
		if ((lastKeyPress == 'd') && this->_direction.getDirection() != WEST)
			this->_direction = Direction(EAST);
		else if ((lastKeyPress == 'a') && this->_direction.getDirection() != EAST)
			this->_direction = Direction(WEST);
		else if ((lastKeyPress == 'w') && this->_direction.getDirection() != NORTH)
			this->_direction = Direction(SOUTH);
		else if ((lastKeyPress == 's') && this->_direction.getDirection() != SOUTH)
			this->_direction = Direction(NORTH);
		else if (lastKeyPress == 'p')
			paused = (paused) ? false : true;
		lastKeyPress = 0;
	 }

	 logger.log("OpenGL| getDirection() Direction = ", this->_direction, UNIMPORTANT);

	return (this->_direction);
}

Coord		OpenGL::getWindowSize(void) {
	logger.log("OpenGL| getWindowSize() Called", AVERAGE);
	return (winSize);
}

bool		OpenGL::getPaused(void) {
	return (paused);
}

/*
** Setters
*/
void		OpenGL::setWindowSize(Coord size) {
	winSize = size;
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
		0.0, 0.0, 1.0,
		0.0, 0.0, 0.0,
		0.0, 1.0, 0.0);

	for (int k = 0; k < winSize.getX(); k++)
		for (int l = 0; l < winSize.getY(); l++)
			drawSquare(k, l, (*glMap)[k][l]);

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
	logger.log("OpenGL| pressKey() Called", IMPORTANT);
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

void renderBitmapString(
		float x,
		float y,
		float z,
		void *font,
		const char *string) {

  const char *c;
  glRasterPos3f(x, y,z);
  for (c=string; *c != '\0'; c++) {
    glutBitmapCharacter(font, *c);
  }
}

void	setOrthographicProjection(void)
{
	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();
	gluOrtho2D(0, WIN_WIDTH, WIN_HEIGHT, 0);
	glMatrixMode(GL_MODELVIEW);
}

void	restorePerspectiveProjection(void)
{
	glMatrixMode(GL_PROJECTION);
	glPopMatrix();
	glMatrixMode(GL_MODELVIEW);
}

/*
** Private Function
*/
void				drawSquare(int x, int y, char colour) {
	float	new_x, new_y;

	new_x = (((2.0f / winSize.getX()) * x) + (1.0f / winSize.getX())) - 1;
	new_y = 1.0f - (((2.0f / winSize.getY()) * y) + (1.0f / winSize.getX()));

	switch (colour) {
		case MAP_EMPTY :
			glColor3f(0.0f, 0.0f, 0.0f);
			break;
		case MAP_OBSTICLE :
			glColor3f(1.0f, 0.0f, 0.0f);
			break;
		case MAP_HEAD :
			glColor3f(0.0f, 0.0f, 1.0f);
			break;
		case MAP_BODY :
			glColor3f(0.0f, 0.0f, 0.5f);
			break;
		case MAP_FOOD :
			glColor3f(0.0f, 1.0f, 0.0f);
			break;
		default :
			glColor3f(0.0f, 0.0f, 0.0f);
			break;
	}

	// std::cout << "new_x = " << new_x << "; new_y = " << new_y << std::endl;

	glPushMatrix();
	glTranslatef(new_x, new_y, 0);
	if (colour != MAP_FOOD)
		glutSolidCube((winSize.getX() < winSize.getY()) ? (2.0f / winSize.getX()) : (2.0f / winSize.getX()));
	else
		glutSolidSphere((winSize.getX() < winSize.getY()) ? (2.0f / winSize.getX()) : (2.0f / winSize.getX()) * 0.5, 25, 25);
	glPopMatrix();
}
