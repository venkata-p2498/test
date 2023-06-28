all: SWC_CMP.cpp ; g++ -std=c++17 SWC_CMP.cpp -o hello ; g++ -std=c++17 helloTest.cpp -lcppunit -o helloTest
test: hello ; ./helloTest
clean: rm hello ; rm helloTest
