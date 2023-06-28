all: hello.cpp helloTest.cpp ; g++ -std=c++17 hello.cpp -o hello ; g++ -std=c++17 helloTest.cpp -lcppunit -o helloTest

clean: ; rm hello ; rm helloTest
