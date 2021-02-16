#include <iostream>
#include <map>
#include <string>
#include <regex>
#include <assert.h>
#include <climits>
#include <sys/stat.h>
#include <sys/types.h>
#include <fstream>
#include "stg.h"
#include <sstream>
#include <cmath>

// trivial initialization of map
std::map<std::string, std::string> sym_state; // <var , symbolic state>
std::map<std::string, std::string> sym_var_map; // <address of symbolic var,  symbolic name>
std::map<std::string, std::string> path_conditions; //<path_condition_count, path_condition>


//no longer required *******

//std::map<std::string, double> sym_range; // <sym_var, min> <sym_var, max>
// <adress_disID, value> will store distribution id
// <adress_dis_param1, value> will store distribution paramter 1
// <adress_dis_param2, value> will store distribution paramter 2 [this is only required for normal distributiuon as it has min and std ]
// std::map<std::string, std::string> sym_distribution;



//global varibales
int testcount = 0; //holds no of the test to create stg file
int path_condition_count = 0;
std::string path_condition;
std::string output_dir;
bool outputDirCreated = false;
bool needComma = false;
bool fileCreated = false;
std::ofstream stg_state;
std::ofstream stg_pc;
std::string prev_bb;
bool pause_recording = false;




//START: Routines for defining addresses as symbolic for constraint recording.

void stg_symbolic_variable_int(int* addr, const char* name)//, double range_min, double range_max, char* dis_id, double parm_1, double param_2)
{

    std::stringstream address;
    address << addr;

    std::string key = "v(" + address.str() + ")";
    sym_var_map[key] = name; //updating symbolic map
    sym_state[key] = name; // updating the main main also
    stg_state << "state[" << key << " --> " << name << "]\n";

    if (needComma)
            stg_pc << ",\n";
     else
            needComma = true;

    stg_pc << name << " : i32";
}

void stg_symbolic_variable_float(float* addr, const char* name)
{

    std::stringstream address;
    address << addr;

    std::string key = "v(" + address.str() + ")";
    sym_var_map[key] = name; //updating symbolic map
    sym_state[key] = name; // updating the main main also
    stg_state << "state[" << key << " --> " << name << "]\n";

    if (needComma)
         stg_pc << ",\n";
    else
         needComma = true;

    stg_pc << name << " : float";

}

void stg_symbolic_variable_double(double* addr, const char* name)//, double range_min, double range_max, char* dis_id, double parm_1, double param_2)
{

    std::stringstream address;
    address << addr;

    std::string key = "v(" + address.str() + ")";

    sym_var_map[key] = name; //updating symbolic map
    sym_state[key] = name; // updating the main main also
    stg_state << "state[" << key << " --> " << name << "]\n";

    if (needComma)
          stg_pc << ",\n";
    else
          needComma = true;

    stg_pc << name << " : double";

}


void stg_symbolic_array(void* array, const char* type, int num, const char* prefix)//, double range_min, double range_max, char* dis_id, double param_1, double param_2)
{
    // extend this if you want to support more types

    //get the size according to type
    int s = strcmp(type, "int") ? sizeof(int) : (strcmp(type, "float") ? sizeof(float) : sizeof(double));
    printf("s= %d\n", s);

    int d = floor(log10(abs(num))) + 1; // number of digits in num
    //printf("d= %d\n", d);

    if (strcmp(type, "int") == 0) {

        for (int i = 0; i < num; i++) {

            char* name = (char*)malloc(strlen(prefix) + d + 1);
            sprintf(name, "%s%d", prefix, i);
            int* array_addr = (int*)array;
            stg_symbolic_variable_int(array_addr + i, name);//, range_min, range_max, dis_id, param_1, param_2);
        }
    }
    else if (strcmp(type, "float") == 0) {

        for (int i = 0; i < num; i++) {

            char* name = (char*)malloc(strlen(prefix) + d + 1);
            sprintf(name, "%s%d", prefix, i);
            float* array_addr = (float*)array;
            stg_symbolic_variable_float((array_addr + i), name);//, range_min, range_max, dis_id, param_1, param_2);
        }
    }
    else if (strcmp(type, "double") == 0) {

        for (int i = 0; i < num; i++) {

            char* name = (char*)malloc(strlen(prefix) + d + 1);
            sprintf(name, "%s%d", prefix, i);
            double* array_addr = (double*)array;
            stg_symbolic_variable_double((array_addr + (s * i)), name);//, range_min, range_max, dis_id, param_1, param_2);
        }
    }
}

//END: Routines for defining addresses as symbolic for constraint recording.



void stg_begin_test()
{
    //create output directory and files
    if (!outputDirCreated) {
        //"stg-out-<i>"
        int i = 0;
        for (; i <= 50; ++i) {
            std::string d("stg-out-");
            d = d + std::to_string(i);
            if (mkdir(d.c_str(), 0775) == 0) {
                output_dir = d;
                std::cout << "output folder :" << output_dir << "\n";
                outputDirCreated = true;
                break;
            }
        }
    }

    assert(outputDirCreated);

    if (!fileCreated && outputDirCreated) {
        stg_state.open(output_dir + "/" + "stg_state_" + std::to_string(testcount) + ".txt");
        stg_pc.open(output_dir + "/" + "stg_pc_" + std::to_string(testcount) + ".stg");
        fileCreated = true;
        testcount++;
    }
    stg_pc << "[\n";
}

void stg_end_test()
{
    //reset state map , concrete map,
    stg_pc << "\n";

    if (path_condition_count == 1) {
        path_condition = path_conditions["PC" + std::to_string(0)] + "\n";
    }

    //start:  code to construct path condition according to constraint grammar

    for (int i = 0; i < path_condition_count - 1; i++) {
        if (i == path_condition_count - 2) {
            for (int j = 0; j < i; j++)
                path_condition += "  ";

            path_condition += "(land\n";

            for (int j = 0; j <= i; j++)
                path_condition += "  ";
            //path_condition+= "\t";   // add a tab
            path_condition += path_conditions["PC" + std::to_string(i)] + "\n";
            for (int j = 0; j <= i; j++)
                path_condition += "  ";
            path_condition += path_conditions["PC" + std::to_string(i + 1)] + "\n";
        }
        else {

            for (int j = 0; j < i; j++)
                path_condition += "  ";

            path_condition += "(land\n";

            for (int j = 0; j <= i; j++)
                path_condition += "  ";

            //path_condition+= "\t";   // add a tab
            path_condition += path_conditions["PC" + std::to_string(i)] + "\n";
        }
    }

    for (int i = path_condition_count - 1; i > 0; i--) {
        for (int j = 0; j < i - 1; j++)
            path_condition += "  ";
        path_condition += ")\n";
    }
    //std::cout << "path_condition:\n" << path_condition <<"\n";
    //end:  code to construct path condition according to constraint grammar
    stg_pc << "]\n\n";

    ///////////////////////////
}

void stg_record_test(bool pred)
{

    stg_pc << "//Test: " << (pred ? "passed" : "failed") << "\n";
    stg_pc << "\n" << path_condition << "\n";

    needComma = false;
    path_condition_count = 0;
    fileCreated = false;
    path_condition = "";

    clear_maps();
    stg_state.close(); //file close
    stg_pc.close(); //file close
}


void stg_pause_recording()
{
    pause_recording = true;
}
void stg_resume_recording()
{
    pause_recording = false;
}






void stg_update_cmp(char* key, char* lhs, char* predicateName, char* rhs, char* type_)
{
    std::string loperand(lhs);
    std::string roperand(rhs);
    std::string type(type_); // type of the operands
    std::string predicate(predicateName); // code for the comparison

    std::string lvalue;
    std::string rvalue;

    // std::cout << key << "--> " << loperand << " " << predicate << " " << roperand << "\n";

    auto itr = sym_state.find(loperand);
    if (itr != sym_state.end())
        lvalue = itr->second;
    else
        lvalue = loperand;

    itr = sym_state.find(roperand);

    if (itr != sym_state.end())
        rvalue = itr->second;
    else
        rvalue = roperand;

    //std::cout << key << "--> " << lvalue << " " << predicate << " " << rvalue << "\n";

    sym_state[key] = "(" + predicate + " " + lvalue + " " + rvalue + ")";

    //state[key] = "("+oper+" "+lvalue+" "+rvalue+")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_select(char* key, bool condition, char* t_value, char* f_value, char* type_, char* cndName)
{
    std::string tval(t_value);
    std::string fval(f_value);
    std::string type(type_); // type of the operands

    std::string t_val;
    std::string f_val;

    auto itr = sym_state.find(tval);
    if (itr != sym_state.end())
        t_val = itr->second;
    else
        t_val = tval;

    itr = sym_state.find(fval);

    if (itr != sym_state.end())
        f_val = itr->second;
    else
        f_val = fval;

    if (condition)
        sym_state[key] = t_val;
    else
        sym_state[key] = f_val;

    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";

    //need condition name

    std::string value;
    std::string key_(cndName);
    itr = sym_state.find(key_);
    if (itr != sym_state.end())
        value = itr->second;
    if (!condition)
        value = "(lnot" + value + ")";

    path_conditions["PC" + std::to_string(path_condition_count)] = value;
    path_condition_count++;

    // for experiment add this to the path condition
}

void stg_update_op(char* key, char* lhs, char* op, char* rhs)
{
    std::string loperand(lhs);
    std::string roperand(rhs);
    //std::string type(type_);  // type of the operands
    //std::string code(code_);  // code for the comparison

    std::string oper(op);
    std::string lvalue;
    std::string rvalue;

    //std::cout << key << "--> " << loperand << " " << oper << " " << roperand << "\n";

    auto itr = sym_state.find(loperand);
    if (itr != sym_state.end())
        lvalue = itr->second;
    else
        lvalue = loperand;

    itr = sym_state.find(roperand);

    if (itr != sym_state.end())
        rvalue = itr->second;
    else
        rvalue = roperand;

    //std::cout << key << "--> " << lvalue << " " << oper << " " << rvalue << "\n";

    sym_state[key] = "(" + oper + " " + lvalue + " " + rvalue + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_load_i32(int* addr, char* val)
{
    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        key = itr->second;
    else {
        //if in the else block, perhaps not symbolic , get the concrete value
        key = "(i32 " + std::to_string(*addr) + ")";
    }

    sym_state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}
//------------ testing scanf---------



void stg_update_user_input(std::string address, std::string value, std::string type)
{
    //check if this variable is symbolic, if then do update dictionary , else update symbolic map with value
    std::cout << address << "--> " << value << " " << type << "\n";

    auto itr = sym_var_map.find("v(" + address + ")");
    if (itr != sym_var_map.end()) {
        //std::cout << "found the symbolic var in map" <<"\n";
        std::string sym_name = itr->second;
        //std::cout << "found the symbolic var in map" <<"\n";

        if (needComma)
            stg_pc << ",\n";
        else
            needComma = true;

        stg_pc << sym_name << " : " << type ; //<< "\n";


        //" = " << value << ", range:[" << sym_range[address + "_min"] << "," << sym_range[address + "_max"] << "]," << getDistributionSpec(address);

        //D:["<<sym_distribution[address+"_disID"] <<","<<sym_distribution[address+"_param1"] <<","<<sym_distribution[address+"_param2"]<<"]";
        //std::cout << sym_name <<" : "<<type<< " = " << value << ", range:["<<sym_range[address+"_min"] <<","<<sym_range[address+"_max"]<<"]";
    }
    else {

        std::string key = "v(" + address + ")";
        std::string val = "( " + type + " " + value + ")";

        sym_state[key] = val;
        stg_state << "state[" << val << " --> " << val << "]\n";
    }
}

//------------ testing scanf---------

void stg_update_input_float(float* addr)
{
    std::stringstream address;
    address << addr;
    std::string address_ = address.str();
    std::string value_ = std::to_string(*addr);

    stg_update_user_input(address_, value_, "float");
}

void stg_update_input_i32(int* addr)
{
    std::stringstream address;
    address << addr;
    std::string address_ = address.str();
    std::string value_ = std::to_string(*addr);

    stg_update_user_input(address_, value_, "i32");
}

void stg_update_input_double(double* addr)
{
    std::stringstream address;
    address << addr;
    std::string address_ = address.str();
    std::string value_ = std::to_string(*addr);

    stg_update_user_input(address_, value_, "double");
}

void stg_update_input_i64(long* addr)
{
    std::stringstream address;
    address << addr;
    std::string address_ = address.str();
    std::string value_ = std::to_string(*addr);

    stg_update_user_input(address_, value_, "i64");
}

void stg_update_load_i64(long* addr, char* val)
{
    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        key = itr->second;
    else {
        //if in the else block, perhaps not symbolic , get the concrete value
        //key = std::to_string(*addr);
        key = "(i64 " + std::to_string(*addr) + ")";
    }
    sym_state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_load_i1(bool* addr, char* val)
{
    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        key = itr->second;
    else {
        //if here, then perhaps not symbolic, get the concrete value
        int c_value = *(addr); //reading the value

        key = "(i1 " + std::to_string(c_value) + ")";
        //key = value;
    }
    sym_state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}
void stg_update_store_i1(bool* addr, char* val)
{
    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(value);
    if (itr != sym_state.end())
        value = itr->second;

    else {
        int c_value = *(addr); //reading the valueƒstg_sy
        value = "(i1 " + std::to_string(c_value) + ")";
    }

    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_load_i8(void* addr, char* val)
{
    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        key = itr->second;
    else {
        //if here, then perhaps not symbolic, get the concrete value
        char* value_ptr = (char*)addr; //converting void pointer to char*
        char c_value = *value_ptr; //reading the value

        key = "(i8 " + std::to_string(c_value) + ")";
        //key = value;
    }
    sym_state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_store_double(double* addr, char* val)
{
    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(value);
    if (itr != sym_state.end())
        value = itr->second;

    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}
void stg_update_load_double(double* addr, char* val)
{
    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        key = itr->second;
    else {

        //if in the else block, perhaps not symbolic , get the concrete value

        key = "(double " + std::to_string(*addr) + ")";
    }

    sym_state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_load_float(float* addr, char* val)
{
    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        key = itr->second;
    else {
        //if in the else block, perhaps not symbolic , get the concrete value
        key = "(float " + std::to_string(*addr) + ")";
    }

    sym_state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_store_i32(int* addr, char* val)
{
    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(value);
    if (itr != sym_state.end())
        value = itr->second;

    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}
void stg_update_store_i64(long* addr, char* val)
{
    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(value);
    if (itr != sym_state.end())
        value = itr->second;

    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_store_i8(void* addr, char* val)
{
    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(value);
    if (itr != sym_state.end())
        value = itr->second;

    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_store_float(float* addr, char* val)
{
    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = sym_state.find(value);
    if (itr != sym_state.end())
        value = itr->second;

    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_char(char* key, char* val)
{
    std::string val_(val);
    std::string value;

    auto itr = sym_state.find(val);
    if (itr != sym_state.end())
        value = itr->second;
    else
        value = val_;
    //assert(itr != state.end());

    //store symbolic values in S-expression syntax
    sym_state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_cast_i1(char* key, char* val_name, char* castOp, char* srcty, char* dstty, bool value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    std::string src_type(srcty);
    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    //std::cout<<n_value << "\n";

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {

        //bool* addr = (bool*) value;
        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_cast_i8(char* key, char* val_name, char* castOp, char* srcty, char* dstty, char value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    std::string src_type(srcty);

    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    //std::cout<<n_value << "\n";

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {
        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_cast_i16(char* key, char* val_name, char* castOp, char* srcty, char* dstty, int value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    //std::string n_value(value);

    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    std::string src_type(srcty);

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {
        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_cast_i32(char* key, char* val_name, char* castOp, char* srcty, char* dstty, int value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    std::string src_type(srcty);

    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    //std::cout<<n_value << "\n";

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {
        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_cast_i64(char* key, char* val_name, char* castOp, char* srcty, char* dstty, int value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    std::string src_type(srcty);

    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    //std::cout<<n_value << "\n";

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {

        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_cast_float(char* key, char* val_name, char* castOp, char* srcty, char* dstty, float value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    std::string src_type(srcty);

    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    //std::cout<<n_value << "\n";

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {

        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_cast_double(char* key, char* val_name, char* castOp, char* srcty, char* dstty, double value)
{

    std::string value_name(val_name);
    std::string castop(castOp);
    std::string dst_type(dstty);
    std::string src_type(srcty);

    std::cout << value_name << "\n";
    std::cout << castop << "\n";
    //std::cout<<n_value << "\n";

    std::string value_;

    auto itr = sym_state.find(value_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {

        value_ = "( " + src_type + " " + std::to_string(value) + ")";
    }
    //store symbolic values in S-expression syntax
    sym_state[key] = "(" + castop + " " + dst_type + " " + value_ + ")";
    stg_state << "state[" << key << " --> " << sym_state[key] << "]\n";
}

void stg_update_una_intrinsic(char* result, char* fun_name, char* ret_type, char* arg) //changed orders
{

    std::string arg_name(arg);
    std::string fun_name_(fun_name);
    std::string type(ret_type);

    std::string value_;

    auto itr = sym_state.find(arg_name);
    if (itr != sym_state.end())
        value_ = itr->second;
    else {

        value_ = arg_name;
    }
    //store symbolic values in S-expression syntax
    sym_state[result] = "(" + fun_name_ + " " + type + " " + value_ + ")";
    stg_state << "state[" << result << " --> " << sym_state[result] << "]\n";
}


//got issue with llvm binary intrinsic, alreted paramter orders, might cause problem to other function 
void stg_update_bin_intrinsic(char* result, char* fun_name, char* type, char* arg1, char* arg2 )
{

    std::string arg_1(arg1);
    std::string arg_2(arg2);
    std::string fun_name_(fun_name);
    std::string rtype(type);

    std::string arg_val1;

    auto itr = sym_state.find(arg1);
    if (itr != sym_state.end())
        arg_val1 = itr->second;
    else {

        arg_val1 = arg_1;
    }

    std::string arg_val2;

    itr = sym_state.find(arg2);
    if (itr != sym_state.end())
        arg_val2 = itr->second;
    else {

        arg_val2 = arg_2;
    }
    //store symbolic values in S-expression syntax
    sym_state[result] = "(" + fun_name_ + " " + rtype + " " + arg_val1 + " " + arg_val2 + ")";
    stg_state << "state[" << result << " --> " << sym_state[result] << "]\n";
}

void stg_update_int(char* key, int val, char* type_)
{

    //store symbolic values in S-expression syntax
    std::string type(type_);
    sym_state[key] = "(" + type + " " + std::to_string(val) + ")";
    stg_state << "state[" << key << " --> " << val << "]\n";
}

void stg_update_float(char* key, float val, char* type_)
{

    //store symbolic values in S-expression syntax
    std::string type(type_);
    sym_state[key] = "(" + type + " " + std::to_string(val) + ")";
    stg_state << "state[" << key << " --> " << val << "]\n";
}

void stg_update_double(char* key, double val, char* type_)
{
    //store symbolic values in S-expression syntax
    std::string type(type_);
    sym_state[key] = "(" + type + " " + std::to_string(val) + ")";
    stg_state << "state[" << key << " --> " << val << "]\n";
}

void stg_update_pc(bool cnd_value, char* cnd_name)
{

    std::string value;
    std::string key(cnd_name);
    auto itr = sym_state.find(key);
    if (itr != sym_state.end())
        value = itr->second;
    if (cnd_value == 0)
        value = "(lnot" + value + ")";

    // Only update the PC if the condition is symbolic

    //std::cout << "PC"+std::to_string(path_condition_count) <<": " <<value<< "\n";

    if (!((cnd_value != 0 && value == "1") || (cnd_value == 0 && value == "0")) && fileCreated && !pause_recording) {
        path_conditions["PC" + std::to_string(path_condition_count)] = value;
        path_condition_count++;
    }
}

void stg_update_phi(char* lhs, char* valBBpairs)
{

    std::string key(lhs);
    std::string prevBB_(prev_bb);
    std::string valBBpairs_(valBBpairs);

    size_t pos = 0;
    std::string token;

    if (valBBpairs_.find(prevBB_) != std::string::npos) {
        pos = valBBpairs_.find(prevBB_);
        valBBpairs_.erase(0, pos + prevBB_.length() + 1);
        pos = valBBpairs_.find(",");
        token = valBBpairs_.substr(0, pos);
    }

    auto itr = sym_state.find(token);
    if (itr != sym_state.end())
        token = itr->second;
    sym_state[key] = token;

    stg_state << "state[" << key << " --> " << token << "]\n";
}

void stg_update_prev_bb(char* bbname)
{
    prev_bb = bbname;
}


void clear_maps()
{
    sym_state.clear();
    sym_var_map.clear();
    //sym_range.clear();
    //sym_distribution.clear();
    path_conditions.clear();
}

void print_maps()
{

    for (const auto& x : sym_var_map) {
        std::cout << x.first << ": " << x.second << "\n";
    }

    //for (const auto& x : sym_range) {
        //std::cout << x.first << ": " << x.second << "\n";
    // }

    //for (const auto& x : sym_distribution) {
       // std::cout << x.first << ": " << x.second << "\n";
   // }

    for (const auto& x : sym_state) {
        std::cout << x.first << ": " << x.second << "\n";
    }
}
void stg_start_intrmnt(){}
void stg_stop_intrmnt(){}









/* FUNCTION NO LONGER BEING USED



void stg_input_array(void* array, const char* type, int num, void* values)
{

    if (strcmp(type, "int") == 0) {

        int* array_addr = (int*)array; // casting void * to required type
        int* array_values = (int*)values; // casting void * to required type

        for (int i = 0; i < num; i++) {

            printf("value : %d\n", *(array_values + i));

            stg_input_int(array_addr + i, *(array_values + i));
        }
    }
    else if (strcmp(type, "float") == 0) {

        float* array_addr = (float*)array;
        float* array_values = (float*)values;

        for (int i = 0; i < num; i++) {

            printf("value : %f\n", *(array_values + i));

            stg_input_float((array_addr + i), *(array_values + i));
        }
    }
    else if (strcmp(type, "double") == 0) {

        double* array_addr = (double*)array;
        double* array_values = (double*)values;

        for (int i = 0; i < num; i++) {

            stg_input_double(array_addr + (sizeof(double) * i), *(double*)(array_values + (sizeof(double) * i)));
        }
    }
    else {
        // log an error message here
    }
}


void stg_input_int(void* addr, int value)
{
    std::stringstream address_;
    address_ << addr;
    std::string add = address_.str();
    // std::cout << "address:" << add << "\n";
    std::string sym_name;

    //find the symbolic name and tag the concrete value with it

    auto itr = sym_var_map.find("v(" + add + ")");
    if (itr != sym_var_map.end()) {
        sym_name = itr->second;
    }
    else {
        assert(false);
    }

    int* addr_c = (int*)addr;
    *addr_c = value;
    //std::cout << *addr_c << "\n";

    if (needComma)
        stg_pc << ",\n";
    else
        needComma = true;
    stg_pc << sym_name << " : i32"
           << " = " << value << ",range:[" << sym_range[add + "_min"] << "," << sym_range[add + "_max"] << "]," << getDistributionSpec(add);

    //<<"], D:["<<sym_distribution[add+"_disID"] <<","<<sym_distribution[add+"_param1"] <<","<<sym_distribution[add+"_param2"]<<"]";
}

void stg_input_float(void* addr, float value)
{
    std::stringstream address_;
    address_ << addr;
    std::string add = address_.str();
    std::string sym_name;

    //find the symbolic name and tag the concrete value with it

    auto itr = sym_var_map.find("v(" + add + ")");
    if (itr != sym_var_map.end()) {
        sym_name = itr->second;
    }
    else {
        assert(false);
    }

    float* addr_c = (float*)addr;
    *addr_c = value;
    //std::cout << *addr_c << "\n";
    if (needComma)
        stg_pc << ",\n";
    else
        needComma = true;

    stg_pc << sym_name << " : float"
           << " = " << value << ", range:[" << sym_range[add + "_min"] << "," << sym_range[add + "_max"] << "]," << getDistributionSpec(add);

    //<<"], D:["<<sym_distribution[add+"_disID"] <<","<<sym_distribution[add+"_param1"] <<","<<sym_distribution[add+"_param2"]<<"]";

    //stg_pc << sym_name <<" : float"<< " = " <<value;
}

void stg_input_double(void* addr, double value)
{
    std::stringstream address_;
    address_ << addr;
    std::string add = address_.str();
    std::string sym_name;

    //find the symbolic name and tag the concrete value with it

    auto itr = sym_var_map.find("v(" + add + ")");
    if (itr != sym_var_map.end()) {
        sym_name = itr->second;
    }
    else {
        assert(false);
    }

    double* addr_c = (double*)addr;
    *addr_c = value;
    //std::cout << *addr_c << "\n";
    if (needComma)
        stg_pc << ",\n";
    else
        needComma = true;

    stg_pc << sym_name << " : double"
           << " = " << value << ",range:[" << sym_range[add + "_min"] << "," << sym_range[add + "_max"] << "]," << getDistributionSpec(add);

    //<<"], D:["<<sym_distribution[add+"_disID"] <<","<<sym_distribution[add+"_param1"] <<","<<sym_distribution[add+"_param2"]<<"]";

    //stg_pc << sym_name <<" : double"<< " = " <<  value;
}



bool is_number(const std::string s)
{
    static const std::regex doubleRegex{ R"([+|-]?(?:0|[1-9]|d*)(?:|.|d*)?(?:[eE][+|-]?|d+)?)" };
    return std::regex_match(s, doubleRegex);
}
void stg_set_symbolic(const char* address, const char* val)
{

    std::string symbolicname(val);
    sym_state[address] = symbolicname; //updating symbolic map

    state[address] = symbolicname; // updating the main main also
    stg_state << "state[" << address << " --> " << symbolicname << "]\n";

    //std::cout << "stg_state[" << key << " --> " << operand << "]\n";
}


void update_bb_sequence(char* key)
{
    std::string BB_ID;
    std::string bb_name(key);
    auto itr = bb_name_to_id.find(bb_name);
    if (itr != bb_name_to_id.end()) BB_ID= itr->second;
    else
    {
        BB_ID = std::to_string(bb_id_counter);
        bb_name_to_id[bb_name]=BB_ID;
    }
    testsequence=testsequence+BB_ID;
    bb_id_counter++;
}

void stg_test_separator(int test_id)
{
   //std::cout << "duplicate test detected\n";
   auto itr = bb_sequence.find(testsequence);
   if (itr!= bb_sequence.end()) {
       std::cout << "test-"<<test_id<< " is duplicate\n";
   }else{
       bb_sequence[testsequence]=testsequence;
   }

   testsequence="";


}


std::string getDistributionSpec(std::string address)
{
    std::string dis_name = sym_distribution[address + "_disID"];
    std::string disSpec = "";

    if (dis_name.compare("uniform") == 0) {
        disSpec = dis_name;
    }
    else if (dis_name.compare("exponential") == 0 || dis_name.compare("geometric") == 0) {
        disSpec = dis_name + " (" + sym_distribution[address + "_param1"] + ")";
    }
    else if (dis_name.compare("binomial") == 0 || dis_name.compare("poisson") == 0 || dis_name.compare("normal") == 0) {
        disSpec = dis_name + " ( " + sym_distribution[address + "_param1"] + "," + sym_distribution[address + "_param2"] + " )";
    }
    else
        assert(false); // distribution name error

    return disSpec;
}

*/