all: hello.cpp helloTest.cpp ; g++ -std=c++17 hello.cpp -o hello ; 
clean: ; rm hello ; rm helloTest
