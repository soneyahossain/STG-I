#pragma once
/*

Below are the distribution ids to be used in the stg_symbolic_variable calls

     char* stg_uniform= "uniform";
     char* stg_exponential = "exponential";
     char* stg_binomial = "binomial";
     char* stg_poisson = "poisson";
     char* stg_geometric  = "geometric";
     char* stg_normal = "normal";


These are the parameters for the distribution:
	EXPONENTIAL: $MEAN
	BINOMIAL: $NUMBER_OF_TRIALS $PROBABILITY
	POISSON: $LAMBDA
	GEOMETRIC: $PROBABILITY
	UNIFORM_INT/REAL: NONE
	NORMAL: $MEAN $STANDARD_DEVIATION

*/

/*
 * Routine for defining addresses as symbolic for constraint recording.
 * The names are used in representing the symbolic constraints.
 */


void stg_symbolic_variable_int(int* addr, const char *name); //, double range_min, double range_max, char*  dis_id, double parm_1, double param_2);
void stg_symbolic_variable_float(float* addr, const char *name); //, double range_min, double range_max, char*  dis_id, double parm_1, double param_2);
void stg_symbolic_variable_double(double* addr, const char *name); //, double range_min, double range_max, char*  dis_id, double parm_1, double param_2);


/*
 * This version creates a name for each of num elements of the array,
 * whose stride is given, using the prefix as a base of the name.
 */
void stg_symbolic_array(void* array, const char* type, int num, const char *prefix);//, double range_min, double range_max, char*  dis_id, double parm_1, double param_2);

/*
 * These calls setup and wrap the execution of a test case.
 *
 * The stg_input() calls define a concrete input value with a symbolic address.
 * There is a version for each supported type and arrays.
 * Once all symbolic inputs have values defined a call to stg_begin_test()
 * initiates STG recording.  A call to stg_end_test() terminates recording
 * and stores the collected path condition for the executed path.
 */
void stg_input_int(void* addr, int value);
void stg_input_float(void* addr, float value);
void stg_input_double(void* addr, double value);
void stg_input_array(void* array, const char* type, int num, void* values);


void stg_begin_test();
void stg_end_test();

void stg_pause_recording();  // to pause constraints record
void stg_resume_recording(); // to resume constraints record

// these calls wrap tests written using gtest, instruments only the necessary portion while ignoring all the gtest related cdde
void stg_start_intrmnt();
void stg_stop_intrmnt();


/*
 * This replaces the usual "assert()" function in order to allow stg
 * to record the test outcome.
 */
void stg_record_test(bool pred);

/*
 * These are inserted via instrumentation to update the symbolic
 * state and the recorded path condition.
 */

//handle load instructions
void stg_update_load_i1(bool* addr, char *val);
void stg_update_load_i8(void* addr, char *val);
void stg_update_load_i32(int* addr, char *val);
void stg_update_load_i64(long* addr, char* val);
void stg_update_load_float(float* addr, char *val);
void stg_update_load_double(double* addr, char *val) ;


//handle store instructions
void stg_update_store_i1(bool* addr, char *val) ;
void stg_update_store_i8(void* addr, char *val) ;
void stg_update_store_i32(int* addr, char *val) ;
void stg_update_store_i64(long* addr, char* val);
void stg_update_store_float(float* addr, char *val) ;
void stg_update_store_double(double* addr, char *val) ;


//handle casts instructions
void stg_update_cast_i1(char* key, char* val_name, char* castOp, char* srcty, char* dstty, bool value );
void stg_update_cast_i8(char* key, char* val_name, char* castOp, char* srcty, char* dstty, char value );
void stg_update_cast_i16(char* key, char* val_name, char* castOp, char* srcty, char* dstty, int value );
void stg_update_cast_i32(char* key, char* val_name, char* castOp, char* srcty, char* dstty, int value );
void stg_update_cast_i64(char* key, char* val_name, char* castOp, char* srcty, char* dstty, int value );
void stg_update_cast_float(char* key, char* val_name, char* castOp, char* srcty, char* dstty, float value );
void stg_update_cast_double(char* key, char* val_name, char* castOp, char* srcty, char* dstty, double value );


//handle globals
void stg_update_int(char *key, int val, char* type_);
void stg_update_float(char *key, float val, char* type_);
void stg_update_double(char *key, double val, char* type_);

//handle fun:: argu->fun::param map
void stg_update_char(char *key, char *val);

// binary operation handle api , such as a+c, a-c, a>b, a<z
void stg_update_op(char *key, char *lhs, char *op, char *rhs);


//handle compare inst
void stg_update_cmp(char* key, char* lhs, char* predicateName, char* rhs, char* type_ );


//handle llvm phi nodes
void stg_update_phi(char *lhs,char *valBBpairs);

//handle branch inst
void stg_update_pc(bool cnd_value, char *cnd_name);

//handle select inst
void stg_update_select(char* key, bool condition, char* t_value, char* f_value, char* type_, char* cndName);
void stg_update_prev_bb(char *bbname);

//handle scanf and sscanf inst
void  stg_update_user_input(char* address, char* value, char* type );  //what is wrong with this std::string and char *
void  stg_update_input_i32(int* addr);
void  stg_update_input_i64(long* addr);
void  stg_update_input_float(float* addr);
void  stg_update_input_double(double* addr);


//handle llvm intrinsic
void stg_update_una_intrinsic(char* result, char* arg, char* fun_name, char* ret_type);
void  stg_update_bin_intrinsic(char* result, char* fun_name, char* type, char* arg1, char* arg2 );

//handle symbolic maps
void clear_maps();
void print_maps();


//no longer being used
//void update_bb_sequence(char* key);
//void stg_test_separator(int test_id);