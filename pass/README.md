
Getting the Source Code and Building LLVM
---------------------------------------------------------------------------------------------------------------------
Please follow https://llvm.org/docs/GettingStarted.html#getting-the-source-code-and-building-llvm to download and install LLVM 10 from source code. 


[STGInstrument](https://github.com/soneyahossain/STG-I/tree/master/pass/STGInstrument) folder contains Symbolic Test Generalization Instrumentation pass for instrumenting LLVM bitcode 

Instructions to run this pass:
---------------------------------------------------------------------------------------------------------------------

1. Create a folder inside your **..\llvm\lib\Transforms** directory (such as STGInstrument) and copy STGInstrument\CMakeLists.txt, STGInstrument\STGInstrument.cpp, STGInstrument\Sym_trace.exports files into the folder.
2. Add "add_subdirectory(STGInstrument)" in ..\llvm\lib\Transforms\CMakeLists.txt file
3. Run "make" command to build the llvm with STGInstrument pass, to expedite the build process utilize multiple cores by using " make -j number_of_cores" command, i.e., "make -j 7" or "make -j 5"
4. A file called LLVMSTGInstrument.so will be generated in your ... /build/lib/ directory (In case of macOS LLVMSTGInstrument.dylib file will be generated)
5. Now, once LLVM is successfully built, follow [readme](https://github.com/soneyahossain/STG-I/blob/master/README.md) to instrumentation LLVM bitcode and constraints generation

