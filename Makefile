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
			$(CC) $(CFLAGS) -o $(TARGET).out src/$(TARGET).cpp src/simple_math.cpp -I./

check:
			./$(TARGET).out

clean:
			$(RM) $(TARGET).out

build_test:
			$(CC) $(CFLAGS) -o $(TARGET)Test.out test/$(TARGET)Test.cpp src/simple_math.cpp -I./ /usr/src/gtest/src/gtest_main.cc /usr/src/gtest/src/gtest-all.cc -I /usr/include -I /usr/src/gtest -L /usr/local/lib -lpthread

run_test:
			./$(TARGET)Test.out
