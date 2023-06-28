all: SWC_CMP.cpp ; g++ -std=c++17 SWC_CMP.cpp -o hello ; g++ -std=c++17 helloTest.cpp -lcppunit -o helloTest
test: SWC_CMP ; ./helloTest
clean: rm SWC_CMP ; rm helloTest
