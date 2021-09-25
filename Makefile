ATSFLAGS := -DGNU_SOURCE -DATS_MEMALLOC_LIB -cleanaft -flto -O3 -latslib
CPPFLAGS := -Wall -std=c++2a -O3
RUSTFLAGS := --edition 2021 -O

all: problem1 problem2 problem3 Problem4 Problem5 problem6 problem7

problem7: problem7.py
	python3 -m py_compile problem7.py

problem6: problem6.erl
	erlc $<

Problem5: Problem5.hs
	ghc -O -o $@ $<

Problem4: Problem4.java
	javac $<

problem3: problem3.cpp
	g++ ${CPPFLAGS} -o $@ $<

problem2: problem2.rs
	rustc ${RUSTFLAGS} -o $@ $<

problem1: problem1.dats
	acc pc ${ATSFLAGS} -o $@ $<

clean:
	rm -rf *.pyc __pycache__ *.beam *.class *.hi *.o *_?ats.c problem1 problem2 problem3 Problem5