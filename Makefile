# Linux (default)
EXE = lorenz 
LDFLAGS = -lGL -lGLU -lglut

# Windows (cygwin)
ifeq "$(OS)" "Windows_NT"
EXE = assignment1.exe
LDFLAGS = -lopengl32 -lglu32 -lglut32
endif

# OS X
ifeq "$(OSTYPE)" "darwin"
LDFLAGS = -framework OpenGL -framework GLUT
endif

$(EXE) : lorenz.c
	gcc -o $@ $< $(CFLAGS) $(LDFLAGS)
