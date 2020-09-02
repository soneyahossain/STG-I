.PHONY: all tests clean
all: test_velocity_smoothing test_velocity_smoothing_mcdc

test_velocity_smoothing: test_velocity_smoothing.cpp VelocitySmoothing.cpp
	@clang++ $^ -std=c++14 -I. -o $@

test_velocity_smoothing_mcdc: test_velocity_smoothing_mcdc.cpp VelocitySmoothing.cpp
	@clang++ --coverage -O0 -g $^ -std=c++14 -I. -o $@

tests: test_velocity_smoothing
	@echo "Test velocity smoothing"

clean:
	@-rm test_velocity_smoothing test_velocity_smoothing_mcdc *.gcda *.gcov *.gcno *.o *.ll *.bc

coverage: clean test_velocity_smoothing_mcdc
	./test_velocity_smoothing_mcdc
	 llvm-cov-10 gcov VelocitySmoothing.cpp

#
# STG build below
#
#
#
# generate bitcode for program under test
#
VelocitySmoothing.bc: VelocitySmoothing.cpp
	clang -O0 -I$(STGI_INC) -emit-llvm -fno-discard-value-names $< -c -o $@
	llvm-dis $@ -o $<.ll

test_velocity_smoothing_mcdc.bc: test_velocity_smoothing_mcdc.cpp
	clang -O0 -I$(STGI_INC) -emit-llvm -fno-discard-value-names $< -c -o $@
	llvm-dis $@ -o $<.ll

#
# link against STGI instrumentation bitcode
#
test_velocity_smoothing_mcdc.stgi.linked.o: test_velocity_smoothing_mcdc.bc VelocitySmoothing.bc
	llvm-link test_velocity_smoothing_mcdc.bc VelocitySmoothing.bc -o test.linked.bc
	# debug
	llvm-dis test.linked.bc -o test_linked.ll
	opt -load=${STGI_LIB}/libSTGInstrumenter.so -STGInstrumenter test.linked.bc -o test.linked.stgi.bc
	llvm-link test_linked.stgi.bc ${STGI_LIB}/stg.bc -o test_velocity_smoothing_mcdc.stgi.linked.bc
	llc -filetype=obj test_velocity_smoothing_mcdc.stgi.linked.bc

test_velocity_smoothing_mcdc.exe: test_velocity_smoothing_mcdc.stgi.linked.o
	clang++ $< -o $@


