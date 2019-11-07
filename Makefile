CC=gcc
CFLAGS=-c -g -Wall 
SOURCES=kerberos_inf.c
OBJECTS=$(SOURCES:.c=.o)
LIBRARIES= -lkrb5
EXE= KRB

all: $(EXE)

$(EXE): $(OBJECTS)
	$(CC) $^ -o $@ $(LIBRARIES)

$(OBJECTS) : $(SOURCES)
	cppcheck $(SOURCES)
	$(CC) $(CFLAGS) $^


clean: 
	rm -rf $(EXE) $(OBJECTS) 
