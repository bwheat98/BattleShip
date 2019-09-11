prog: main.o Executive.o
	g++ -g -Wall -std=c++11 main.o Executive.o -o prog

main.o: main.cpp
	g++ -g -Wall -std=c++11 -c main.cpp

Executive.o: Executive.cpp Executive.h
	g++ -std=c++11 -c Executive.cpp

clean:
	rm *.o prog