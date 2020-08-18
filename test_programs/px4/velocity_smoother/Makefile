.PHONY: all tests clean
all: test_velocity_smoothing test_velocity_smoothing_mcdc

test_velocity_smoothing: test_velocity_smoothing.cpp VelocitySmoothing.cpp
	@clang++ $^ -std=c++14 -I. -o $@

test_velocity_smoothing_mcdc: test_velocity_smoothing_mcdc.cpp VelocitySmoothing.cpp
	@clang++ --coverage -O0 -g $^ -std=c++14 -I. -o $@

tests: test_velocity_smoothing
	@echo "Test velocity smoothing"

clean:
	@-rm test_velocity_smoothing test_velocity_smoothing_mcdc *.gcda *.gcov *.gcno

coverage: clean test_velocity_smoothing_mcdc
	./test_velocity_smoothing_mcdc
	 llvm-cov-10 gcov VelocitySmoothing.cpp
