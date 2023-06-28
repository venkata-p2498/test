all: hello.cpp helloTest.cpp ; g++ -std=c++17 hello.cpp -o hello ; 
test: chmod +x hello ; ./helloTest
clean: ; rm hello ; rm helloTest
