all: hello.cpp ; g++ -std=c++17 hello.cpp -o hello
test: sudo chmod +x hello
clean: rm hello
