# the compiler: gcc for C program, define as g++ for C++
CC = g++

# compiler glags:
# -g 		- this flag adds debugging information to the executable file
# -Wall		- this flag is used to turn on most compiler warnings
CFLAGS = -Wall

# The build target
TARGET = main

all: $(TARGET)

$(TARGET): src/$(TARGET).cpp
			$(CC) $(CFLAGS) -o $(TARGET) src/$(TARGET).cpp

clean:
			$(RM) $(TARGET)