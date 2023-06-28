all: swc_cmp.cpp ; g++ -std=c++17 swc_cmp.cpp -o swc_cmp ; g++ -std=c++17 helloTest.cpp -lcppunit -o helloTest
test: swc_cmp ; ./helloTest
clean: rm swc_cmp ; rm helloTest
