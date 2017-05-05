
require 'opengl'
require 'glu'
require 'glut'

include Gl
include Glu
include Glut

puts ('hola mundo...')

BODY_HEIGHT =	4.0
BODY_WIDTH 	=	2.5
BODY_LENGTH	=	1.0

def disp
	glDepthFunc(GL_LEQUAL);
	glEnable(GL_DEPTH_TEST);
	glClearColor(0.0,0.0,0.0,0.0);
glClearDepth(1.0);
glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

glMatrixMode(GL_PROJECTION);
glLoadIdentity();
gluPerspective(60.0,1.0,1.0,100.0);
glMatrixMode(GL_MODELVIEW);
glTranslatef(0.0,0.0,-16.0)
glRotatef(30,30,0,10);

glPushMatrix
glColor3f(0.0,0.3,0.8);
glutWireCube(2)
glPopMatrix

glPushMatrix
glScalef(2.0,2.0,2.0)
glColor3f(0.0,0.3,0.8);
glutWireCube(2)
glPopMatrix

glPushMatrix
glTranslatef(5.0,0,0)
glColor3f(0.0,0.3,0.8);
glutWireCube(2)
glPopMatrix

glPushMatrix
glTranslatef(0,5.0,0)
glColor3f(0.0,0.3,0.8);
glutWireCube(2)
glPopMatrix

glPushMatrix
glTranslatef(0,-5.0,0)
glColor3f(0.0,0.3,0.8);
glutWireCube(2)
glPopMatrix

glFlush
sleep(20)
gluPostRedisplay


end
glutInit
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("Hola OpenGl, en ruby")
glutDisplayFunc :disp
glutMainLoop