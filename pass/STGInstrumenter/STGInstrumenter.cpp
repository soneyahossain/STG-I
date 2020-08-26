// As part of Symbolic Test Generalization Project
// STGInstrumenter.cpp, a LLVM pass, developed by Soneya Binta Hossain, CS@UVA

#include "llvm/ADT/Statistic.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <algorithm>
#include <map>
#include <sstream>
#include <string>
#include <vector>
using namespace llvm;

#define DEBUG_TYPE "stginstrument"

namespace {

// Symbolic Test Generalization Instrumentation Pass

struct STGInstrumenter : public ModulePass {

    static char ID; // Pass identification, replacement for type id

    Function* stg_update_op;
    Function* stg_update_char;
    Function* stg_update_int;
    //Function* stg_set_symbolic;
    Function* stg_update_pc;
    Function* stg_update_phi;
    Function* stg_update_load_i32;
    Function* stg_update_store_i32;
    Function* stg_update_load_i8;
    Function* stg_update_store_i8;
    Function* stg_update_store_float;
    Function* stg_update_store_double;
    Function* stg_update_load_double;
    Function* stg_update_load_float;
    Function* stg_update_cmp;
    Function* stg_update_cast;
    Function* stg_update_load_i64;
    Function* stg_update_store_i64;
    Function* stg_update_float;
    Function* stg_update_double;

    Function* stg_update_input_i32;
    Function* stg_update_input_i64;
    Function* stg_update_input_float;
    Function* stg_update_input_double;
    Function* stg_update_bin_intrinsic;
    Function* stg_update_prev_bb;

   // GlobalVariable* prevBB; // global variable pointer to store basic block

    std::vector<std::string> function_doNotInstrument = {
        "stg_symbolic_variable",
        "stg_symbolic_array",
        "stg_assert",
        "stg_begin_test",
        "stg_end_test",
        "stg_set_symbolic",
        "stg_update_char",
        "stg_update_int",
        "stg_update_op",
        "stg_update_pc",
        "stg_update_phi",
        "stg_input_int",
        "printf",
        "stg_input_double",
        "stg_input_float",
        "stg_update_load_i32",
        "stg_update_store_i32",
        "stg_update_load_i8",
        "stg_update_store_i8",
        "stg_update_store_float",
        "stg_update_load_float",
        "stg_symbolic_array",
        "stg_input_array",
        "is_number",
        "stg_update_cmp",
        "stg_update_cast",
        "stg_update_load_i64",
        "stg_update_store_i64",
        "stg_update_store_double",
        "stg_update_load_double",
        "stg_update_float",
        "stg_update_double", "scanf",
        "stg_update_input_i32",
        "stg_update_input_i64",
        "stg_update_input_float","stg_oracle",
        "stg_update_input_double", "stg_record_test", "sscanf", "fprintf", "_fopen", "fgets", "fclose", "exit","stg_update_bin_intrinsic","stg_update_prev_bb"
    };


    std::vector<std::string> isInterceptable = {
            "llvm.fma.f64"
    };

    STGInstrumenter() : ModulePass(ID){}

    bool runOnModule(Module& M) override
    {

        llvm::LLVMContext& context = M.getContext(); // getting the LLVM module context
        static IRBuilder<> Builder(context);

        // print module name
        StringRef module_name = M.getName();
        outs() << "Instrumenting Module :  " << module_name << "\n";

       // prevBB = createGlob(Builder, "prev_bb", &M); // global variable to store previous BB to process phi node
        bool isSuccess = createFunc(Builder, &M); // creating function declarations for runtime symbolic handling, these functions definitions are declared inside lib/stg.h file

        for (Module::iterator F = M.begin(), y = M.end(); F != y; ++F) {
            // do not instrument functions called symbolic handling, i.e, symbolic state update
            if (std::find(function_doNotInstrument.begin(), function_doNotInstrument.end(), F->getName().str()) == function_doNotInstrument.end())
                instrumentFunction(*F, M, context);
        }

        outs() << "Instrumentation Successful "<< "\n";
        return true;
    }

    //-----------------------------------------------------------------------------------------------------------------------

    // Register the appropriate type declarations for the functions called from
    // the instrumentation.

    bool instrumentFunction(Function& F, Module& M, llvm::LLVMContext& context)
    {

        std::string function_name = F.getName().str();
        outs() << "Instrumenting function :  " << function_name << "\n";

        for (BasicBlock& BB : F) // iterating all the basic block
        {
            if (!BB.hasName())
                BB.setName("bb");

            BasicBlock* B = &BB; // getting the current BB
            IRBuilder<> builder(B); // builder for the current bb

            Instruction* I;
            for (Instruction& i : BB) // iterating all the instructions within current BB
            {
                if (!i.hasName() && !i.getType()->isVoidTy())
                    i.setName("tmp_" + F.getName()); // if the instruction doesn't have a name, giving it name

                else if( i.hasName() && !i.getType()->isVoidTy())
                    i.setName(i.getName()+"_" + F.getName()); // if the instruction doesn't have a name, giving it name

                I = &i; // current instruction
                // I->dump();  // print instruction

                if (LoadInst* loadInst = dyn_cast<LoadInst>(I)) { // read from memory

                    std::string result = loadInst->getName().str();
                    llvm::Value* result_ = builder.CreateGlobalStringPtr(result);
                    llvm::Value* loadAddress = loadInst->getPointerOperand();
                    std::string loadAddressName = loadAddress->getName().str();

                    // check if loadAddress is a global var // %tmp = load i32, i32* @x, align 4; here,  @ means global

                    if (isa<GlobalVariable>(loadAddress)) {

                        const Type* T = loadInst->getType();
                        std::string type_str;
                        llvm::raw_string_ostream type(type_str);
                        loadInst->getType()->print(type);

                        errs() << "got Global Variable :  " << loadAddressName << " with type "<< type.str() <<"\n";

                        std::vector<Value*> args;
                        args.push_back(result_);
                        args.push_back(loadInst);  //loadInst has the actual value of the global variable, can't use getInitializer as for non  consant global it will not give current value
                        args.push_back(builder.CreateGlobalStringPtr(type.str()));

                        if (T == Type::getInt32Ty(context)) {
                            CallInst::Create(stg_update_int, args)->insertAfter(I); // maybe need to handle other type globals// such as double, float, char
                        }
                        else if (T == Type::getFloatTy(context)) {
                            CallInst::Create(stg_update_float, args)->insertAfter(I);
                        }
                        else if (T == Type::getDoubleTy(context)) {
                            CallInst::Create(stg_update_double, args)->insertAfter(I);
                        }
                    }
                    else { // %tmp = load i32, i32* %x, align 4

                        llvm::Value* result_ = builder.CreateGlobalStringPtr(result);

                        std::vector<Value*> args;
                        args.push_back(loadAddress);
                        args.push_back(result_);

                        const Type* T = loadInst->getPointerOperandType();

                        if (T == Type::getInt8PtrTy(context)) {
                            CallInst::Create(stg_update_load_i8, args)->insertAfter(I);
                        }
                        else if (T == Type::getInt32PtrTy(context)) {
                            CallInst::Create(stg_update_load_i32, args)->insertAfter(I);
                        }
                        else if (T == Type::getInt64PtrTy(context)) {
                            CallInst::Create(stg_update_load_i64, args)->insertAfter(I);
                        }
                        else if (T == Type::getFloatPtrTy(context)) {
                            CallInst::Create(stg_update_load_float, args)->insertAfter(I);
                        }
                        else if (T == Type::getDoublePtrTy(context)) {
                            CallInst::Create(stg_update_load_double, args)->insertAfter(I);
                        }
                    }
                }

                else if (StoreInst* storeInst = dyn_cast<StoreInst>(I)) { // write instruction to memory

                    // handle store instructions, e.g.,  store i32 0, i32* %retval

                    // get the address
                    Value* address = storeInst->getPointerOperand(); //true address
                    // get the value to be stored at the address
                    Value* value = storeInst->getValueOperand();

                    std::string valueAsStr = "";
                    std::string type_str;
                    llvm::raw_string_ostream type(type_str);
                    value->getType()->print(type);

                    // outs() <<"StoreInst Type ==========="<<type.str() <<"\n";

                    if (ConstantInt* CI = dyn_cast<ConstantInt>(value)) // if value is integer or any constant
                    {
                        valueAsStr = "(" + type.str() + " " + getIntAsString(CI) + ")";
                    }
                    else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(value)) { // if value is float
                        valueAsStr = "(" + type.str() + " " + getFloatAsString(constfp, value) + ")";
                    }
                    else
                        valueAsStr = value->getName().str(); // not constant, rather another temporary


                    std::vector<Value*> args;
                    args.push_back(address);
                    args.push_back(builder.CreateGlobalStringPtr(valueAsStr));

                    const Type* T = storeInst->getPointerOperandType();

                    if (T == Type::getInt8PtrTy(context)) {
                        CallInst::Create(stg_update_store_i8, args)->insertAfter(I);
                    }
                    else if (T == Type::getInt32PtrTy(context)) {
                        CallInst::Create(stg_update_store_i32, args)->insertAfter(I);
                    }
                    else if (T == Type::getInt64PtrTy(context)) {
                        CallInst::Create(stg_update_store_i64, args)->insertAfter(I);
                    }
                    else if (T == Type::getFloatPtrTy(context)) {
                        CallInst::Create(stg_update_store_float, args)->insertAfter(I);
                    }
                    else if (T == Type::getDoublePtrTy(context)) {
                        CallInst::Create(stg_update_store_double, args)->insertAfter(I);
                    }

                }

                else if (BranchInst* branchInst = dyn_cast<BranchInst>(I)) {
                    if (branchInst->isConditional()) {
                        llvm::Value* brCond_value = branchInst->getCondition();
                        llvm::Value* brCond_string = builder.CreateGlobalStringPtr(brCond_value->getName().str());

                        std::vector<Value*> args;
                        args.push_back(brCond_value);
                        args.push_back(brCond_string);
                        CallInst::Create(stg_update_pc, args)->insertBefore(I);
                    }
                }

                else if (I->isCast()) { // isa<FPTruncInst>(I) || isa<FPToSIInst>(I) || isa<FPExtInst>(I) || isa<FPToUIInst>(I) || isa<ZExtInst>(I) || isa<FPExtInst>(I) || isa<TruncInst>(I) || isa<SExtInst>(I) )

                    //%X = fptrunc double 16777217.0 to float    ; yields float:16777216.0
                    llvm::Value* result = builder.CreateGlobalStringPtr(I->getName().str());

                    std::string type_str;
                    llvm::raw_string_ostream type(type_str);
                    I->getType()->print(type);

                    errs() << "Cast Type===========" << type.str() << "\n";

                    if (I->getType()->isPointerTy()) {
                        errs() << "Pointer Cast Skipping...\n";
                        continue;
                    }

                    llvm::Value* value = builder.CreateGlobalStringPtr(I->getOperand(0)->getName().str());
                    llvm::Value* castop = builder.CreateGlobalStringPtr(I->getOpcodeName());
                    llvm::Value* type_ = builder.CreateGlobalStringPtr(type.str());

                    std::vector<Value*> args;
                    args.push_back(result);
                    args.push_back(value);
                    args.push_back(castop);
                    args.push_back(type_);
                    CallInst::Create(stg_update_cast, args)->insertBefore(I);
                }
                else if (CallInst* callInst = dyn_cast<CallInst>(I)) {

                    // handle memcpy and scanf call

                    auto* F = callInst->getCalledFunction();
                    std::string functionName = F->getName().str();
                    std::string dest = I->getName().str();



                    if (IntrinsicInst* intrinsicInst = dyn_cast<IntrinsicInst>(I)) {


                        llvm::Value* arg_dest = builder.CreateGlobalStringPtr(dest);

                        std::vector<Value*> args;
                        args.push_back(arg_dest);


                        std::string type_;
                        llvm::raw_string_ostream ret_type(type_);
                        intrinsicInst->getType()->print(ret_type);


                        int i = 0;
                        std::string argument;
                        for (auto arg = F->arg_begin(); arg != F->arg_end(); ++arg) {

                            Value* arg_value = callInst->getArgOperand(i++);

                            std::string type_str;
                            llvm::raw_string_ostream type(type_str);
                            arg_value->getType()->print(type);

                            if (auto* CI = dyn_cast<ConstantInt>(arg_value)) {

                                argument = "(" + type.str() + " " + getIntAsString(CI) + ")";
                            }
                            else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(arg_value)) {

                                argument = "(" + type.str() + " " + getFloatAsString(constfp, arg_value) + ")";
                            }
                            else
                                argument = arg_value->getName().str();

                            args.push_back(builder.CreateGlobalStringPtr(argument));
                        }

                        llvm::Value* fun_name = builder.CreateGlobalStringPtr(functionName);
                        llvm::Value* rettype = builder.CreateGlobalStringPtr(ret_type.str());
                        args.push_back(fun_name);
                        args.push_back(rettype);

                        if (i == 1) {

                            errs() << "got unary Intrinsic call" << functionName << "\n";
                            CallInst::Create(stg_update_cast, args)->insertBefore(I);

                        }else if(i == 2)
                        {
                            errs() << "got binary Intrinsic call" << functionName << "\n";
                            CallInst::Create(stg_update_bin_intrinsic, args)->insertBefore(I);
                        }

                    }else if(functionName.compare("sscanf") == 0 || functionName.compare("__isoc99_sscanf") == 0)  //handle file reading
                    {

                       unsigned no_of_params = callInst->getNumArgOperands();
                       errs() <<"in sscanf no_of_params==========="<< no_of_params <<"\n";

                       for (unsigned i =2; i<no_of_params; i++)
                       {

                            llvm::Value * arg_operand = callInst->getArgOperand(i);

                            const Type* T = arg_operand->getType();
                            std::string type_str;
                            llvm::raw_string_ostream type(type_str);
                            T->print(type);

                            errs() <<"Type in the scanf ==========="<< type.str() <<"\n";   //got the type, now add instruction to get the value from this address
                            errs() <<"name ==========="<< arg_operand->getName().str() <<"\n";


                           std::vector<Value*> args;
                           args.push_back(arg_operand);

                           if (T == Type::getInt32PtrTy(context)) {
                               CallInst::Create(stg_update_input_i32, args)->insertAfter(I);
                           }
                           else if (T == Type::getInt64PtrTy(context)) {
                               CallInst::Create(stg_update_input_i64, args)->insertAfter(I);
                           }
                           else if (T == Type::getFloatPtrTy(context)) {
                               CallInst::Create(stg_update_input_float, args)->insertAfter(I);
                           }
                           else if (T == Type::getDoublePtrTy(context)) {
                               CallInst::Create(stg_update_input_double, args)->insertAfter(I);
                           }
                       }


                    }else if(functionName.find("scanf") != std::string::npos )  // handle scanf
                    {

                        llvm::Value * arg_operand = callInst->getArgOperand(1);

                        const Type* T = arg_operand->getType();
                        std::string type_str;
                        llvm::raw_string_ostream type(type_str);
                        T->print(type);

                        errs() <<"Type in the scanf ==========="<< type.str() <<"\n";   //got the type, now add instruction to get the value from this address
                        errs() <<"name ==========="<< arg_operand->getName().str() <<"\n";


                        std::vector<Value*> args;
                        args.push_back(arg_operand);

                        if (T == Type::getInt32PtrTy(context)) {
                            CallInst::Create(stg_update_input_i32, args)->insertAfter(I);
                        }
                        else if (T == Type::getInt64PtrTy(context)) {
                            CallInst::Create(stg_update_input_i64, args)->insertAfter(I);
                        }
                        else if (T == Type::getFloatPtrTy(context)) {
                            CallInst::Create(stg_update_input_float, args)->insertAfter(I);
                        }
                        else if (T == Type::getDoublePtrTy(context)) {
                            CallInst::Create(stg_update_input_double, args)->insertAfter(I);
                        }

                    }
                    else if (std::find(function_doNotInstrument.begin(), function_doNotInstrument.end(), functionName) == function_doNotInstrument.end()) {


                    //--------int add(int x, int y)--->> here x and y are parameter;  add(1,2) -->> here 1 and 2 are argument

                        int i = 0;
                        for (auto arg = F->arg_begin(); arg != F->arg_end(); ++arg) {

                            std::string param;
                            std::string argument;

                            if (auto* CI = dyn_cast<ConstantInt>(arg))
                                param = getIntAsString(CI);
                            else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(arg))
                                param = getFloatAsString(constfp, arg);
                            else
                                param = arg->getName().str();

                            // errs() << arg->getName().str() << "\n";

                            Value* arg_value = callInst->getArgOperand(i++);

                            std::string type_str;
                            llvm::raw_string_ostream type(type_str);
                            arg_value->getType()->print(type);

                            // errs() <<"Type==========="<<type.str() <<"\n";

                            if (auto* CI = dyn_cast<ConstantInt>(arg_value)) {
                                argument = "(" + type.str() + " " + getIntAsString(CI) + ")";
                            }
                            else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(arg_value)) {
                                argument = "(" + type.str() + " " + getFloatAsString(constfp, arg_value) + ")";
                            }
                            else
                                argument = arg_value->getName().str();

                            llvm::Value* arg_dest = builder.CreateGlobalStringPtr(param);
                            llvm::Value* arg_src_ = builder.CreateGlobalStringPtr(argument);

                            std::vector<Value*> args;
                            args.push_back(arg_dest);
                            args.push_back(arg_src_);
                            CallInst::Create(stg_update_char, args)->insertBefore(I);
                        }

                        // errs() << "function name:  " << functionName << "\n";
                        // errs() << " name:  " << callInst->getName().str() << "\n";

                        llvm::Value* instName = builder.CreateGlobalStringPtr(callInst->getName().str());
                        llvm::Value* funName = builder.CreateGlobalStringPtr(functionName + "_RET");

                        std::vector<Value*> args;
                        args.push_back(instName);
                        args.push_back(funName);
                        CallInst::Create(stg_update_char, args)->insertAfter(I);
                    }

                }
                else if (I->isBinaryOp()) {

                    errs() << "inside binary operator .........\n";

                    std::string result = I->getName().str(); // result
                    std::string type_str;
                    llvm::raw_string_ostream type(type_str);
                    I->getType()->print(type);

                    //errs() << "Type===========" << type.str() << "\n";

                    Value* l_op = I->getOperand(0); // left operand
                    std::string left_operand = "";

                    if (ConstantInt* CI = dyn_cast<ConstantInt>(l_op)) // if value is integer or any constant
                    {

                        left_operand = "(" + type.str() + " " + getIntAsString(CI) + ")";
                    }
                    else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(l_op)) {

                        left_operand = "(" + type.str() + " " + getFloatAsString(constfp, l_op) + ")";
                    }
                    else {

                        left_operand = l_op->getName().str();
                    }

                    // get operator
                    std::string opCodeName = I->getOpcodeName();
                    Value* r_op = I->getOperand(1); // right operand
                    std::string right_operand = "";

                    if (ConstantInt* CI = dyn_cast<ConstantInt>(r_op)) // if value is integer or any constant
                    {

                        right_operand = "(" + type.str() + " " + getIntAsString(CI) + ")";
                    }
                    else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(r_op)) {

                        right_operand = "(" + type.str() + " " + getFloatAsString(constfp, r_op) + ")";
                    }
                    else {
                        right_operand = r_op->getName().str();
                    }

                    //errs() << result << "--> " << left_operand << " " << opCodeName << " "<< right_operand << "\n";

                    llvm::Value* addAddress_ = builder.CreateGlobalStringPtr(result);
                    llvm::Value* lhs = builder.CreateGlobalStringPtr(left_operand);
                    llvm::Value* op = builder.CreateGlobalStringPtr(opCodeName);
                    llvm::Value* rhs = builder.CreateGlobalStringPtr(right_operand);

                    std::vector<Value*> args;
                    args.push_back(addAddress_);
                    args.push_back(lhs);
                    args.push_back(op);
                    args.push_back(rhs);

                    CallInst::Create(stg_update_op, args)->insertAfter(I);
                }
                else if (FCmpInst* fCmpInst = dyn_cast<FCmpInst>(I)) {


                    I->dump();

                    std::string result = fCmpInst->getName().str();

                    std::string predicate_name = (fCmpInst->getPredicateName(fCmpInst->getPredicate())).str();
                    if (predicate_name.rfind("u", 0) == 0)
                        predicate_name = "f" + predicate_name;

                    std::string type_str;
                    llvm::raw_string_ostream type(type_str);
                    fCmpInst->getOperand(0)->getType()->print(type);
                    errs() << "fCmpInst type=============" << type.str() << "\n";

                    Value* l_op = fCmpInst->getOperand(0);
                    std::string l_operand; //= l_op->getName().str();
                    Value* r_op = fCmpInst->getOperand(1);
                    std::string r_operand;
                    std::ostringstream flp;

                    if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(l_op)) {
                        l_operand = "(" + type.str() + " " + getFloatAsString(constfp, l_op) + ")";
                    }
                    else
                        l_operand = l_op->getName().str();

                    if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(r_op)) {
                        r_operand = "(" + type.str() + " " + getFloatAsString(constfp, r_op) + ")";
                    }
                    else
                        r_operand = r_op->getName().str();

                    Value* result_ = builder.CreateGlobalStringPtr(result);
                    llvm::Value* leftOperand = builder.CreateGlobalStringPtr(l_operand);
                    llvm::Value* predicate_name_ = builder.CreateGlobalStringPtr(predicate_name);
                    llvm::Value* rightOperand = builder.CreateGlobalStringPtr(r_operand);
                    llvm::Value* type_ = builder.CreateGlobalStringPtr(type.str());

                    std::vector<Value*> args;
                    args.push_back(result_);
                    args.push_back(leftOperand);
                    args.push_back(predicate_name_);
                    args.push_back(rightOperand);
                    args.push_back(type_);

                    CallInst::Create(stg_update_cmp, args)->insertAfter(I);
                }
                else if (CmpInst* cmpInst = dyn_cast<CmpInst>(I)) {

                    std::string result = cmpInst->getName().str();
                    std::string predicate_name = (cmpInst->getPredicateName(cmpInst->getPredicate())).str();

                    std::string type_str;
                    llvm::raw_string_ostream rso(type_str);
                    cmpInst->getOperand(0)->getType()->print(rso);
                    //errs() << "type=============" << rso.str() << "\n";

                    Value* l_op = I->getOperand(0);
                    Value* r_op = I->getOperand(1);
                    std::string l_operand;
                    std::string r_operand;

                    if (ConstantInt* CI = dyn_cast<ConstantInt>(r_op)) // if r_op value is integer or any constant
                    {
                        r_operand = "(" + rso.str() + " " + getIntAsString(CI) + ")";
                    }
                    else
                        r_operand = r_op->getName().str();

                    if (ConstantInt* CI = dyn_cast<ConstantInt>(l_op)) // if l_op value is integer or any constant
                    {
                        l_operand = "(" + rso.str() + " " + getIntAsString(CI) + ")";
                    }
                    else
                        l_operand = l_op->getName().str();

                    /*
                     ICMP_EQ    = 32,   ///< equal
                     ICMP_NE    = 33,   ///< not equal
                     ICMP_UGT   = 34,   ///< unsigned greater than
                     ICMP_UGE   = 35,   ///< unsigned greater or equal
                     ICMP_ULT   = 36,   ///< unsigned less than
                     ICMP_ULE   = 37,   ///< unsigned less or equal
                     ICMP_SGT   = 38,   ///< signed greater than
                     ICMP_SGE   = 39,   ///< signed greater or equal
                     ICMP_SLT   = 40,   ///< signed less than
                     ICMP_SLE   = 41,   ///< signed less or equal
                   */

                    std::vector<Value*> args;
                    args.push_back(builder.CreateGlobalStringPtr(result));
                    args.push_back(builder.CreateGlobalStringPtr(l_operand));
                    args.push_back(builder.CreateGlobalStringPtr(predicate_name));
                    args.push_back(builder.CreateGlobalStringPtr(r_operand));
                    args.push_back(builder.CreateGlobalStringPtr(rso.str()));

                    CallInst::Create(stg_update_cmp, args)->insertAfter(I);
                }

                else if (I->getOpcode() == Instruction::PHI) // phi instruction check, if phi then insert after, else insert
                {
                    std::string lhs = I->getName().str();
                    std::string val_bb_pairs = "";

                    PHINode* phi = dyn_cast<PHINode>(I);
                    int count = phi->getNumIncomingValues(); // getting the incoming values and bb names

                    for (int i = 0; i < count; i++) {

                        Value* ivalue = phi->getIncomingValue(i);
                        std::string inVal = "";

                        if (auto* ci = dyn_cast<ConstantInt>(ivalue)) {
                            inVal = getIntAsString(ci);
                        }
                        else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(ivalue)) {
                            inVal = getFloatAsString(constfp, ivalue);
                        }
                        else {
                            inVal = phi->getIncomingValue(i)->getName().str();
                        }

                        val_bb_pairs += phi->getIncomingBlock(i)->getName().str() + "," + inVal + ",";
                    }

                    llvm::Value* lhs_ = builder.CreateGlobalStringPtr(lhs);
                    //llvm::Value* prevbb_ = builder.CreateGlobalStringPtr("mock");  //delete this once tested
                    llvm::Value* val_bb_pairs_ = builder.CreateGlobalStringPtr(val_bb_pairs);

                    std::vector<Value*> args;
                    args.push_back(lhs_);
                    //args.push_back(prevbb_);
                    args.push_back(val_bb_pairs_);

                   // Instruction* non-phi =  BB.getFirstNonPHI();

                    CallInst::Create(stg_update_phi, args)->insertAfter(I);
                }

                else if (GetElementPtrInst* gep = dyn_cast<GetElementPtrInst>(I)) {
                    //TO DO
                }
                else if (AllocaInst* alloc = dyn_cast<AllocaInst>(I)) {
                    //TO DO
                }

                else if (ReturnInst* ri = dyn_cast<ReturnInst>(I)) {

                    if (ri->getNumOperands() != 0) {

                        Value* retVal = ri->getOperand(0);
                        std::string retVal_ = "";

                        if (ConstantInt* CI = dyn_cast<ConstantInt>(retVal)) {

                            retVal_ = getIntAsString(CI);
                        }
                        else if (ConstantFP* constfp = llvm::dyn_cast<llvm::ConstantFP>(retVal)) {

                            retVal_ = getFloatAsString(constfp, retVal);
                        }
                        else {

                            retVal_ = retVal->getName().str();
                        }

                        std::string functionName_ = F.getName().str() + "_RET";
                        llvm::Value* functionName = builder.CreateGlobalStringPtr(functionName_);
                        llvm::Value* retVar_ = builder.CreateGlobalStringPtr(retVal_);

                        std::vector<Value*> args;
                        args.push_back(functionName);
                        args.push_back(retVar_);
                        CallInst::Create(stg_update_char, args)->insertBefore(I);
                    }
                }
                else {
                    // errs() << "unknown instruction\n";
                }
            }
            // set the global value with BB name
            //Constant* bb_name = builder.CreateGlobalStringPtr(BB.getName().str());
            //prevBB->setInitializer(bb_name);

            llvm::Value* bb_name = builder.CreateGlobalStringPtr(BB.getName().str());

            std::vector<Value*> args;
            args.push_back(bb_name);
            CallInst::Create(stg_update_prev_bb, args)->insertBefore(I);



        }

        return true;
    }

    //-------------------------------------------------------------------------------------------------
    std::string getFloatAsString(ConstantFP* constfp, Value* retVal)
    {

        if (retVal->getType()->isDoubleTy()) {

            double fpval = (constfp->getValueAPF()).convertToDouble();
            return std::to_string(fpval);
        }
        else if (retVal->getType()->isFloatTy()) {

            float fpval = (constfp->getValueAPF()).convertToFloat();
            return std::to_string(fpval);
        }
        else
            return "";
    }

    std::string getIntAsString(ConstantInt* CI)
    {

        if (CI->getType()->isIntegerTy(1)) {
            return std::to_string(CI->getZExtValue());
        }
        else
            return std::to_string(CI->getSExtValue());
    }

   //--------------------------------------------------------------------------------------------


    bool createFunc(IRBuilder<>& Builder, Module* ModuleOb)
    {

        llvm::LLVMContext& context = ModuleOb->getContext();

        std::vector<Type*> arg1(4, Builder.getInt8PtrTy());
        FunctionType* funcType1 = llvm::FunctionType::get(Builder.getVoidTy(), arg1, false);
        stg_update_op = llvm::Function::Create(
            funcType1, llvm::Function::ExternalLinkage, "stg_update_op", ModuleOb);
        stg_update_cast = llvm::Function::Create(funcType1, llvm::Function::ExternalLinkage,
            "stg_update_cast", ModuleOb);

        std::vector<Type*> arg2;
        arg2.push_back(Builder.getInt1Ty());
        arg2.push_back(Builder.getInt8PtrTy());

        FunctionType* funcType2 = llvm::FunctionType::get(Builder.getVoidTy(), arg2, false);
        stg_update_pc = llvm::Function::Create(
            funcType2, llvm::Function::ExternalLinkage, "stg_update_pc", ModuleOb);


        /*
        std::vector<Type*> arg3(2, Builder.getInt8PtrTy());
        FunctionType* funcType3 = llvm::FunctionType::get(Builder.getVoidTy(), arg3, false);
        stg_set_symbolic = llvm::Function::Create(funcType3, llvm::Function::ExternalLinkage,
            "stg_set_symbolic", ModuleOb);
         */

        std::vector<Type*> arg4(2, Builder.getInt8PtrTy());
        FunctionType* funcType4 = llvm::FunctionType::get(Builder.getVoidTy(), arg4, false);
        stg_update_char = llvm::Function::Create(funcType4, llvm::Function::ExternalLinkage,
            "stg_update_char", ModuleOb);

        std::vector<Type*> arg5(2, Builder.getInt8PtrTy());
        FunctionType* funcType5 = llvm::FunctionType::get(Builder.getVoidTy(), arg5, false);
        stg_update_phi = llvm::Function::Create(
            funcType5, llvm::Function::ExternalLinkage, "stg_update_phi", ModuleOb);

        std::vector<Type*> arg6;
        arg6.push_back(Builder.getInt8PtrTy());
        arg6.push_back(Builder.getInt32Ty());
        arg6.push_back(Builder.getInt8PtrTy());
        FunctionType* funcType6 = llvm::FunctionType::get(Builder.getVoidTy(), arg6, false);
        stg_update_int = llvm::Function::Create(
            funcType6, llvm::Function::ExternalLinkage, "stg_update_int", ModuleOb);

        std::vector<Type*> arg7;
        arg7.push_back(Type::getInt32PtrTy(context));
        arg7.push_back(Builder.getInt8PtrTy());
        FunctionType* funcType7 = llvm::FunctionType::get(Builder.getVoidTy(), arg7, false);
        stg_update_load_i32 = llvm::Function::Create(funcType7, llvm::Function::ExternalLinkage,
            "stg_update_load_i32", ModuleOb);


        //std::vector<Type*> arg_scanf;
        //arg_scanf.push_back(Type::getInt32PtrTy(context));
        //arg_scanf.push_back(Builder.getInt8PtrTy());
        //FunctionType* funcType_arg_scanf = llvm::FunctionType::get(Builder.getVoidTy(), Type::getInt32PtrTy(context), false);

        stg_update_input_i32 = llvm::Function::Create(llvm::FunctionType::get(Builder.getVoidTy(), Type::getInt32PtrTy(context), false), llvm::Function::ExternalLinkage,
                                        "stg_update_input_i32", ModuleOb);
        stg_update_input_i64 = llvm::Function::Create(llvm::FunctionType::get(Builder.getVoidTy(), Type::getInt64PtrTy(context), false), llvm::Function::ExternalLinkage,
                                                 "stg_update_input_i64", ModuleOb);
        stg_update_input_float = llvm::Function::Create(llvm::FunctionType::get(Builder.getVoidTy(), Type::getFloatPtrTy(context), false), llvm::Function::ExternalLinkage,
                                                   "stg_update_input_float", ModuleOb);
        stg_update_input_double = llvm::Function::Create(llvm::FunctionType::get(Builder.getVoidTy(), Type::getDoublePtrTy(context), false), llvm::Function::ExternalLinkage,
                                                    "stg_update_input_double", ModuleOb);



        stg_update_store_i32 = llvm::Function::Create(funcType7, llvm::Function::ExternalLinkage,
            "stg_update_store_i32", ModuleOb);
        stg_update_load_i8 = llvm::Function::Create(funcType4, llvm::Function::ExternalLinkage,
            "stg_update_load_i8", ModuleOb);
        stg_update_store_i8 = llvm::Function::Create(funcType4, llvm::Function::ExternalLinkage,
            "stg_update_store_i8", ModuleOb);

        std::vector<Type*> arg9;
        arg9.push_back(Type::getFloatPtrTy(context));
        arg9.push_back(Builder.getInt8PtrTy());
        FunctionType* funcType9 = llvm::FunctionType::get(Builder.getVoidTy(), arg9, false);
        stg_update_load_float = llvm::Function::Create(funcType9, llvm::Function::ExternalLinkage,
            "stg_update_load_float", ModuleOb);
        stg_update_store_float = llvm::Function::Create(funcType9, llvm::Function::ExternalLinkage,
            "stg_update_store_float", ModuleOb);

        std::vector<Type*> arg10(5, Builder.getInt8PtrTy());
        FunctionType* funcType10 = llvm::FunctionType::get(Builder.getVoidTy(), arg10, false);
        stg_update_cmp = llvm::Function::Create(funcType10, llvm::Function::ExternalLinkage,
            "stg_update_cmp", ModuleOb);

        std::vector<Type*> arg11;
        arg11.push_back(Type::getInt64PtrTy(context));
        arg11.push_back(Builder.getInt8PtrTy());
        FunctionType* funcType11 = llvm::FunctionType::get(Builder.getVoidTy(), arg11, false);
        stg_update_load_i64 = llvm::Function::Create(funcType11, llvm::Function::ExternalLinkage,
            "stg_update_load_i64", ModuleOb);
        stg_update_store_i64 = llvm::Function::Create(funcType11, llvm::Function::ExternalLinkage,
            "stg_update_store_i64", ModuleOb);

        std::vector<Type*> arg12;
        arg12.push_back(Type::getDoublePtrTy(context));
        arg12.push_back(Builder.getInt8PtrTy());
        FunctionType* funcType12 = llvm::FunctionType::get(Builder.getVoidTy(), arg12, false);
        stg_update_store_double = llvm::Function::Create(funcType12, llvm::Function::ExternalLinkage,
            "stg_update_store_double", ModuleOb);
        stg_update_load_double = llvm::Function::Create(funcType12, llvm::Function::ExternalLinkage,
            "stg_update_load_double", ModuleOb);

        std::vector<Type*> arg13;
        arg13.push_back(Type::getInt8PtrTy(context));
        arg13.push_back(Builder.getFloatTy());
        arg13.push_back(Type::getInt8PtrTy(context));
        stg_update_float = llvm::Function::Create(
            llvm::FunctionType::get(Builder.getVoidTy(), arg13, false),
            llvm::Function::ExternalLinkage, "stg_update_float", ModuleOb);

        std::vector<Type*> arg14;
        arg14.push_back(Type::getInt8PtrTy(context));
        arg14.push_back(Builder.getDoubleTy());
        arg14.push_back(Type::getInt8PtrTy(context));
        stg_update_double = llvm::Function::Create(
            llvm::FunctionType::get(Builder.getVoidTy(), arg14, false),
            llvm::Function::ExternalLinkage, "stg_update_double", ModuleOb);

        std::vector<Type*> arg15(5, Builder.getInt8PtrTy());
        stg_update_bin_intrinsic = llvm::Function::Create(
                 llvm::FunctionType::get(Builder.getVoidTy(), arg15, false),
                 llvm::Function::ExternalLinkage, "stg_update_bin_intrinsic", ModuleOb);


        stg_update_prev_bb = llvm::Function::Create(
                        llvm::FunctionType::get(Builder.getVoidTy(), Builder.getInt8PtrTy(), false),
                        llvm::Function::ExternalLinkage, "stg_update_prev_bb", ModuleOb);


        // errs() << "function declarations created successfully"<< "\n";
        return true;
    }

/*
    GlobalVariable* createGlob(IRBuilder<>& Builder, std::string Name, Module* ModuleOb)
    {
          ModuleOb->getOrInsertGlobal(Name, Builder.getInt8PtrTy());
          GlobalVariable *gVar = ModuleOb->getNamedGlobal(Name);
          gVar->setLinkage(GlobalValue::ExternalLinkage);
          gVar->setAlignment(4);

          //Constant* bb_name = Builder.CreateGlobalStringPtr("entry");
          //gVar->setInitializer(bb_name);
          return gVar;
    }
*/

//-----------------------------------------------------------------------------------------------------------------------
};
} // namespace

char STGInstrumenter::ID = 0;
static RegisterPass<STGInstrumenter> X("STGInstrumenter", "A SGT Instrumentation Pass ");