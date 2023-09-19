CXX = g++
CXXFLAGS = -std=c++14 -g -Wall

include_dir = -I./include
lib_dir = -L./lib -lmyersdiff

build_dir = ./build
exe_name = $(addsuffix .exe, myers-diff)

main.o: main.cpp | mkdir-build
	$(CXX) $(CXXFLAGS) $(lib_dir) $(include_dir) $< -o $(build_dir)/$(exe_name)

all: main.o

.PHONY: mkdir-build clean

mkdir-build:
	@echo Create [$(build_dir)] directory.
	@mkdir $(build_dir)

clean:
	@rm -r $(build_dir)/*.o
	@rm -r $(build_dir)