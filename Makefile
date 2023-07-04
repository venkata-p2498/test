all: swc_cmp.cpp ; g++ -std=c++17 swc_cmp.cpp -o swc_cmp ; g++ -std=c++17 helloTest.cpp -lcppunit -fprofile-arcs -ftest-coverage -o helloTest -L /usr/lib -I /usr/include
test: ./swc_cmp ; ./helloTest 
coverage: gcov swc_cmp.cpp helloTest.cpp

lcov-report: coverage ## Generate lcov report
	mkdir lcov-report
	lcov --capture --directory . --output-file lcov-report/coverage.info
	genhtml lcov-report/coverage.info --output-directory lcov-report

gcovr-report: coverage ## Generate gcovr report
	mkdir gcovr-report
	gcovr --root . --html --html-details --output gcovr-report/coverage.html

clean: rm swc_cmp ; rm helloTest
