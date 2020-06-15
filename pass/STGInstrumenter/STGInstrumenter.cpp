//===- STGInstrument.cpp a LLVM pass developed by Soneya Binta Hossain, CS@UVA" ---------------===//
//
//===----------------------------------------------------------------------===//
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Verifier.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include <vector>
#include <string>
#include <sstream>
#include <map>
#include <algorithm>
using namespace llvm;

#define DEBUG_TYPE "stginstrument"

namespace {

// Symbolic Trace Instrumentation Pass

struct STGInstrumenter: public ModulePass {

    static char ID; // Pass identification, replacement for type id
    //int symbolic_var_counter = 0; // to generate symbolic variable e.g. S0, S1
    //int isFileCleared = 0; // before instrumenting a program, clear the file only once and this value prevents from further clear call untill finish
    Function* stg_update_op;
    Function* stg_update_char;
    Function* stg_update_int;
    Function* stg_set_symbolic;
    Function* stg_update_pc;
    Function* stg_update_phi;
    Function* stg_update_load;
    Function* stg_update_store;
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

    GlobalVariable* prevBB;
    //std::map<std::string, GlobalVariable*> mapOfGV;
    //std::map<std::string, std::string> bitcastMap;

    std::vector<std::string> function_doNotInstrument = {"stg_symbolic_variable", "stg_symbolic_array", "stg_assert", "stg_begin_test", "stg_end_test", "stg_set_symbolic", "stg_update_char",
    "stg_update_int", "stg_update_op", "stg_update_pc", "stg_update_phi", "stg_input_int", "printf", "stg_input_double", "stg_input_float","stg_update_load" ,"stg_update_store", "stg_update_load_i8" ,"stg_update_store_i8",
    "stg_update_store_float","stg_update_load_float", "stg_symbolic_array", "stg_input_array","is_number","stg_update_cmp", "stg_update_cast","stg_update_load_i64","stg_update_store_i64", "stg_update_store_double","stg_update_load_double","stg_update_float","stg_update_double"};

    STGInstrumenter() : ModulePass(ID){}

    bool runOnModule(Module& M) override
    {

        llvm::LLVMContext& context = M.getContext();
        static IRBuilder<> Builder(context);
        Module* ModuleOb = &M;
        prevBB = createGlob(Builder, "prev_bb",ModuleOb );  //global variable to store previous BB to process phi node

        //print module name
        StringRef module_name = M.getName();
        errs() << "module name=" << module_name << "\n";

        createFunc(Builder, ModuleOb);   // create function declarations

        for (Module::iterator F = M.begin(), y = M.end(); F != y; ++F) {
          //do not instrument lib functions
           if (std::find(function_doNotInstrument.begin(), function_doNotInstrument.end(), F->getName().str()) == function_doNotInstrument.end())
              instrumentFunction(*F, M);
        }

        errs() << "instrumentation successful " << "\n";
        return true;
    }

    //-----------------------------------------------------------------------------------------------------------------------

    // Register the appropriate type declarations for the functions called from the instrumentation.

    bool instrumentFunction(Function& F, Module& M)
    {
        std::string function_name = F.getName().str();
        llvm::LLVMContext& context = M.getContext();

        errs() << "Instrumenting function :  " << function_name << "\n";

            for (BasicBlock& BB : F) // iterating all the basic block
            {
                if (!BB.hasName())  BB.setName("bb");
                //errs() << "function BB :  " << function_name << "\n";
                BasicBlock* B = &BB; //getting the current BB
                IRBuilder<> builder(B); // builder for the current bb

                for (Instruction& i : BB) // iterating all the instructions within current BB
                {
                    if (!i.hasName() && !i.getType()->isVoidTy())
                        i.setName("tmp_"+F.getName());         // if the instruction doesnt have a name, giving a name to it

                    Instruction* I = &i; // current instruction
                    // I->dump();  // print instruction

                    if (LoadInst* loadInst = dyn_cast<LoadInst>(I)) {   //read from memory

                        std::string result = loadInst->getName().str();
                        llvm::Value* result_ = builder.CreateGlobalStringPtr(result);
                        llvm::Value* loadAddress = loadInst->getPointerOperand();
                        std::string loadAddressName = loadAddress->getName().str();

                        //check if loadAddress is a global var // %tmp = load i32, i32* @x, align 4 , @ means global

                        if(isa<GlobalVariable>(loadAddress)) {

                            //errs() << "got Global Variable :  " << loadAddressName << " with type ";
                            //loadInst->getType()->dump();

                            const Type* T = loadInst->getType();

                            std::vector<Value*> args;
                            args.push_back(result_);
                            args.push_back(loadInst);  // loadInst has the actual value of the global variable, can't use getInitializer as for non consant global it will not give current value


                            if(T==Type::getInt32Ty(context))
                            {
                             CallInst::Create(stg_update_int, args)->insertAfter(I);  //maybe need to handle other type globals such as double, float, char

                            }else if(T==Type::getFloatTy(context))
                            {
                              CallInst::Create(stg_update_float, args)->insertAfter(I);
                            }
                            else if(T==Type::getDoubleTy(context))
                            {
                              CallInst::Create(stg_update_double, args)->insertAfter(I);
                            }

                        }
                        else {     // %tmp = load i32, i32* %x, align 4

                            llvm::Value* result_ = builder.CreateGlobalStringPtr(result);

                            std::vector<Value*> args;
                            args.push_back(loadAddress);
                            args.push_back(result_);

                            const Type* T = loadInst->getPointerOperandType();

                            if(T==Type::getInt32PtrTy(context))
                            {
                                CallInst::Create(stg_update_load, args)->insertAfter(I);
                            }else if(T==Type::getInt8PtrTy(context))
                            {
                                CallInst::Create(stg_update_load_i8, args)->insertAfter(I);
                            }
                            else if(T==Type::getInt64PtrTy(context))
                            {
                                CallInst::Create(stg_update_load_i64, args)->insertAfter(I);
                            }
                            else if(T==Type::getFloatPtrTy(context))
                            {
                                CallInst::Create(stg_update_load_float, args)->insertAfter(I);
                            }
                            else if(T==Type::getDoublePtrTy(context))
                            {
                                CallInst::Create(stg_update_load_double, args)->insertAfter(I);
                            }
                        }
                    }

                    else if (StoreInst* storeInst = dyn_cast<StoreInst>(I)) { //write instruction to memory

                        // process store instructions e.g.,  store i32 0, i32* %retval

                        // get the address and name where value is stored
                        Value* memory_address = storeInst->getOperand(1);
                        std::string memory_address_name = memory_address->getName().str();
                        //llvm::Value* memory_address_name_ = builder.CreateGlobalStringPtr("v(" + memory_address_name + ")");

                        // get the value to be stored at the address
                        Value* valToStore = storeInst->getOperand(0);
                        std::string valToStoreStr = "";


                         std::string type_str;
                         llvm::raw_string_ostream type(type_str);
                         valToStore->getType()->print(type);

                        // errs() <<"StoreInst Type ==========="<<type.str() <<"\n";

                        if (ConstantInt* CI = dyn_cast<ConstantInt>(valToStore)) // if value is integer or any constant
                        {
                            if (CI->getType()->isIntegerTy(1)) {
                                valToStoreStr = CI->getZExtValue();
                            }
                            else
                               valToStoreStr = std::to_string(CI->getSExtValue());

                            valToStoreStr =  "("+ type.str()+ " "+ valToStoreStr+")";

                        }else if(ConstantFP *constfp = llvm::dyn_cast<llvm::ConstantFP>(valToStore))
                        {
                             if(valToStore->getType()->isDoubleTy()){

                                 double fpval = (constfp->getValueAPF()).convertToDouble();
                                 valToStoreStr =  "("+ type.str()+ " "+ std::to_string(fpval)+")";

                             }else if(valToStore->getType()->isFloatTy()){

                                 float fpval = (constfp->getValueAPF()).convertToFloat();
                                 valToStoreStr =  "("+ type.str()+ " "+ std::to_string(fpval)+")";
                             }
                        }
                        else {
                            valToStoreStr = storeInst->getOperand(0)->getName().str(); //not constant, rather another temporary
                        }

                        llvm::Value* valToStoreStr_ = builder.CreateGlobalStringPtr(valToStoreStr);

                        std::vector<Value*> args;
                        args.push_back(memory_address);
                        args.push_back(valToStoreStr_);

                       const Type* T = storeInst->getPointerOperandType();

                       if(T==Type::getInt32PtrTy(context))
                       {
                            CallInst::Create(stg_update_store, args)->insertAfter(I);

                       }else if(T==Type::getInt8PtrTy(context))
                       {
                            CallInst::Create(stg_update_store_i8, args)->insertAfter(I);

                       }else if(T==Type::getFloatPtrTy(context))
                       {
                           CallInst::Create(stg_update_store_float, args)->insertAfter(I);
                       }else if(T==Type::getDoublePtrTy(context))
                       {
                            CallInst::Create(stg_update_store_double, args)->insertAfter(I);
                       }
                       else if(T==Type::getInt64PtrTy(context))
                       {
                           CallInst::Create(stg_update_store_i64, args)->insertAfter(I);
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

                     else if(I->isCast()) //isa<FPTruncInst>(I) || isa<FPToSIInst>(I) || isa<FPExtInst>(I) || isa<FPToUIInst>(I) || isa<ZExtInst>(I) || isa<FPExtInst>(I) || isa<TruncInst>(I) || isa<SExtInst>(I) )
                     {
                         //%X = fptrunc double 16777217.0 to float    ; yields float:16777216.0

                       llvm::Value* result = builder.CreateGlobalStringPtr(I->getName().str());



                       std::string type_str;
                       llvm::raw_string_ostream type(type_str);
                       I->getType()->print(type);

                       errs() <<"combined Type==========="<<type.str() <<"\n";


                       if(I->getType()->isPointerTy()){

                           errs() <<"Pointer Type Continuing===========\n";
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

                        //handle memcpy and scanf call

                        auto* F = callInst->getCalledFunction();
                        std::string functionName = F->getName().str();
                        std::string dest = I->getName().str();

                        if (IntrinsicInst* intrinsicInst = dyn_cast<IntrinsicInst>(I)) {



                                errs() << "got IntrinsicInst......." << functionName << "\n";


                                std::string type_;
                                llvm::raw_string_ostream ret_type(type_);
                                intrinsicInst->getType()->print(ret_type);

                                errs() << "got IntrinsicInst......." << functionName << "\n";

                                int i=0;
                                std::string argument;
                                for(auto arg = F->arg_begin(); arg != F->arg_end(); ++arg) {


                                 Value* arg_value = callInst->getArgOperand(i++);

                                 std::string type_str;
                                 llvm::raw_string_ostream type(type_str);
                                 arg_value->getType()->print(type);


                                 if(auto* ci = dyn_cast<ConstantInt>(arg_value)){

                                     if (ci->getType()->isIntegerTy(1)) {
                                           argument =  std::to_string(ci->getZExtValue());
                                     }
                                     else argument =  std::to_string(ci->getSExtValue());
                                     argument =  "("+ type.str()+ " "+ argument+")";

                                 }else if(ConstantFP *constfp = llvm::dyn_cast<llvm::ConstantFP>(arg_value))
                                 {
                                       if(arg_value->getType()->isDoubleTy()){

                                            double fpval = (constfp->getValueAPF()).convertToDouble();
                                            argument =  "("+ type.str()+ " "+ std::to_string(fpval)+")";

                                       }else if(arg_value->getType()->isFloatTy()){

                                            float fpval = (constfp->getValueAPF()).convertToFloat();
                                            argument =  "("+ type.str()+ " "+ std::to_string(fpval)+")";
                                       }
                                 }
                                 else
                                    argument = arg_value->getName().str();
                               }

                                if(i==1){


                                llvm::Value* arg_dest = builder.CreateGlobalStringPtr(dest);
                                llvm::Value* arg_val = builder.CreateGlobalStringPtr(argument);
                                llvm::Value* fun_name = builder.CreateGlobalStringPtr(functionName);
                                llvm::Value* rettype = builder.CreateGlobalStringPtr(ret_type.str());


                                std::vector<Value*> args;
                                args.push_back(arg_dest);
                                args.push_back(arg_val);
                                args.push_back(fun_name);
                                args.push_back(rettype);
                                CallInst::Create(stg_update_cast, args)->insertBefore(I);
                                }

                        }
                        else if (functionName.find("memcpy") != std::string::npos) {

                            MemCpyInst* MDep = dyn_cast<MemCpyInst>(callInst);

                            std::string srcName = MDep->getSource()->getName().str();
                            std::string destName = MDep->getDest()->getName().str();

                            std::string srcVale ;//= mapOfGV.find(srcName)->second;

                            //Value *src =
                            // errs() << "got here..." << MDep->getSource()->getName().str() << "\n";
                            //Value *dest =
                            // errs() << "got here..." << MDep->getDest()->getName().str() << "\n";

                            // errs() << "got src value from map ..." << srcVale << "\n";

                            llvm::Value* srcName_ = builder.CreateGlobalStringPtr("v(&" + srcVale + ")");
                            llvm::Value* destName_ = builder.CreateGlobalStringPtr(destName);

                            std::vector<Value*> args;
                            args.push_back(destName_);
                            args.push_back(srcName_);

                            //CallInst::Create(updateSymbolicState, args)->insertAfter(I); // inserting call instruction for instrumentation
                            //std::string dest = callInst->getArgOperand(0)->getName().str() + " = ";
                            //storedVal->getType()->dump();
                            //storedVal->dump();
                        } else if (std::find(function_doNotInstrument.begin(), function_doNotInstrument.end(), functionName) == function_doNotInstrument.end()){

                           int i=0;
                           for(auto arg = F->arg_begin(); arg != F->arg_end(); ++arg) {

                             std::string param;
                             std::string argument;

                             if(auto* ci = dyn_cast<ConstantInt>(arg))
                               param = std::to_string(ci->getSExtValue());
                             else param =  arg->getName().str();

                             //errs() << arg->getName().str() << "\n";

                             Value* arg_value = callInst->getArgOperand(i++);

                             std::string type_str;
                             llvm::raw_string_ostream type(type_str);
                             arg_value->getType()->print(type);

                             //errs() <<"Type==========="<<type.str() <<"\n";

                             if(auto* ci = dyn_cast<ConstantInt>(arg_value)){

                                 if (ci->getType()->isIntegerTy(1)) {
                                       argument =  std::to_string(ci->getZExtValue());
                                 }
                                 else argument =  std::to_string(ci->getSExtValue());
                                 argument =  "("+ type.str()+ " "+ argument+")";

                             }else if(ConstantFP *constfp = llvm::dyn_cast<llvm::ConstantFP>(arg_value))
                             {
                                   if(arg_value->getType()->isDoubleTy()){

                                        double fpval = (constfp->getValueAPF()).convertToDouble();
                                        argument =  "("+ type.str()+ " "+ std::to_string(fpval)+")";

                                   }else if(arg_value->getType()->isFloatTy()){

                                        float fpval = (constfp->getValueAPF()).convertToFloat();
                                        argument =  "("+ type.str()+ " "+ std::to_string(fpval)+")";
                                   }
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

                            //errs() << "function name:  " << functionName << "\n";
                            //errs() << " name:  " << callInst->getName().str() << "\n";

                            llvm::Value* instName = builder.CreateGlobalStringPtr(callInst->getName().str());
                            llvm::Value* funName = builder.CreateGlobalStringPtr(functionName+"_RET");

                            std::vector<Value*> args;
                            args.push_back(instName);
                            args.push_back(funName);
                            CallInst::Create(stg_update_char, args)->insertAfter(I);
                        }
                        //else {
                             //   errs() << "got functionn......." << functionName << "\n";
                        // }

                    }
                    else if (I->isBinaryOp()) //I->getOpcode() == 13 || I->getOpcode() == 15 || I->getOpcode() == 17 || I->getOpcode() == 20) // add, sub, mul, div
                    {


                        errs() <<"inside binary operator .........\n";

                        std::string result = I->getName().str(); //result
                        std::string type_str;
                        llvm::raw_string_ostream type(type_str);
                        I->getType()->print(type);

                        errs() <<"Type==========="<<type.str() <<"\n";




                        Value* l_op = I->getOperand(0); //left operand
                        std::string left_operand = "";

                        if (ConstantInt* ci = dyn_cast<ConstantInt>(l_op)) // if value is integer or any constant
                        {
                            if (ci->getType()->isIntegerTy(1)) {
                                   left_operand =  std::to_string(ci->getZExtValue());
                            }
                            else left_operand =  std::to_string(ci->getSExtValue());
                            left_operand =  "("+ type.str()+ " "+ left_operand+")";

                        }else if(ConstantFP *constfp = llvm::dyn_cast<llvm::ConstantFP>(l_op))
                        {
                            if(l_op->getType()->isDoubleTy()){

                                 double fpval = (constfp->getValueAPF()).convertToDouble();
                                 left_operand =  "("+ type.str()+ " "+ std::to_string(fpval)+")";

                            }else if(l_op->getType()->isFloatTy()){

                                 float fpval = (constfp->getValueAPF()).convertToFloat();
                                 left_operand =  "("+ type.str()+ " "+ std::to_string(fpval)+")";
                            }
                        }
                        else {
                            left_operand = l_op->getName().str();
                        }

                        //get operator
                        std::string opCodeName = I->getOpcodeName();


                        Value* r_op = I->getOperand(1); //right operand
                        std::string right_operand = "";

                        if (ConstantInt* ci = dyn_cast<ConstantInt>(r_op)) // if value is integer or any constant
                        {
                            if (ci->getType()->isIntegerTy(1)) {
                                   right_operand =  std::to_string(ci->getZExtValue());
                            }
                            else right_operand =  std::to_string(ci->getSExtValue());
                            right_operand =  "("+ type.str()+ " "+ right_operand+")";

                        }else if(ConstantFP *constfp = llvm::dyn_cast<llvm::ConstantFP>(r_op))
                        {
                            if(l_op->getType()->isDoubleTy()){

                                 double fpval = (constfp->getValueAPF()).convertToDouble();
                                 right_operand =  "("+ type.str()+ " "+ std::to_string(fpval)+")";

                            }else if(l_op->getType()->isFloatTy()){

                                 float fpval = (constfp->getValueAPF()).convertToFloat();
                                 right_operand =  "("+ type.str()+ " "+ std::to_string(fpval)+")";
                            }
                        }
                        else {
                            right_operand = r_op->getName().str();
                        }

                        errs() <<result<< "--> "<<left_operand <<" " << opCodeName << " " <<  right_operand <<"\n";


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
                    else if( FCmpInst* fCmpInst = dyn_cast<FCmpInst>(I))
                    {

                        std::string result = fCmpInst->getName().str();

                        std::string predicate_name = (fCmpInst->getPredicateName(fCmpInst->getPredicate())).str();

                        if(predicate_name.rfind("u", 0)==0) predicate_name = "f"+predicate_name;


                        std::string type_str;
                        llvm::raw_string_ostream type(type_str);
                        fCmpInst->getOperand(0)->getType()->print(type);
                        errs()<<"fCmpInst type============="<< type.str() <<"\n";


                        Value* l_op = fCmpInst->getOperand(0);
                        std::string l_operand ;  //= l_op->getName().str();
                        Value* r_op = fCmpInst->getOperand(1);
                        std::string r_operand;
                        std::ostringstream flp;


                        // call functions for that

                        if(ConstantFP *constfp= llvm::dyn_cast<llvm::ConstantFP>(l_op))
                        {
                               if(l_op->getType()->isDoubleTy()){

                                   double fpval = (constfp->getValueAPF()).convertToDouble();
                                   l_op->getType()->dump();

                                   l_operand = "("+type.str()+" "+ std::to_string(fpval)+")";
                               }else if(l_op->getType()->isFloatTy()){

                                   float fpval = (constfp->getValueAPF()).convertToFloat();
                                   l_op->getType()->dump();
                                   l_operand = "("+type.str()+" "+ std::to_string(fpval)+")";
                               }
                        }
                        else l_operand = l_op->getName().str();

                        if(ConstantFP *constfp= llvm::dyn_cast<llvm::ConstantFP>(r_op))
                        {
                               if(r_op->getType()->isDoubleTy()){

                                   double fpval = (constfp->getValueAPF()).convertToDouble();
                                   r_op->getType()->dump();

                                   r_operand = "("+type.str()+" "+ std::to_string(fpval)+")";
                               }else if(r_op->getType()->isFloatTy()){

                                   float fpval = (constfp->getValueAPF()).convertToFloat();
                                   r_op->getType()->dump();
                                   r_operand = "("+type.str()+" "+ std::to_string(fpval)+")";
                               }
                        }
                        else r_operand = r_op->getName().str();



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
                    else if (CmpInst* cmpInst = dyn_cast<CmpInst>(I) ) {


                        std::string result = cmpInst->getName().str();

                        std::string predicate_name = (cmpInst->getPredicateName(cmpInst->getPredicate())).str();

                        std::string type_str;
                        llvm::raw_string_ostream rso(type_str);
                        cmpInst->getOperand(0)->getType()->print(rso);
                        errs()<<"type============="<< rso.str() <<"\n";

                        /*
                        std::string Op = "";

                        if (cmpInst->getPredicate() == CmpInst::ICMP_EQ) {
                            Op = "==";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_NE) {
                            Op = "!=";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_UGT) {
                            Op = ">";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_UGE) {
                            Op = ">=";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_ULT) {
                            Op = "<";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_ULE) {
                            Op = "<=";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_SGT) {
                            Op = ">";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_SGE) {
                            Op = ">=";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_SLT) {
                            Op = "<";
                        }
                        else if (cmpInst->getPredicate() == CmpInst::ICMP_SLE) {
                            Op = "<=";
                        }

                        */

                        Value* l_op = I->getOperand(0);
                        std::string l_operand = l_op->getName().str();
                        Value* r_op = I->getOperand(1);
                        std::string r_operand;

                        if (ConstantInt* CI = dyn_cast<ConstantInt>(r_op)) // if value is integer or any constant
                        {
                            r_operand = std::to_string(CI->getSExtValue());
                            r_operand = "("+rso.str()+" "+ r_operand+")";
                        }
                        else r_operand = r_op->getName().str();

                        /*
                           ICMP_EQ    = 32, 	///< equal
                           ICMP_NE    = 33, 	///< not equal
                           ICMP_UGT   = 34, 	///< unsigned greater than
                           ICMP_UGE   = 35, 	///< unsigned greater or equal
                           ICMP_ULT   = 36, 	///< unsigned less than
                           ICMP_ULE   = 37, 	///< unsigned less or equal
                           ICMP_SGT   = 38, 	///< signed greater than
                           ICMP_SGE   = 39, 	///< signed greater or equal
                           ICMP_SLT   = 40, 	///< signed less than
                           ICMP_SLE   = 41, 	///< signed less or equal
						*/

                        Value* result_ = builder.CreateGlobalStringPtr(result);
                        llvm::Value* leftOperand = builder.CreateGlobalStringPtr(l_operand);
                        //llvm::Value* op = builder.CreateGlobalStringPtr(Op);
                        llvm::Value* rightOperand = builder.CreateGlobalStringPtr(r_operand);
                        llvm::Value* predicate_name_ = builder.CreateGlobalStringPtr(predicate_name);
                        llvm::Value* type_ = builder.CreateGlobalStringPtr(rso.str());


                        std::vector<Value*> args;
                        args.push_back(result_);
                        args.push_back(leftOperand);
                        args.push_back(predicate_name_);
                        args.push_back(rightOperand);
                        args.push_back(type_);

                        CallInst::Create(stg_update_cmp, args)->insertAfter(I);
                    }

                    else if (I->getOpcode() == Instruction::PHI) // phi instruction check, if phi then insert after, else insert
                    {
                        std::string lhs = I->getName().str();
                        std::string val_bb_pairs = "";

                        PHINode* phi = dyn_cast<PHINode>(I);
                        int count = phi->getNumIncomingValues();  // getting the incoming values and bb names

                        for (int i = 0; i < count; i++) {

                            // errs() << "getIncomingValue count =" << phi->getIncomingValue(i)->getName().str() << "\n";
                            // errs() << "getIncomingValue=" << phi->getIncomingBlock(i)->getName().str() << "\n";

                             Value* ivalue = phi->getIncomingValue(i);
                             std::string inVal = "";

                             if(auto* ci = dyn_cast<ConstantInt>(ivalue)){

                                 if (ci->getType()->isIntegerTy(1)) {

                                       inVal =  std::to_string(ci->getZExtValue());
                                 }
                                 else inVal =  std::to_string(ci->getSExtValue());
                             }
                             else {
                                inVal = phi->getIncomingValue(i)->getName().str();
                             }

                            val_bb_pairs += phi->getIncomingBlock(i)->getName().str() + "," +inVal +",";
                        }

                        llvm::Value* lhs_ = builder.CreateGlobalStringPtr(lhs);
                        llvm::Value* prevbb_ = prevBB->getInitializer();
                        llvm::Value* val_bb_pairs_ = builder.CreateGlobalStringPtr(val_bb_pairs);

                        std::vector<Value*> args;
                        args.push_back(lhs_);
                        args.push_back(prevbb_);
                        args.push_back(val_bb_pairs_);

                        CallInst::Create(stg_update_phi, args)->insertAfter(I);
                    }
                    else if (GetElementPtrInst* gep = dyn_cast<GetElementPtrInst>(I)) {

                        // errs() << "got GetElementPtrInst..........."<< "\n";

                        //GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(I);

                        // errs() << "got GetElementPtrInst array name = " << gep->getPointerOperand()->getName().str() << "\n";
                        // errs() << "got GetElementPtrInst..........." << gep->getNumIndices() << "\n";
                        // errs() << "got GetElementPtrInst..........." << gep->getAddressSpace() << "\n";

                        Value* offset = gep->getOperand(2);

                        // errs() << "got GetElementPtrInst offset ..........." << offset->getName().str() << "\n";

                        std::string dest = gep->getName().str() + " = ";
                        std::string src = gep->getPointerOperand()->getName().str() + "[";

                        unsigned start = gep->getAddressSpace();

                        if (ConstantInt* CI = dyn_cast<ConstantInt>(offset)) // if value is integer or any constant
                        {
                            unsigned index = CI->getSExtValue();
                            unsigned index_ = start + index;
                            src = src + std::to_string(index_) + "]";
                        }
                        else {
                            src = src + offset->getName().str() + "]";
                        }

                        llvm::Value* dest_ = builder.CreateGlobalStringPtr(dest);
                        llvm::Value* src_ = builder.CreateGlobalStringPtr(src);

                        std::vector<Value*> args;
                        args.push_back(dest_);
                        args.push_back(src_);
                        //symbolic_var_counter++;
                        //CallInst::Create(updateSymbolicState, args)->insertAfter(I); // inserting call instruction for instrumentation
                    }

                    else if (AllocaInst* alloc = dyn_cast<AllocaInst>(I)) {

                         //llvm::Value* var_pointer_name= alloc->


                        std::ostringstream retValConstant ;

                        retValConstant << alloc->getType();
                        //errs() << "alloc instruction " << retValConstant.str() << "\n";

                        //alloc->getType();

                        if (alloc->getType()==Type::getInt32PtrTy(context))
                        {



                        llvm::Value* address_ = alloc ;

                        llvm::Value* loadVar_ = builder.CreateGlobalStringPtr(alloc->getName().str());

                        std::vector<Value*> args;
                        args.push_back(address_);
                        args.push_back(loadVar_);
                        //CallInst::Create(stg_update_load, args)->insertAfter(I); // inserting call instruction for instrumentation

                        }





                    }

                    else if (ReturnInst* ri = dyn_cast<ReturnInst>(I)) {

                        if (ri->getNumOperands() == 0) {
                            //errs() << "VOID: " << *ri << "\n";
                        }
                        else {

                            Value* retVal = ri->getOperand(0);
                            std::string retVal_ = "";

                            std::ostringstream retValConstant;

                            if (ConstantInt* CI = dyn_cast<ConstantInt>(retVal)) {
                                retValConstant << CI->getSExtValue();
                                retVal_ = retValConstant.str();
                            }
                            else {
                                retVal_ = retVal->getName().str();
                            }

                            //retVal_ = retVal_;
                            //errs() << "NON-VOID: " << retVal_ << "\n";

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
                        //errs() << "unknown instruction\n";
                    }
                }
                //set the global value with BB name
                Constant* bb_name = builder.CreateGlobalStringPtr(BB.getName().str());
                prevBB->setInitializer(bb_name);

            }

        return true;
    }

    bool createFunc(IRBuilder<>& Builder, Module* ModuleOb)
    {

       llvm::LLVMContext& context = ModuleOb->getContext();

        std::vector<Type*> arg1(4, Builder.getInt8PtrTy());
        FunctionType* funcType1 = llvm::FunctionType::get(Builder.getVoidTy(), arg1, false);
        stg_update_op = llvm::Function::Create(funcType1, llvm::Function::ExternalLinkage, "stg_update_op", ModuleOb);
        stg_update_cast = llvm::Function::Create(funcType1, llvm::Function::ExternalLinkage, "stg_update_cast", ModuleOb);

        std::vector<Type*> arg2;
        arg2.push_back(Builder.getInt1Ty());
        arg2.push_back(Builder.getInt8PtrTy());

        FunctionType* funcType2 = llvm::FunctionType::get(Builder.getVoidTy(), arg2, false);
        stg_update_pc = llvm::Function::Create(funcType2, llvm::Function::ExternalLinkage, "stg_update_pc", ModuleOb);

        std::vector<Type*> arg3(2, Builder.getInt8PtrTy());
        FunctionType* funcType3 = llvm::FunctionType::get(Builder.getVoidTy(), arg3, false);
        stg_set_symbolic = llvm::Function::Create(funcType3, llvm::Function::ExternalLinkage, "stg_set_symbolic", ModuleOb);

        std::vector<Type*> arg4(2, Builder.getInt8PtrTy());
        FunctionType* funcType4 = llvm::FunctionType::get(Builder.getVoidTy(), arg4, false);
        stg_update_char = llvm::Function::Create(funcType4, llvm::Function::ExternalLinkage, "stg_update_char", ModuleOb);


        std::vector<Type*> arg5(3, Builder.getInt8PtrTy());
        FunctionType* funcType5 = llvm::FunctionType::get(Builder.getVoidTy(), arg5, false);
        stg_update_phi = llvm::Function::Create(funcType5, llvm::Function::ExternalLinkage, "stg_update_phi", ModuleOb);


         std::vector<Type*> arg6;
         arg6.push_back(Builder.getInt8PtrTy());
         arg6.push_back(Builder.getInt32Ty());
         FunctionType* funcType6 = llvm::FunctionType::get(Builder.getVoidTy(), arg6, false);
         stg_update_int = llvm::Function::Create(funcType6, llvm::Function::ExternalLinkage, "stg_update_int", ModuleOb);

         std::vector<Type*> arg7;
         arg7.push_back( Type::getInt32PtrTy(context));
         arg7.push_back(Builder.getInt8PtrTy());
         FunctionType* funcType7 = llvm::FunctionType::get(Builder.getVoidTy(), arg7, false);
         stg_update_load = llvm::Function::Create(funcType7, llvm::Function::ExternalLinkage, "stg_update_load", ModuleOb);


         stg_update_store= llvm::Function::Create(funcType7, llvm::Function::ExternalLinkage, "stg_update_store", ModuleOb);
         stg_update_load_i8= llvm::Function::Create(funcType4, llvm::Function::ExternalLinkage, "stg_update_load_i8", ModuleOb);
         stg_update_store_i8= llvm::Function::Create(funcType4, llvm::Function::ExternalLinkage, "stg_update_store_i8", ModuleOb);


         std::vector<Type*> arg9;
         arg9.push_back( Type::getFloatPtrTy(context));
         arg9.push_back(Builder.getInt8PtrTy());
         FunctionType* funcType9 = llvm::FunctionType::get(Builder.getVoidTy(), arg9, false);
         stg_update_load_float = llvm::Function::Create(funcType9, llvm::Function::ExternalLinkage, "stg_update_load_float", ModuleOb);
         stg_update_store_float = llvm::Function::Create(funcType9, llvm::Function::ExternalLinkage, "stg_update_store_float", ModuleOb);

         std::vector<Type*> arg10(5, Builder.getInt8PtrTy());
         FunctionType* funcType10 = llvm::FunctionType::get(Builder.getVoidTy(), arg10, false);
         stg_update_cmp = llvm::Function::Create(funcType10, llvm::Function::ExternalLinkage, "stg_update_cmp", ModuleOb);

         std::vector<Type*> arg11;
         arg11.push_back( Type::getInt64PtrTy(context));
         arg11.push_back(Builder.getInt8PtrTy());
         FunctionType* funcType11 = llvm::FunctionType::get(Builder.getVoidTy(), arg11, false);
         stg_update_load_i64 = llvm::Function::Create(funcType11, llvm::Function::ExternalLinkage, "stg_update_load_i64", ModuleOb);
         stg_update_store_i64 = llvm::Function::Create(funcType11, llvm::Function::ExternalLinkage, "stg_update_store_i64", ModuleOb);



         std::vector<Type*> arg12;
         arg12.push_back(Type::getDoublePtrTy(context));
         arg12.push_back(Builder.getInt8PtrTy());
         FunctionType* funcType12 = llvm::FunctionType::get(Builder.getVoidTy(), arg12, false);
         stg_update_store_double = llvm::Function::Create(funcType12, llvm::Function::ExternalLinkage, "stg_update_store_double", ModuleOb);
         stg_update_load_double = llvm::Function::Create(funcType12, llvm::Function::ExternalLinkage, "stg_update_load_double", ModuleOb);

         std::vector<Type*> arg13;
         arg13.push_back(Type::getInt8PtrTy(context));
         arg13.push_back(Builder.getFloatTy());
         stg_update_float = llvm::Function::Create(llvm::FunctionType::get(Builder.getVoidTy(), arg13, false), llvm::Function::ExternalLinkage, "stg_update_float", ModuleOb);

         std::vector<Type*> arg14;
         arg14.push_back(Type::getInt8PtrTy(context));
         arg14.push_back(Builder.getDoubleTy());
         stg_update_double = llvm::Function::Create(llvm::FunctionType::get(Builder.getVoidTy(), arg14, false), llvm::Function::ExternalLinkage, "stg_update_double", ModuleOb);


         //errs() << "function declarations created successfully"<< "\n";
         return true;
    }

    GlobalVariable *createGlob(IRBuilder<> &Builder, std::string Name, Module* ModuleOb ) {
          ModuleOb->getOrInsertGlobal(Name, Builder.getInt8PtrTy());
          GlobalVariable *gVar = ModuleOb->getNamedGlobal(Name);
          gVar->setLinkage(GlobalValue::ExternalLinkage);
          gVar->setAlignment(4);
          return gVar;
    }
    bool isPointerToPointer(const Value* V) {
        const Type* T = V->getType();
        return T->isPointerTy() && T->getContainedType(0)->isPointerTy();
    }

    bool registerFunctionDefinitions(Function& F, Module& M)
    {

        StringRef function_name = F.getName();
        if (function_name.equals("stg_update_op")) {
            errs() << "got stg_update_op function"<< "\n";
            stg_update_op = &F; // function for printing constraint
        }
        else if (function_name.equals("stg_set_symbolic")) {
            stg_set_symbolic = &F;
        }
        else if (function_name.equals("stg_update_pc")) {
            errs() << "got stg_update_pc function" << "\n";
            stg_update_pc = &F;
        }
        else if (function_name.equals("clearFile")) {
            //clearFile = &F; // function for clearing constraint file
        }
        return true;
    }



    //-----------------------------------------------------------------------------------------------------------------------

    std::string getConstant(raw_ostream& Out, const Constant* CV)
    {
        std::string value = "";

        if (const ConstantInt* CI = dyn_cast<ConstantInt>(CV)) {
            if (CI->getType()->isIntegerTy(1)) {
                value = value + (CI->getZExtValue() ? "true" : "false");
                return value;
            }
            APInt AI = CI->getValue();
            if (CI->getBitWidth() == 8) { // if sizeof constant == sizeof char
                const uint64_t* letter = AI.getRawData();
                if (char letter2 = (char)(*letter)) {
                    value = value + letter2;
                    return value;
                }
            }
            value = value + std::to_string(CI->getSExtValue());
            return value;
        }

        if (const ConstantFP* CFP = dyn_cast<ConstantFP>(CV)) {
            const APFloat& APF = CFP->getValueAPF();
            if (&APF.getSemantics() == &APFloat::IEEEsingle() || &APF.getSemantics() == &APFloat::IEEEdouble()) {
                // We would like to output the FP constant value in exponential notation,
                // but we cannot do this if doing so will lose precision.  Check here to
                // make sure that we only output it in exponential format if we can parse
                // the value back and get the same value.
                //
                //bool ignored;
                bool isDouble = &APF.getSemantics() == &APFloat::IEEEdouble();
                bool isInf = APF.isInfinity();
                bool isNaN = APF.isNaN();
                if (!isInf && !isNaN) {
                    double Val = isDouble ? APF.convertToDouble() : APF.convertToFloat();
                    value = value + std::to_string(Val);
                }
                else if (isInf)
                    value = value + "inf";
                else if (isNaN)
                    value = value + "NaN";
                return value;
            }
        }

        if (auto* CA = dyn_cast<ConstantArray>(CV)) {

            //Type* ETy = CA->getType()->getElementType();
            value = value + '[';
            value = value + ' ';
            value = value + getConstant(Out, CA->getOperand(0));
            for (unsigned i = 1, e = CA->getNumOperands(); i != e; ++i) {
                value = value + ", ";
                value = value + ' ';
                value = value + getConstant(Out, CA->getOperand(i));
            }
            value = value + ']';
            return value;
        }

        if (auto* CA = dyn_cast<ConstantDataArray>(CV)) {

            // As a special case, print the array as a string if it is an array of
            // i8 with ConstantInt values.
            if (CA->isString()) {
                value = value + CA->getAsString().str();
                return value;
            }

            value = value + '[';
            value = value + ' ';
            value = value + getConstant(Out, CA->getElementAsConstant(0));
            for (unsigned i = 1, e = CA->getNumElements(); i != e; ++i) {
                value = value + ", ";
                value = value + ' ';
                value = value + getConstant(Out, CA->getElementAsConstant(i));
            }
            value = value + ']';
            return value;
        }

        if (const ConstantStruct* CS = dyn_cast<ConstantStruct>(CV)) {
            if (CS->getType()->isPacked())
                value = value + '<';
            value = value + '{';
            unsigned N = CS->getNumOperands();
            if (N) {
                value = value + ' ';

                value = value + getConstant(Out, CS->getOperand(0));

                for (unsigned i = 1; i < N; i++) {
                    value = value + ", ";

                    value = value + getConstant(Out, CS->getOperand(i));
                }
                value = value + ' ';
            }

            value = value + '}';
            if (CS->getType()->isPacked())
                value = value + '>';
            return value;
        }

        if (isa<ConstantVector>(CV) || isa<ConstantDataVector>(CV)) {
            value = value + '<';
            value = value + ' ';
            value = value + getConstant(Out, CV->getAggregateElement(0U));
            for (unsigned i = 1, e = CV->getType()->getVectorNumElements(); i != e; ++i) {
                value = value + ", ";
                value = value + getConstant(Out, CV->getAggregateElement(i));
            }
            value = value + '>';
            return value;
        }

        if (isa<ConstantAggregateZero>(CV)) {
            value = value + "zeroinitializer";
            return value;
        }

        if (isa<ConstantPointerNull>(CV)) {
            value = value + "null";
            return value;
        }

        if (isa<ConstantTokenNone>(CV)) {
            value = value + "none";
            return value;
        }

        if (isa<UndefValue>(CV)) {
            value = value + "undef";
            return value;
        }

        if (const ConstantExpr* CE = dyn_cast<ConstantExpr>(CV)) {
            Value* firstop = CE->getOperand(0);
            if (GlobalVariable* GV = dyn_cast<GlobalVariable>(firstop)) {
                Constant* v = GV->getInitializer();
                value = value + getConstant(Out, v);
            }
            return value;
        }
        //value=value+  "None of searched constant types";
        return value;
    }
};
}

char STGInstrumenter::ID = 0;
static RegisterPass<STGInstrumenter> X("STGInstrumenter", "A SGT Instrumentation Pass ");
