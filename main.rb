require 'opengl'
require 'glu'
require 'glut'

include Gl
include Glu
include Glut

puts ('hola mundo...')

def disp
	#color de fondo: negro
	glClearColor(0.0,0.0,0.0,0.0)
	#Borramos la pantalla
	glClear(GL_COLOR_BUFFER_BIT)
	#Modo Proyeccion
	glMatrixMode(GL_PROJECTION)
	#Cargamos la matriz de identidad
	glLoadIdentity
	#proyeccion ortografica, dentro del cubo se;alado
	glOrtho(-1.0,1.0,-1.0,1.0,-1.0,1.0)
	#modo de modelado
	glMatrixMode(GL_MODELVIEW)
	# Dibujamos un traingulo
	glBegin(GL_TRIANGLES)
	glColor3f(1.0,0.0,0.0)
	glVertex3f(0.0,0.8,0.0)
	glColor3f(0.0,1.0,0.0)
	glVertex3f(-0.6,-0.2,0.0)
	glColor3f(0.0,0.0,1.0)
	glVertex3f(0.6,-0.2,0.0)
	glEnd
	glFlush
	glutPostRedisplay
end
glutInit
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("Hola OpenGl, en ruby")
glutDisplayFunc :disp
glutMainLoop