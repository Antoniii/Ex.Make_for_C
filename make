# make test_time
CC=gcc
CCFLAGS=-Wall
CLEAN=rm -f
PROGRAM_NAME=time
OBJECT_FILES=*.o
SOURCE_FILES=test_time.c
$(PROGRAM_NAME): $(OBJECT_FILES)
	$(CC) $(CCFLAGS) -o $@ $^
$(OBJECT_FILES): $(SOURCE_FILES)
	$(CC) $(CCFLAGS) -c $^
clean:
	$(CLEAN) *.o $(PROGRAM_NAME)