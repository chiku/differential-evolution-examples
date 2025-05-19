CC ?= gcc
CXX ?= g++

CFLAGS   += -O3
CXXFLAGS += -O3

.PHONY: all demo demo-six-hump demo-spring-weight clean

all: demo

demo: demo-six-hump demo-spring-weight

demo-six-hump: six-hump six_hump_camelback_function/de_camel.dat
	./six-hump

demo-spring-weight: spring-weight spring_weight/de_springwt.dat
	./spring-weight

six-hump: six_hump_camelback_function/de_camel.cpp
	$(CXX) $< $(CXXFLAGS) $(LDFLAGS) -o $@

spring-weight: spring_weight/de_springwt.cpp
	$(CXX) $< $(CXXFLAGS) $(LDFLAGS) -o $@

clean:
	rm -rf six-hump spring-weight
