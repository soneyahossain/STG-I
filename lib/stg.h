/*
 * Routine for defining addresses as symbolic for constraint recording.
 * The names are used in representing the symbolic constraints.
 */
extern "C" void stg_symbolic_variable(void* addr, const char *name);

/* 
 * This version creates a name for each of num elements of the array,
 * whose stride is given, using the prefix as a base of the name.
 */
extern "C" void stg_symbolic_array(void* array, const char* type, int num, const char *prefix);

/*
 * These calls setup and wrap the execution of a test case.
 *
 * The stg_input() calls define a concrete input value with a symbolic address.
 * There is a version for each supported type and arrays.
 * Once all symbolic inputs have values defined a call to stg_begin_test()
 * initiates STG recording.  A call to stg_end_test() terminates recording
 * and stores the collected path condition for the executed path.
 */
extern "C" void stg_input_int(void* addr, int value);
extern "C" void stg_input_float(void* addr, float value);
extern "C" void stg_input_double(void* addr, double value);
extern "C" void stg_input_array(void* array, const char* type, int num, void* values);


extern "C" void stg_begin_test();
extern "C" void stg_end_test();

/*
 * This replaces the usual "assert()" function in order to allow stg
 * to record the test outcome.
 */
extern "C" void stg_assert(bool pred);

/*
 * These are inserted via instrumentation to update the symbolic
 * state and the recorded path condition.
 */

extern "C" void stg_update_load_i32(int* addr, char *val);
extern "C" void stg_update_store_i32(int* addr, char *val) ;
extern "C" void stg_update_load_i8(void* addr, char *val);
extern "C" void stg_update_load_i64(long* addr, char* val);
extern "C" void stg_update_store_i8(void* addr, char *val) ;
extern "C" void stg_update_store_i64(long* addr, char* val);
extern "C" void stg_update_load_float(float* addr, char *val);
extern "C" void stg_update_store_float(float* addr, char *val) ;
extern "C" void stg_update_store_double(double* addr, char *val) ;
extern "C" void stg_update_load_double(double* addr, char *val) ;
extern "C" void stg_update_char(char *key, char *val);
extern "C" void stg_update_cast(char* key, char* val, char* castOp, char* typeTocast );

extern "C" void stg_update_int(char *key, int val, char* type_);
extern "C" void stg_update_float(char *key, float val, char* type_);
extern "C" void stg_update_double(char *key, double val, char* type_);


extern "C" void stg_update_op(char *key, char *lhs, char *op, char *rhs);
extern "C" void stg_update_cmp(char* key, char* lhs, char* predicateName, char* rhs, char* type_ );
extern "C" void stg_update_pc(bool cnd_value, char *cnd_name);
extern "C" void stg_update_phi(char *lhs, char *prevBB, char *valBBpairs);