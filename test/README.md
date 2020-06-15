
Instructions to run STGI pass and constraints generation
------------------------------------------------------------------

This directory contains classify.cpp program, command lines to generate bitcodes from C/C++ file using clang, instrument generated bitcodes using SGT instrumentation pass, link required libraries and finally, executing instrumented object file to generate symbolic constraints (path conditions). 
[lib](https://github.com/soneyahossain/STG-I/tree/master/lib) contains stg.h header file and and its implementation in stg.cpp file.
Instructions to build LLVM and SGTI pass can be found in the pass [readme](https://github.com/soneyahossain/STG-I/blob/master/pass/README.md)

Run below commands to test classify.cpp program:
---------------------------------------------------
1. Clone this repository using "https://github.com/soneyahossain/STG-I.git" 
2. cd STG-I/test
3. bash commandLine.sh

