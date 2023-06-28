all: hello.cpp ; g++ -std=c++17 hello.cpp -o hello ; g++ -std=c++17 helloTest.cpp -lcppunit -o helloTest
test: hello
clean: rm hello
