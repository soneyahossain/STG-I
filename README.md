STG-I repository contains Symbolic Test Generalization (STG) instrumentatation pass and libraries for declaring program's variables as symbolic/unknown and assigning concrete values to symbolic variables. stg.h header file contains functions to declare C/C++ program's variables (int, float, boolean, double, long, array) as symbolic variables and to assign concrete values to those symbolic variables. Using LLVM-Clang compiler, instrumented C/C++ program can be converetd to LLVM bitcode. 
STG instrumentation pass can instrument that bitcode to insert addication llvm instructions into the bitcode. Once instrumented bitcode is executed, program's path conditions are generated in terms of symbolic variables and constants. 

1. [STGInstrument](https://github.com/soneyahossain/STG-I/tree/master/pass/STGInstrument) - Contains a LLVM module pass that passes LLVM bitcode only once and identifies required instructions, parse those instructions, and inserts additional instructions. Therefore, it takes a program P as a LLVM bitcode, instruments and generates a new bitcode P'. 
While we run the instrumented bitcode program p', high level execution traces (path conditions) are written in a file. Generated path conditions can later be used to perform Concolic Testing/ Model Counting etc.  

2. [lib](https://github.com/soneyahossain/STG-I/tree/master/lib)- Contains stg.h header file and stg.cpp implementation of functions decalred in the stg.h header file. Functions declared in the stg.h header file are called from source files (C/C++) to define symbolic variable and concrete value assignment, and a few functions are called during bitcode instrumentation. These function calls are inserted as additional instructions in the bitcode so that during instrumenetd bitcode excution path conditions are generated in terms of symbolic variables. 


3. [test_programs](https://github.com/soneyahossain/STG-I/tree/master/test_programs)- Contains test programs, their bitcodes, instrumented bitcodes, and output constraints files with a .stg suffix. Inside every test folder, there might be multiple folders staring with "stg-out" prefix, these folders constain output constrains files (with .stg suffix) and symbolic state updates detail logs.


Instruction to generate symbolic constarints of a program
---------------------------------------------------------

To to generate symbolic constarints of a program P -

1. Need to define which variables are symbolic varibales and need to assign concrete values to those varibales. For example, consider the below if_else_ladder.cpp program-
```
#include <stdio.h>    
#include "../lib/stg.h"    * need to include stg.h file *  

bool isGreaterOrEq(int number1, int number2)  
{  
    if (number1 == number2) {  
        return true;  
    }  
    else if (number1 > number2) {  
        return true;  
    }  
    else {  
        return false;  
    }  
}   

int main()  
{
    int x, y;  
    stg_begin_test();   // start test
    stg_symbolic_variable(&x, "X");  //making int x as symbolic
    stg_symbolic_variable(&y, "Y");  //making int y as symbolic
    stg_input_int(&x, 0);   //assigning 0 to int x 
    stg_input_int(&y, 38);   //assigning 38 to int x 
    stg_assert(isGreaterOrEq(x, y));    //checking whether test passed or failed 
    stg_end_test();  // end test
}

```
2. The next step is to generate bitcode using clang compiler  
----------------------------------------------------------------

```
clang -emit-llvm -fno-discard-value-names if_else_ladder.cpp -c -o PUT.bc

```
3. Now, need ro run llvm-opt command to instrument LLVM bitcode
----------------------------------------------------------------

in linux-

```
opt -load=..llvm/build/lib/LLVMSTGInstrument.so -symbTraceInstrumentation PUT.bc -o IPUT.bc
```
in macOS-

```
opt -load=..llvm/build/lib/LLVMSTGInstrument.dylib -symbTraceInstrumentation PUT.bc -o IPUT.bc

```

4. Generate bitcode for stg.cpp using clang compiler 
----------------------------------------------------------------

```
clang++ -std=c++11 -emit-llvm ../lib/stg.cpp -c -o stg.bc

```

5. run llvm-link command to link all modules together
----------------------------------------------------------------

```
llvm-link IPUT.bc stg.bc -o linked.bc

```

6. run llvm-llc command to compile linked file 
----------------------------------------------------------------

```
llc -filetype=obj linked.bc

```

7. run clang++ command to generate object file 
---------------------------------------------------------------------------------------------------------------------
```
8. clang++ -o a.out  linked.o
```
8. execute object file
---------------------------------------------------------------------------------------------------------------------
```
./a.out

```
