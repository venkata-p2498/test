all: hello.cpp ; g++ -std=c++17 hello.cpp -o hello
test: chmod +x hello
clean: rm hello
