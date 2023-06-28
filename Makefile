all: hello.cpp ; g++ -std=c++17 hello.cpp -o hello
test: hello
clean: rm hello
