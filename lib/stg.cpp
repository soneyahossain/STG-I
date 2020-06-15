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
std::map<std::string, std::string> state;
std::map<std::string, std::string> sym_state;
std::map<std::string, std::string> con_state;
std::map<std::string, std::string> path_conditions;

int testcount = 0;
int path_condition_count = 0;
std::string path_condition;
std::string output_dir;
bool outputDirCreated = false;
bool needComma = false;
bool fileCreated = false;
std::ofstream stg_state;
std::ofstream stg_pc;

bool is_number(const std::string s)
{
    static const std::regex doubleRegex{ R"([+|-]?(?:0|[1-9]|d*)(?:|.|d*)?(?:[eE][+|-]?|d+)?)" };
    return std::regex_match(s, doubleRegex);
}

void stg_set_symbolic(const char* key, const char* val)
{

    std::string operand(val);

    sym_state[key] = operand; //updating symbolic map

    state[key] = operand; // updating the main main also
    stg_state << "state[" << key << " --> " << operand << "]\n";

    //std::cout << "stg_state[" << key << " --> " << operand << "]\n";
}

void stg_update_cmp(char* key, char* lhs, char* predicateName, char* rhs, char* type_ )
{
    std::string loperand(lhs);
    std::string roperand(rhs);
    std::string type(type_);  // type of the operands
    std::string predicate(predicateName);  // code for the comparison

    std::string lvalue;
    std::string rvalue;

    std::cout << key << "--> " << loperand << " " << predicate << " " << roperand << "\n";

    auto itr = state.find(loperand);
    if (itr != state.end())
        lvalue = itr->second;
    else
        lvalue = loperand;

    itr = state.find(roperand);

    if (itr != state.end())
        rvalue = itr->second;
    else
        rvalue = roperand;

    std::cout << key << "--> " << lvalue << " " << predicate << " " << rvalue << "\n";


    state[key] = "(" + predicate + " " + lvalue + " " + rvalue + ")";

    //state[key] = "("+oper+" "+lvalue+" "+rvalue+")";
    stg_state << "state[" << key << " --> " << state[key] << "]\n";
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

    std::cout << key << "--> " << loperand << " " << oper << " " << roperand << "\n";

    auto itr = state.find(loperand);
    if (itr != state.end())
        lvalue = itr->second;
    else
        lvalue = loperand;

    itr = state.find(roperand);

    if (itr != state.end())
        rvalue = itr->second;
    else
        rvalue = roperand;

    std::cout << key << "--> " << lvalue << " " << oper << " " << rvalue << "\n";


    /*

    if (oper.find("+") != std::string::npos) {
        if (is_number(lvalue) && is_number(rvalue)) {

            double lval = atof(lvalue.c_str());
            double rval = atof(rvalue.c_str());

            double result = result = lval + rval;

            if (std::floor(result) == result)
                state[key] = std::to_string((int)result);
            else
                state[key] = std::to_string(result);
        }
    }
    else if (oper.find("-") != std::string::npos) {

        if (is_number(lvalue) && is_number(rvalue)) {

            double lval = atof(lvalue.c_str());
            double rval = atof(rvalue.c_str());

            double result = lval - rval;

            if (std::floor(result) == result)
                state[key] = std::to_string((int)result);
            else
                state[key] = std::to_string(result);
        }
    }

    else if (oper.find("*") != std::string::npos) {

        if (is_number(lvalue) && is_number(rvalue)) {

            double lval = atof(lvalue.c_str());
            double rval = atof(rvalue.c_str());

            double result = lval * rval;

            if (std::floor(result) == result)
                state[key] = std::to_string((int)result);
            else
                state[key] = std::to_string(result);
        }
    }

    else if (oper.find("/") != std::string::npos) {

        if (is_number(lvalue) && is_number(rvalue)) {

            double lval = atof(lvalue.c_str());
            double rval = atof(rvalue.c_str());

            double result = lval / rval;

            if (std::floor(result) == result)
                state[key] = std::to_string((int)result);
            else
                state[key] = std::to_string(result);
        }
    }

    else
        state[key] = "(" + oper + " " + lvalue + " " + rvalue + ")";

    */

    state[key] = "("+oper+" "+lvalue+" "+rvalue+")";
    stg_state << "state[" << key << " --> " << state[key] << "]\n";
}


void stg_update_load(int* addr, char* val)
{

    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(key);
    if (itr != state.end())
        key = itr->second;

    state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}
void stg_update_load_i64(long* addr, char* val)
{

    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(key);
    if (itr != state.end())
        key = itr->second;

    state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_load_i8(void* addr, char* val)
{

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(key);
    if (itr != state.end())
        key = itr->second;

    state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_store_double(double* addr, char* val)
{

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(value);
    if (itr != state.end())
        value = itr->second;

    state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}
void stg_update_load_double(double* addr, char* val)
{

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(key);
    if (itr != state.end())
        key = itr->second;

    state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}

void stg_update_store(int* addr, char* val)
{

    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(value);
    if (itr != state.end())
        value = itr->second;

    state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}
void stg_update_store_i64(long* addr, char* val)
{

    //std::cout << "stg_address__[" << add << " --> " << val << "]\n";

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(value);
    if (itr != state.end())
        value = itr->second;

    state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_store_i8(void* addr, char* val)
{

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(value);
    if (itr != state.end())
        value = itr->second;

    state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_load_float(float* addr, char* val)
{

    std::stringstream loadaddress;
    loadaddress << addr;
    std::string key = "v(" + loadaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(key);
    if (itr != state.end())
        key = itr->second;

    state[val] = key;
    stg_state << "state[" << val << " --> " << key << "]\n";
}
void stg_update_store_float(float* addr, char* val)
{

    std::stringstream storeaddress;
    storeaddress << addr;
    std::string key = "v(" + storeaddress.str() + ")";
    std::string value(val);

    auto itr = state.find(value);
    if (itr != state.end())
        value = itr->second;

    state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}

void stg_update_char(char* key, char* val)
{

    std::string val_(val);
    std::string value;

    auto itr = state.find(val);
    if (itr != state.end())
        value = itr->second;
    else
        value = val_;
    //assert(itr != state.end());

    //store symbolic values in S-expression syntax
    state[key] = value;
    stg_state << "state[" << key << " --> " << value << "]\n";
}


void stg_update_cast(char* key, char* val, char* castOp, char* typeTocast )
{

    std::string val_(val);
    std::string castop(castOp);
    std::string typetocast(typeTocast);



    std::string value;

    auto itr = state.find(val);
    if (itr != state.end())
        value = itr->second;
    else
        value = val_;
    //assert(itr != state.end());

    //store symbolic values in S-expression syntax
    state[key] = "("+castop+" "+typetocast+" "+ value+")";
    stg_state << "state[" << key << " --> " << state[key] << "]\n";
}


void stg_update_int(char* key, int val)
{

    //store symbolic values in S-expression syntax
    state[key] = std::to_string(val);
    stg_state << "state[" << key << " --> " << val << "]\n";
}

void stg_update_float(char* key, float val)
{

    //store symbolic values in S-expression syntax
    state[key] = std::to_string(val);
    stg_state << "state[" << key << " --> " << val << "]\n";
}

void stg_update_double(char* key, double val)
{
    //store symbolic values in S-expression syntax
    state[key] = std::to_string(val);
    stg_state << "state[" << key << " --> " << val << "]\n";
}


void stg_update_pc(bool cnd_value, char* cnd_name)
{

    std::string value;
    std::string key(cnd_name);
    auto itr = state.find(key);
    if (itr != state.end())
        value = itr->second;
    if (cnd_value == 0)
        value = "(lnot" + value+")";

    // Only update the PC if the condition is symbolic

    if (!((cnd_value != 0 && value == "1") || (cnd_value == 0 && value == "0"))) {
        path_conditions["PC"+std::to_string(path_condition_count)]=value;
        std::cout << "PC"+std::to_string(path_condition_count) <<": " <<value<< "\n";
        path_condition_count++;
    }


}

void stg_update_phi(char* lhs, char* prevBB, char* valBBpairs)
{

    std::string key(lhs);
    std::string prevBB_(prevBB);
    std::string valBBpairs_(valBBpairs);

    size_t pos = 0;
    std::string token;

    if (valBBpairs_.find(prevBB_) != std::string::npos) {
        pos = valBBpairs_.find(prevBB_);
        valBBpairs_.erase(0, pos + prevBB_.length() + 1);
        pos = valBBpairs_.find(",");
        token = valBBpairs_.substr(0, pos);
    }

    auto itr = state.find(token);
    if (itr != state.end())
        token = itr->second;
    state[key] = token;

    stg_state << "state[" << key << " --> " << token << "]\n";
}

void stg_end_test()
{
    //reset state map , concrete map,
    needComma=false;
    path_condition_count=0;
    fileCreated = false;
    state.clear();
    path_condition.clear();
    //con_state.clear();
    state = sym_state;

    path_condition.clear();

    stg_state.close(); //file close
    stg_pc.close(); //file close
    //clear maps
}

void stg_symbolic_variable(void* addr, const char* name)
{
    std::stringstream address_;
    address_ << addr;

    con_state[address_.str()] = name;   // address:symbolicName

    std::string add = "v(" + address_.str() + ")";

    stg_set_symbolic(add.c_str(), name);
    //stg_state << "state[" << add << " --> " << name << "]\n";
    std::cout << "stg_address[" << add << " --> " << name << "]\n";
}

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

void stg_input_int(void* addr, int value)
{
    std::stringstream address_;
    address_ << addr;
    std::string add = address_.str();
    std::cout << "address:" << add << "\n";
    std::string sym_name;

    //find the symbolic name and tag the concrete value with it

    auto itr = con_state.find(add);
    if (itr != con_state.end()) {
        sym_name = itr->second;
    }
    else {
        assert(false);
    }

    int* addr_c = (int*)addr;
    *addr_c = value;
    std::cout << *addr_c << "\n";

    if(needComma )stg_pc <<",\n";
    else needComma=true;
    stg_pc << sym_name <<" : i32"<< " = " << value;
}

void stg_input_float(void* addr, float value)
{
    std::stringstream address_;
    address_ << addr;
    std::string add = address_.str();
    std::string sym_name;

    //find the symbolic name and tag the concrete value with it

    auto itr = con_state.find(add);
    if (itr != con_state.end()) {
        sym_name = itr->second;
    }
    else {
        assert(false);
    }

    float* addr_c = (float*)addr;
    *addr_c = value;
    std::cout << *addr_c << "\n";
    if(needComma )stg_pc <<",\n";
        else needComma=true;
    stg_pc << sym_name <<" : float"<< " = " <<value;
}

void stg_input_double(void* addr, double value)
{
    std::stringstream address_;
    address_ << addr;
    std::string add = address_.str();
    std::string sym_name;

    //find the symbolic name and tag the concrete value with it

    auto itr = con_state.find(add);
    if (itr != con_state.end()) {
        sym_name = itr->second;
    }
    else {
        assert(false);
    }

    double* addr_c = (double*)addr;
    *addr_c = value;
    std::cout << *addr_c << "\n";
    if(needComma )stg_pc <<",\n";
        else needComma=true;
    stg_pc << sym_name <<" : double"<< " = " <<  value;
}

void stg_assert(bool pred)
{

    stg_pc << "\n]\n\n";

    stg_pc << "//Test: " << (pred ? "passed" : "failed") << "\n";

    std::cout << "map size: " << path_condition_count <<"\n";


    if(path_condition_count==1)
    {
     path_condition= path_conditions["PC"+std::to_string(0)]+"\n";
    }



    //start:  code to construct path condition according to constraint grammar

    for( int i=0; i< path_condition_count-1 ; i++ )
    {
                    if( i == path_condition_count-2)
                    {
                          for( int j =0 ; j< i; j++)
                              path_condition+="  ";

                          path_condition+= "(land\n";

                          for( int j =0 ; j<= i; j++)
                              path_condition+="  ";
                          //path_condition+= "\t";   // add a tab
                          path_condition+= path_conditions["PC"+std::to_string(i)]+"\n";
                          for( int j =0 ; j<= i; j++)
                              path_condition+="  ";
                          path_condition+= path_conditions["PC"+std::to_string(i+1)]+"\n";
                    }
                    else
                    {

                      for( int j =0 ; j< i; j++)
                          path_condition+="  ";

                      path_condition+= "(land\n";

                      for( int j =0 ; j<= i; j++)
                          path_condition+="  ";

                      //path_condition+= "\t";   // add a tab
                      path_condition+= path_conditions["PC"+std::to_string(i)]+"\n";
                    }
    }

    for( int i = path_condition_count-1; i>0 ; i-- )
    {
             for( int j =0 ; j< i-1; j++)
               path_condition+="  ";
             path_condition+=")\n";
    }
    //std::cout << "path_condition:\n" << path_condition <<"\n";
    //end:  code to construct path condition according to constraint grammar

    stg_pc << "\n" << path_condition << "\n";

}

void stg_symbolic_array(void* array, const char* type, int num, const char* prefix)
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
            stg_symbolic_variable(array_addr + i, name);
        }
    }
    else if (strcmp(type, "float") == 0) {

        for (int i = 0; i < num; i++) {

            char* name = (char*)malloc(strlen(prefix) + d + 1);
            sprintf(name, "%s%d", prefix, i);
            float* array_addr = (float*)array;
            stg_symbolic_variable((array_addr + i), name);
        }
    }
    else if (strcmp(type, "double") == 0) {

        for (int i = 0; i < num; i++) {

            char* name = (char*)malloc(strlen(prefix) + d + 1);
            sprintf(name, "%s%d", prefix, i);
            double* array_addr = (double*)array;
            stg_symbolic_variable((array_addr + (s * i)), name);
        }
    }
}

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
