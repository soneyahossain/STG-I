; ModuleID = 'classify_test.bc'
source_filename = "classify_test.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%"class.testing::TestInfo" = type { %"class.std::__1::basic_string", %"class.std::__1::basic_string", %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr", %"struct.testing::internal::CodeLocation", i8*, i8, i8, i8, i8, %"class.testing::internal::TestFactoryBase"*, %"class.testing::TestResult" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.2" }
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { %"class.std::__1::basic_string"* }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__1::basic_string", i32, [4 x i8] }>
%"class.testing::internal::TestFactoryBase" = type { i32 (...)** }
%"class.testing::TestResult" = type { %"class.testing::internal::Mutex", %"class.std::__1::vector", %"class.std::__1::vector.10", i32, i64, i64 }
%"class.testing::internal::Mutex" = type { %"class.testing::internal::MutexBase" }
%"class.testing::internal::MutexBase" = type { %struct._opaque_pthread_mutex_t, i8, %struct._opaque_pthread_t* }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"class.testing::TestPartResult"*, %"class.testing::TestPartResult"*, %"class.std::__1::__compressed_pair.5" }
%"class.testing::TestPartResult" = type { i32, %"class.std::__1::basic_string", i32, %"class.std::__1::basic_string", %"class.std::__1::basic_string" }
%"class.std::__1::__compressed_pair.5" = type { %"struct.std::__1::__compressed_pair_elem.6" }
%"struct.std::__1::__compressed_pair_elem.6" = type { %"class.testing::TestPartResult"* }
%"class.std::__1::vector.10" = type { %"class.std::__1::__vector_base.11" }
%"class.std::__1::__vector_base.11" = type { %"class.testing::TestProperty"*, %"class.testing::TestProperty"*, %"class.std::__1::__compressed_pair.12" }
%"class.testing::TestProperty" = type { %"class.std::__1::basic_string", %"class.std::__1::basic_string" }
%"class.std::__1::__compressed_pair.12" = type { %"struct.std::__1::__compressed_pair_elem.13" }
%"struct.std::__1::__compressed_pair_elem.13" = type { %"class.testing::TestProperty"* }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.testing::internal::TestFactoryImpl" = type { %"class.testing::internal::TestFactoryBase" }
%"class.testing::internal::GTestLog" = type { i32 }
%class.ClassifyTest_InvalidTriangle_Test = type { %"class.testing::Test" }
%"class.testing::Test" = type { i32 (...)**, %"class.std::__1::unique_ptr.17" }
%"class.std::__1::unique_ptr.17" = type { %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.18" = type { %"struct.std::__1::__compressed_pair_elem.19" }
%"struct.std::__1::__compressed_pair_elem.19" = type { %"class.testing::internal::GTestFlagSaver"* }
%"class.testing::internal::GTestFlagSaver" = type opaque
%"class.testing::internal::TestFactoryImpl.23" = type { %"class.testing::internal::TestFactoryBase" }
%class.ClassifyTest_Scalene_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.24" = type { %"class.testing::internal::TestFactoryBase" }
%class.ClassifyTest_Isosceles_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.25" = type { %"class.testing::internal::TestFactoryBase" }
%class.ClassifyTest_Equilateral_Test = type { %"class.testing::Test" }
%"class.testing::UnitTest" = type { i32 (...)**, %"class.testing::internal::Mutex", %"class.testing::internal::UnitTestImpl"* }
%"class.testing::internal::UnitTestImpl" = type opaque
%"struct.testing::Test::Setup_should_be_spelled_SetUp" = type { i8 }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.1" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }

@_ZN33ClassifyTest_InvalidTriangle_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ClassifyTest\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"InvalidTriangle\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"classify_test.cpp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@_ZN25ClassifyTest_Scalene_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"Scalene\00", align 1
@_ZN27ClassifyTest_Isosceles_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"Isosceles\00", align 1
@_ZN29ClassifyTest_Equilateral_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"Equilateral\00", align 1
@_ZTV33ClassifyTest_InvalidTriangle_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI33ClassifyTest_InvalidTriangle_Test to i8*), i8* bitcast (void (%class.ClassifyTest_InvalidTriangle_Test*)* @_ZN33ClassifyTest_InvalidTriangle_TestD1Ev to i8*), i8* bitcast (void (%class.ClassifyTest_InvalidTriangle_Test*)* @_ZN33ClassifyTest_InvalidTriangle_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.ClassifyTest_InvalidTriangle_Test*)* @_ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS33ClassifyTest_InvalidTriangle_Test = constant [36 x i8] c"33ClassifyTest_InvalidTriangle_Test\00"
@_ZTIN7testing4TestE = external constant i8*
@_ZTI33ClassifyTest_InvalidTriangle_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @_ZTS33ClassifyTest_InvalidTriangle_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV25ClassifyTest_Scalene_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI25ClassifyTest_Scalene_Test to i8*), i8* bitcast (void (%class.ClassifyTest_Scalene_Test*)* @_ZN25ClassifyTest_Scalene_TestD1Ev to i8*), i8* bitcast (void (%class.ClassifyTest_Scalene_Test*)* @_ZN25ClassifyTest_Scalene_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.ClassifyTest_Scalene_Test*)* @_ZN25ClassifyTest_Scalene_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS25ClassifyTest_Scalene_Test = constant [28 x i8] c"25ClassifyTest_Scalene_Test\00"
@_ZTI25ClassifyTest_Scalene_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTS25ClassifyTest_Scalene_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV27ClassifyTest_Isosceles_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI27ClassifyTest_Isosceles_Test to i8*), i8* bitcast (void (%class.ClassifyTest_Isosceles_Test*)* @_ZN27ClassifyTest_Isosceles_TestD1Ev to i8*), i8* bitcast (void (%class.ClassifyTest_Isosceles_Test*)* @_ZN27ClassifyTest_Isosceles_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.ClassifyTest_Isosceles_Test*)* @_ZN27ClassifyTest_Isosceles_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS27ClassifyTest_Isosceles_Test = constant [30 x i8] c"27ClassifyTest_Isosceles_Test\00"
@_ZTI27ClassifyTest_Isosceles_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_ZTS27ClassifyTest_Isosceles_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV29ClassifyTest_Equilateral_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI29ClassifyTest_Equilateral_Test to i8*), i8* bitcast (void (%class.ClassifyTest_Equilateral_Test*)* @_ZN29ClassifyTest_Equilateral_TestD1Ev to i8*), i8* bitcast (void (%class.ClassifyTest_Equilateral_Test*)* @_ZN29ClassifyTest_Equilateral_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.ClassifyTest_Equilateral_Test*)* @_ZN29ClassifyTest_Equilateral_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS29ClassifyTest_Equilateral_Test = constant [32 x i8] c"29ClassifyTest_Equilateral_Test\00"
@_ZTI29ClassifyTest_Equilateral_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTS29ClassifyTest_Equilateral_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE = linkonce_odr constant [74 x i8] c"N7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00"
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_ZTSN7testing8internal15TestFactoryBaseE, i32 0, i32 0) }
@_ZTIN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @_ZTSN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryBaseE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryBase"*)* @_ZN7testing8internal15TestFactoryBaseD1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryBase"*)* @_ZN7testing8internal15TestFactoryBaseD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, align 8
@_ZTVN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.23"*)* @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.23"*)* @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.23"*)* @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE = linkonce_odr constant [66 x i8] c"N7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.24"*)* @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.24"*)* @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.24"*)* @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE = linkonce_odr constant [68 x i8] c"N7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @_ZTSN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.25"*)* @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.25"*)* @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.25"*)* @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE = linkonce_odr constant [70 x i8] c"N7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @_ZTSN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@.str.12 = private unnamed_addr constant [51 x i8] c"/usr/local/include/gtest/internal/gtest-internal.h\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.14 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@_ZNSt3__14cerrE = external global %"class.std::__1::basic_ostream", align 8
@.str.16 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_classify_test.cpp, i8* null }]
@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"(i32 9)\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"(i32 10)\00", align 1
@5 = private unnamed_addr constant [54 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv\00", align 1
@6 = private unnamed_addr constant [54 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv\00", align 1
@7 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv1\00", align 1
@8 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv1\00", align 1
@9 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv2\00", align 1
@10 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv2\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@12 = private unnamed_addr constant [54 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv\00", align 1
@13 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@14 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv1\00", align 1
@15 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@16 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv2\00", align 1
@17 = private unnamed_addr constant [55 x i8] c"call__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv\00", align 1
@18 = private unnamed_addr constant [19 x i8] c"_Z8classifyiii_RET\00", align 1
@19 = private unnamed_addr constant [55 x i8] c"call__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv\00", align 1
@20 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv3\00", align 1
@21 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv3\00", align 1
@22 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv4\00", align 1
@23 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv4\00", align 1
@24 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv5\00", align 1
@25 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv5\00", align 1
@26 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv6\00", align 1
@27 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv6\00", align 1
@28 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@29 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv3\00", align 1
@30 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@31 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv4\00", align 1
@32 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@33 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv5\00", align 1
@34 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@35 = private unnamed_addr constant [55 x i8] c"tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv6\00", align 1
@36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@37 = private unnamed_addr constant [32 x i8] c"_Z19print_triangle_typeiiii_RET\00", align 1
@38 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@39 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@40 = private unnamed_addr constant [8 x i8] c"(i32 8)\00", align 1
@41 = private unnamed_addr constant [8 x i8] c"(i32 9)\00", align 1
@42 = private unnamed_addr constant [9 x i8] c"(i32 10)\00", align 1
@43 = private unnamed_addr constant [46 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv\00", align 1
@44 = private unnamed_addr constant [46 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv\00", align 1
@45 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv1\00", align 1
@46 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv1\00", align 1
@47 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv2\00", align 1
@48 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv2\00", align 1
@49 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@50 = private unnamed_addr constant [46 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv\00", align 1
@51 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@52 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv1\00", align 1
@53 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@54 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv2\00", align 1
@55 = private unnamed_addr constant [47 x i8] c"call__ZN25ClassifyTest_Scalene_Test8TestBodyEv\00", align 1
@56 = private unnamed_addr constant [19 x i8] c"_Z8classifyiii_RET\00", align 1
@57 = private unnamed_addr constant [47 x i8] c"call__ZN25ClassifyTest_Scalene_Test8TestBodyEv\00", align 1
@58 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv3\00", align 1
@59 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv3\00", align 1
@60 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv4\00", align 1
@61 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv4\00", align 1
@62 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv5\00", align 1
@63 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv5\00", align 1
@64 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv6\00", align 1
@65 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv6\00", align 1
@66 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@67 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv3\00", align 1
@68 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@69 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv4\00", align 1
@70 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@71 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv5\00", align 1
@72 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@73 = private unnamed_addr constant [47 x i8] c"tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv6\00", align 1
@74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@75 = private unnamed_addr constant [32 x i8] c"_Z19print_triangle_typeiiii_RET\00", align 1
@76 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@77 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"(i32 38)\00", align 1
@79 = private unnamed_addr constant [9 x i8] c"(i32 78)\00", align 1
@80 = private unnamed_addr constant [9 x i8] c"(i32 78)\00", align 1
@81 = private unnamed_addr constant [48 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv\00", align 1
@82 = private unnamed_addr constant [48 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv\00", align 1
@83 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv1\00", align 1
@84 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv1\00", align 1
@85 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv2\00", align 1
@86 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv2\00", align 1
@87 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@88 = private unnamed_addr constant [48 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv\00", align 1
@89 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@90 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv1\00", align 1
@91 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@92 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv2\00", align 1
@93 = private unnamed_addr constant [49 x i8] c"call__ZN27ClassifyTest_Isosceles_Test8TestBodyEv\00", align 1
@94 = private unnamed_addr constant [19 x i8] c"_Z8classifyiii_RET\00", align 1
@95 = private unnamed_addr constant [49 x i8] c"call__ZN27ClassifyTest_Isosceles_Test8TestBodyEv\00", align 1
@96 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv3\00", align 1
@97 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv3\00", align 1
@98 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv4\00", align 1
@99 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv4\00", align 1
@100 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv5\00", align 1
@101 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv5\00", align 1
@102 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv6\00", align 1
@103 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv6\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@105 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv3\00", align 1
@106 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@107 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv4\00", align 1
@108 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@109 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv5\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@111 = private unnamed_addr constant [49 x i8] c"tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv6\00", align 1
@112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@113 = private unnamed_addr constant [32 x i8] c"_Z19print_triangle_typeiiii_RET\00", align 1
@114 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@115 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@116 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@117 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@118 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@119 = private unnamed_addr constant [50 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv\00", align 1
@120 = private unnamed_addr constant [50 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv\00", align 1
@121 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv1\00", align 1
@122 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv1\00", align 1
@123 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv2\00", align 1
@124 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv2\00", align 1
@125 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@126 = private unnamed_addr constant [50 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv\00", align 1
@127 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@128 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv1\00", align 1
@129 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@130 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv2\00", align 1
@131 = private unnamed_addr constant [51 x i8] c"call__ZN29ClassifyTest_Equilateral_Test8TestBodyEv\00", align 1
@132 = private unnamed_addr constant [19 x i8] c"_Z8classifyiii_RET\00", align 1
@133 = private unnamed_addr constant [51 x i8] c"call__ZN29ClassifyTest_Equilateral_Test8TestBodyEv\00", align 1
@134 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv3\00", align 1
@135 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv3\00", align 1
@136 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv4\00", align 1
@137 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv4\00", align 1
@138 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv5\00", align 1
@139 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv5\00", align 1
@140 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv6\00", align 1
@141 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv6\00", align 1
@142 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@143 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv3\00", align 1
@144 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@145 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv4\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@147 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv5\00", align 1
@148 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@149 = private unnamed_addr constant [51 x i8] c"tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv6\00", align 1
@150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@151 = private unnamed_addr constant [32 x i8] c"_Z19print_triangle_typeiiii_RET\00", align 1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 6)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 6)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #12
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl"*
  invoke void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEC1Ev(%"class.testing::internal::TestFactoryImpl"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN33ClassifyTest_InvalidTriangle_Test10test_info_E, align 8
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup13

lpad1:                                            ; preds = %invoke.cont10, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call8) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

declare %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8*, i8*, i8*, i8*, %"struct.testing::internal::CodeLocation"*, i8*, void ()*, void ()*, %"class.testing::internal::TestFactoryBase"*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %this1, i8* %0)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %this, %"class.std::__1::basic_string"* dereferenceable(24) %a_file, i32 %a_line) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.testing::internal::CodeLocation"*, align 8
  %a_file.addr = alloca %"class.std::__1::basic_string"*, align 8
  %a_line.addr = alloca i32, align 4
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  store %"class.std::__1::basic_string"* %a_file, %"class.std::__1::basic_string"** %a_file.addr, align 8
  store i32 %a_line, i32* %a_line.addr, align 4
  %this1 = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %a_file.addr, align 8
  %1 = load i32, i32* %a_line.addr, align 4
  call void @_ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %this1, %"class.std::__1::basic_string"* dereferenceable(24) %0, i32 %1)
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare i8* @_ZN7testing8internal13GetTestTypeIdEv() #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* %filename, i32 %line_num) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %filename.addr = alloca i8*, align 8
  %line_num.addr = alloca i32, align 4
  %test_case_fp = alloca void ()*, align 8
  %test_suite_fp = alloca void ()*, align 8
  %ref.tmp = alloca %"class.testing::internal::GTestLog", align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %line_num, i32* %line_num.addr, align 4
  %call = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test13SetUpTestCaseEv, void ()* @_ZN7testing4Test13SetUpTestCaseEv)
  store void ()* %call, void ()** %test_case_fp, align 8
  %call1 = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test14SetUpTestSuiteEv, void ()* @_ZN7testing4Test14SetUpTestSuiteEv)
  store void ()* %call1, void ()** %test_suite_fp, align 8
  %0 = load void ()*, void ()** %test_case_fp, align 8
  %tobool = icmp ne void ()* %0, null
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %1 = load void ()*, void ()** %test_suite_fp, align 8
  %tobool2 = icmp ne void ()* %1, null
  %lnot = xor i1 %tobool2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %call3 = call zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 zeroext %2)
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  br label %if.end

if.else:                                          ; preds = %lor.end
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"* %ref.tmp, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i32 516)
  %call4 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.14, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %3 = load i8*, i8** %filename.addr, align 8
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8, i8* %3)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %4 = load i32, i32* %line_num.addr, align 4
  %call14 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call12, i32 %4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #13
  br label %if.end

lpad:                                             ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont5, %invoke.cont, %if.else
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #13
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont13, %if.then
  %8 = load void ()*, void ()** %test_case_fp, align 8
  %cmp = icmp ne void ()* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load void ()*, void ()** %test_case_fp, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load void ()*, void ()** %test_suite_fp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi void ()* [ %9, %cond.true ], [ %10, %cond.false ]
  ret void ()* %cond

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val15 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val15
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* %filename, i32 %line_num) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %filename.addr = alloca i8*, align 8
  %line_num.addr = alloca i32, align 4
  %test_case_fp = alloca void ()*, align 8
  %test_suite_fp = alloca void ()*, align 8
  %ref.tmp = alloca %"class.testing::internal::GTestLog", align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %line_num, i32* %line_num.addr, align 4
  %call = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test16TearDownTestCaseEv, void ()* @_ZN7testing4Test16TearDownTestCaseEv)
  store void ()* %call, void ()** %test_case_fp, align 8
  %call1 = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test17TearDownTestSuiteEv, void ()* @_ZN7testing4Test17TearDownTestSuiteEv)
  store void ()* %call1, void ()** %test_suite_fp, align 8
  %0 = load void ()*, void ()** %test_case_fp, align 8
  %tobool = icmp ne void ()* %0, null
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %1 = load void ()*, void ()** %test_suite_fp, align 8
  %tobool2 = icmp ne void ()* %1, null
  %lnot = xor i1 %tobool2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %call3 = call zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 zeroext %2)
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  br label %if.end

if.else:                                          ; preds = %lor.end
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"* %ref.tmp, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i32 531)
  %call4 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %3 = load i8*, i8** %filename.addr, align 8
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8, i8* %3)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %4 = load i32, i32* %line_num.addr, align 4
  %call14 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call12, i32 %4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #13
  br label %if.end

lpad:                                             ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont5, %invoke.cont, %if.else
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #13
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont13, %if.then
  %8 = load void ()*, void ()** %test_case_fp, align 8
  %cmp = icmp ne void ()* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load void ()*, void ()** %test_case_fp, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load void ()*, void ()** %test_suite_fp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi void ()* [ %9, %cond.true ], [ %10, %cond.false ]
  ret void ()* %cond

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val15 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val15
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #3

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEC1Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEC2Ev(%"class.testing::internal::TestFactoryImpl"* %this1)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.testing::internal::CodeLocation"*, align 8
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  %this1 = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  call void @_ZN7testing8internal12CodeLocationD2Ev(%"struct.testing::internal::CodeLocation"* %this1) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv(%class.ClassifyTest_InvalidTriangle_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_InvalidTriangle_Test*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %triangle_type = alloca i32, align 4
  store %class.ClassifyTest_InvalidTriangle_Test* %this, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_InvalidTriangle_Test*, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  call void @stg_start_intrmnt()
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  store i32 0, i32* %a, align 4
  call void @stg_update_store_i32(i32* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0))
  store i32 9, i32* %b, align 4
  call void @stg_update_store_i32(i32* %b, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0))
  store i32 10, i32* %c, align 4
  call void @stg_update_store_i32(i32* %c, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @6, i32 0, i32 0))
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv1 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @8, i32 0, i32 0))
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv2 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @10, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @12, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @14, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @16, i32 0, i32 0))
  %call__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv = call i32 @_Z8classifyiii(i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv, i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv1, i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv2)
  call void @stg_update_char(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0))
  store i32 %call__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv, i32* %triangle_type, align 4
  call void @stg_update_store_i32(i32* %triangle_type, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @19, i32 0, i32 0))
  call void @stg_end_test()
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv3 = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @21, i32 0, i32 0))
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv4 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @23, i32 0, i32 0))
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv5 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @25, i32 0, i32 0))
  %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv6 = load i32, i32* %triangle_type, align 4
  call void @stg_update_load_i32(i32* %triangle_type, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @27, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @29, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @31, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @33, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @35, i32 0, i32 0))
  call void @_Z19print_triangle_typeiiii(i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv3, i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv4, i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv5, i32 %tmp__ZN33ClassifyTest_InvalidTriangle_Test8TestBodyEv6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @37, i32 0, i32 0))
  call void @stg_record_test(i1 zeroext true)
  call void @stg_stop_intrmnt()
  ret void
}

declare void @stg_start_intrmnt() #1

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_int(i32*, i8*) #1

declare i32 @_Z8classifyiii(i32, i32, i32) #1

declare void @stg_end_test() #1

declare void @_Z19print_triangle_typeiiii(i32, i32, i32, i32) #1

declare void @stg_record_test(i1 zeroext) #1

declare void @stg_stop_intrmnt() #1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.6() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 28)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 28)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 28)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #12
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.23"*
  invoke void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.23"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.23"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN25ClassifyTest_Scalene_Test10test_info_E, align 8
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup13

lpad1:                                            ; preds = %invoke.cont10, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call8) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.23"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.23"*, align 8
  store %"class.testing::internal::TestFactoryImpl.23"* %this, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.23"*, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.23"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN25ClassifyTest_Scalene_Test8TestBodyEv(%class.ClassifyTest_Scalene_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Scalene_Test*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %triangle_type = alloca i32, align 4
  store %class.ClassifyTest_Scalene_Test* %this, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Scalene_Test*, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  call void @stg_start_intrmnt()
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @39, i32 0, i32 0))
  store i32 8, i32* %a, align 4
  call void @stg_update_store_i32(i32* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @40, i32 0, i32 0))
  store i32 9, i32* %b, align 4
  call void @stg_update_store_i32(i32* %b, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @41, i32 0, i32 0))
  store i32 10, i32* %c, align 4
  call void @stg_update_store_i32(i32* %c, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @42, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @44, i32 0, i32 0))
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv1 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @46, i32 0, i32 0))
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv2 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @48, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @50, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @52, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @54, i32 0, i32 0))
  %call__ZN25ClassifyTest_Scalene_Test8TestBodyEv = call i32 @_Z8classifyiii(i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv, i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv1, i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv2)
  call void @stg_update_char(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @56, i32 0, i32 0))
  store i32 %call__ZN25ClassifyTest_Scalene_Test8TestBodyEv, i32* %triangle_type, align 4
  call void @stg_update_store_i32(i32* %triangle_type, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @57, i32 0, i32 0))
  call void @stg_end_test()
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv3 = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @59, i32 0, i32 0))
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv4 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @61, i32 0, i32 0))
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv5 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @63, i32 0, i32 0))
  %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv6 = load i32, i32* %triangle_type, align 4
  call void @stg_update_load_i32(i32* %triangle_type, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @65, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @67, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @69, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @71, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @73, i32 0, i32 0))
  call void @_Z19print_triangle_typeiiii(i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv3, i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv4, i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv5, i32 %tmp__ZN25ClassifyTest_Scalene_Test8TestBodyEv6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @75, i32 0, i32 0))
  call void @stg_record_test(i1 zeroext true)
  call void @stg_stop_intrmnt()
  ret void
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.8() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 50)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 50)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 50)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #12
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.24"*
  invoke void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.24"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.24"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN27ClassifyTest_Isosceles_Test10test_info_E, align 8
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup13

lpad1:                                            ; preds = %invoke.cont10, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call8) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.24"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.24"*, align 8
  store %"class.testing::internal::TestFactoryImpl.24"* %this, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.24"*, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.24"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN27ClassifyTest_Isosceles_Test8TestBodyEv(%class.ClassifyTest_Isosceles_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Isosceles_Test*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %triangle_type = alloca i32, align 4
  store %class.ClassifyTest_Isosceles_Test* %this, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Isosceles_Test*, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  call void @stg_start_intrmnt()
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @77, i32 0, i32 0))
  store i32 38, i32* %a, align 4
  call void @stg_update_store_i32(i32* %a, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0))
  store i32 78, i32* %b, align 4
  call void @stg_update_store_i32(i32* %b, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0))
  store i32 78, i32* %c, align 4
  call void @stg_update_store_i32(i32* %c, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @82, i32 0, i32 0))
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv1 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @84, i32 0, i32 0))
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv2 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @86, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @88, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @90, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @92, i32 0, i32 0))
  %call__ZN27ClassifyTest_Isosceles_Test8TestBodyEv = call i32 @_Z8classifyiii(i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv, i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv1, i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv2)
  call void @stg_update_char(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @94, i32 0, i32 0))
  store i32 %call__ZN27ClassifyTest_Isosceles_Test8TestBodyEv, i32* %triangle_type, align 4
  call void @stg_update_store_i32(i32* %triangle_type, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @95, i32 0, i32 0))
  call void @stg_end_test()
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv3 = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @97, i32 0, i32 0))
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv4 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @99, i32 0, i32 0))
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv5 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @101, i32 0, i32 0))
  %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv6 = load i32, i32* %triangle_type, align 4
  call void @stg_update_load_i32(i32* %triangle_type, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @103, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @105, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @107, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @109, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @111, i32 0, i32 0))
  call void @_Z19print_triangle_typeiiii(i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv3, i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv4, i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv5, i32 %tmp__ZN27ClassifyTest_Isosceles_Test8TestBodyEv6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @113, i32 0, i32 0))
  call void @stg_record_test(i1 zeroext true)
  call void @stg_stop_intrmnt()
  ret void
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.10() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 73)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 73)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 73)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #12
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.25"*
  invoke void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.25"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.25"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN29ClassifyTest_Equilateral_Test10test_info_E, align 8
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup13

lpad1:                                            ; preds = %invoke.cont10, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call8) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #13
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.25"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.25"*, align 8
  store %"class.testing::internal::TestFactoryImpl.25"* %this, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.25"*, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.25"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN29ClassifyTest_Equilateral_Test8TestBodyEv(%class.ClassifyTest_Equilateral_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Equilateral_Test*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %triangle_type = alloca i32, align 4
  store %class.ClassifyTest_Equilateral_Test* %this, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Equilateral_Test*, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  call void @stg_start_intrmnt()
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @115, i32 0, i32 0))
  store i32 1, i32* %a, align 4
  call void @stg_update_store_i32(i32* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @116, i32 0, i32 0))
  store i32 1, i32* %b, align 4
  call void @stg_update_store_i32(i32* %b, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @117, i32 0, i32 0))
  store i32 1, i32* %c, align 4
  call void @stg_update_store_i32(i32* %c, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @118, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @120, i32 0, i32 0))
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv1 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @122, i32 0, i32 0))
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv2 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @124, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @125, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @126, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @127, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @128, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @129, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @130, i32 0, i32 0))
  %call__ZN29ClassifyTest_Equilateral_Test8TestBodyEv = call i32 @_Z8classifyiii(i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv, i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv1, i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv2)
  call void @stg_update_char(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @131, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @132, i32 0, i32 0))
  store i32 %call__ZN29ClassifyTest_Equilateral_Test8TestBodyEv, i32* %triangle_type, align 4
  call void @stg_update_store_i32(i32* %triangle_type, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @133, i32 0, i32 0))
  call void @stg_end_test()
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv3 = load i32, i32* %a, align 4
  call void @stg_update_load_i32(i32* %a, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @135, i32 0, i32 0))
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv4 = load i32, i32* %b, align 4
  call void @stg_update_load_i32(i32* %b, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @137, i32 0, i32 0))
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv5 = load i32, i32* %c, align 4
  call void @stg_update_load_i32(i32* %c, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @139, i32 0, i32 0))
  %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv6 = load i32, i32* %triangle_type, align 4
  call void @stg_update_load_i32(i32* %triangle_type, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @141, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @143, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @145, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @147, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @148, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @149, i32 0, i32 0))
  call void @_Z19print_triangle_typeiiii(i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv3, i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv4, i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv5, i32 %tmp__ZN29ClassifyTest_Equilateral_Test8TestBodyEv6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @151, i32 0, i32 0))
  call void @stg_record_test(i1 zeroext true)
  call void @stg_stop_intrmnt()
  ret void
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  call void @_ZN7testing14InitGoogleTestEPiPPc(i32* %argc.addr, i8** %0)
  %call = call i32 @_Z13RUN_ALL_TESTSv()
  ret i32 %call
}

declare void @_ZN7testing14InitGoogleTestEPiPPc(i32*, i8**) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_Z13RUN_ALL_TESTSv() #2 {
entry:
  %call = call %"class.testing::UnitTest"* @_ZN7testing8UnitTest11GetInstanceEv()
  %call1 = call i32 @_ZN7testing8UnitTest3RunEv(%"class.testing::UnitTest"* %call)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33ClassifyTest_InvalidTriangle_TestD1Ev(%class.ClassifyTest_InvalidTriangle_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_InvalidTriangle_Test*, align 8
  store %class.ClassifyTest_InvalidTriangle_Test* %this, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_InvalidTriangle_Test*, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  call void @_ZN33ClassifyTest_InvalidTriangle_TestD2Ev(%class.ClassifyTest_InvalidTriangle_Test* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33ClassifyTest_InvalidTriangle_TestD0Ev(%class.ClassifyTest_InvalidTriangle_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_InvalidTriangle_Test*, align 8
  store %class.ClassifyTest_InvalidTriangle_Test* %this, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_InvalidTriangle_Test*, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  call void @_ZN33ClassifyTest_InvalidTriangle_TestD1Ev(%class.ClassifyTest_InvalidTriangle_Test* %this1) #13
  %0 = bitcast %class.ClassifyTest_InvalidTriangle_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(%"class.testing::Test"*) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(%"class.testing::Test"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr %"struct.testing::Test::Setup_should_be_spelled_SetUp"* @_ZN7testing4Test5SetupEv(%"class.testing::Test"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::Test"*, align 8
  store %"class.testing::Test"* %this, %"class.testing::Test"** %this.addr, align 8
  %this1 = load %"class.testing::Test"*, %"class.testing::Test"** %this.addr, align 8
  ret %"struct.testing::Test::Setup_should_be_spelled_SetUp"* null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN25ClassifyTest_Scalene_TestD1Ev(%class.ClassifyTest_Scalene_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Scalene_Test*, align 8
  store %class.ClassifyTest_Scalene_Test* %this, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Scalene_Test*, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  call void @_ZN25ClassifyTest_Scalene_TestD2Ev(%class.ClassifyTest_Scalene_Test* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN25ClassifyTest_Scalene_TestD0Ev(%class.ClassifyTest_Scalene_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Scalene_Test*, align 8
  store %class.ClassifyTest_Scalene_Test* %this, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Scalene_Test*, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  call void @_ZN25ClassifyTest_Scalene_TestD1Ev(%class.ClassifyTest_Scalene_Test* %this1) #13
  %0 = bitcast %class.ClassifyTest_Scalene_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN27ClassifyTest_Isosceles_TestD1Ev(%class.ClassifyTest_Isosceles_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Isosceles_Test*, align 8
  store %class.ClassifyTest_Isosceles_Test* %this, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Isosceles_Test*, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  call void @_ZN27ClassifyTest_Isosceles_TestD2Ev(%class.ClassifyTest_Isosceles_Test* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN27ClassifyTest_Isosceles_TestD0Ev(%class.ClassifyTest_Isosceles_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Isosceles_Test*, align 8
  store %class.ClassifyTest_Isosceles_Test* %this, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Isosceles_Test*, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  call void @_ZN27ClassifyTest_Isosceles_TestD1Ev(%class.ClassifyTest_Isosceles_Test* %this1) #13
  %0 = bitcast %class.ClassifyTest_Isosceles_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN29ClassifyTest_Equilateral_TestD1Ev(%class.ClassifyTest_Equilateral_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Equilateral_Test*, align 8
  store %class.ClassifyTest_Equilateral_Test* %this, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Equilateral_Test*, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  call void @_ZN29ClassifyTest_Equilateral_TestD2Ev(%class.ClassifyTest_Equilateral_Test* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN29ClassifyTest_Equilateral_TestD0Ev(%class.ClassifyTest_Equilateral_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Equilateral_Test*, align 8
  store %class.ClassifyTest_Equilateral_Test* %this, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Equilateral_Test*, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  call void @_ZN29ClassifyTest_Equilateral_TestD1Ev(%class.ClassifyTest_Equilateral_Test* %this1) #13
  %0 = bitcast %class.ClassifyTest_Equilateral_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %this, %"class.std::__1::basic_string"* dereferenceable(24) %a_file, i32 %a_line) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"struct.testing::internal::CodeLocation"*, align 8
  %a_file.addr = alloca %"class.std::__1::basic_string"*, align 8
  %a_line.addr = alloca i32, align 4
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  store %"class.std::__1::basic_string"* %a_file, %"class.std::__1::basic_string"** %a_file.addr, align 8
  store i32 %a_line, i32* %a_line.addr, align 4
  %this1 = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  %file = getelementptr inbounds %"struct.testing::internal::CodeLocation", %"struct.testing::internal::CodeLocation"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %a_file.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(%"class.std::__1::basic_string"* %file, %"class.std::__1::basic_string"* dereferenceable(24) %0)
  %line = getelementptr inbounds %"struct.testing::internal::CodeLocation", %"struct.testing::internal::CodeLocation"* %this1, i32 0, i32 1
  %1 = load i32, i32* %a_line.addr, align 4
  store i32 %1, i32* %line, align 8
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(%"class.std::__1::basic_string"*, %"class.std::__1::basic_string"* dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEC2Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryBase"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryBaseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED1Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED2Ev(%"class.testing::internal::TestFactoryImpl"* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED0Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED1Ev(%"class.testing::internal::TestFactoryImpl"* %this1) #13
  %0 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #12
  %0 = bitcast i8* %call to %class.ClassifyTest_InvalidTriangle_Test*
  invoke void @_ZN33ClassifyTest_InvalidTriangle_TestC1Ev(%class.ClassifyTest_InvalidTriangle_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.ClassifyTest_InvalidTriangle_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseD1Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  call void @llvm.trap() #15
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseD0Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  call void @llvm.trap() #15
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #8

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33ClassifyTest_InvalidTriangle_TestED2Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN33ClassifyTest_InvalidTriangle_TestC1Ev(%class.ClassifyTest_InvalidTriangle_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_InvalidTriangle_Test*, align 8
  store %class.ClassifyTest_InvalidTriangle_Test* %this, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_InvalidTriangle_Test*, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  call void @_ZN33ClassifyTest_InvalidTriangle_TestC2Ev(%class.ClassifyTest_InvalidTriangle_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN33ClassifyTest_InvalidTriangle_TestC2Ev(%class.ClassifyTest_InvalidTriangle_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_InvalidTriangle_Test*, align 8
  store %class.ClassifyTest_InvalidTriangle_Test* %this, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_InvalidTriangle_Test*, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_InvalidTriangle_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.ClassifyTest_InvalidTriangle_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV33ClassifyTest_InvalidTriangle_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

declare void @_ZN7testing4TestC2Ev(%"class.testing::Test"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationD2Ev(%"struct.testing::internal::CodeLocation"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.testing::internal::CodeLocation"*, align 8
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  %this1 = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr, align 8
  %file = getelementptr inbounds %"struct.testing::internal::CodeLocation", %"struct.testing::internal::CodeLocation"* %this1, i32 0, i32 0
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %file) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.23"*, align 8
  store %"class.testing::internal::TestFactoryImpl.23"* %this, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.23"*, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.23"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.23"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED1Ev(%"class.testing::internal::TestFactoryImpl.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.23"*, align 8
  store %"class.testing::internal::TestFactoryImpl.23"* %this, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.23"*, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED2Ev(%"class.testing::internal::TestFactoryImpl.23"* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED0Ev(%"class.testing::internal::TestFactoryImpl.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.23"*, align 8
  store %"class.testing::internal::TestFactoryImpl.23"* %this, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.23"*, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED1Ev(%"class.testing::internal::TestFactoryImpl.23"* %this1) #13
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.23"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.23"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.23"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.23"* %this, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.23"*, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #12
  %0 = bitcast i8* %call to %class.ClassifyTest_Scalene_Test*
  invoke void @_ZN25ClassifyTest_Scalene_TestC1Ev(%class.ClassifyTest_Scalene_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.ClassifyTest_Scalene_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI25ClassifyTest_Scalene_TestED2Ev(%"class.testing::internal::TestFactoryImpl.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.23"*, align 8
  store %"class.testing::internal::TestFactoryImpl.23"* %this, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.23"*, %"class.testing::internal::TestFactoryImpl.23"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.23"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #13
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN25ClassifyTest_Scalene_TestC1Ev(%class.ClassifyTest_Scalene_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Scalene_Test*, align 8
  store %class.ClassifyTest_Scalene_Test* %this, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Scalene_Test*, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  call void @_ZN25ClassifyTest_Scalene_TestC2Ev(%class.ClassifyTest_Scalene_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN25ClassifyTest_Scalene_TestC2Ev(%class.ClassifyTest_Scalene_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Scalene_Test*, align 8
  store %class.ClassifyTest_Scalene_Test* %this, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Scalene_Test*, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_Scalene_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.ClassifyTest_Scalene_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV25ClassifyTest_Scalene_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.24"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.24"*, align 8
  store %"class.testing::internal::TestFactoryImpl.24"* %this, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.24"*, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.24"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.24"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED1Ev(%"class.testing::internal::TestFactoryImpl.24"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.24"*, align 8
  store %"class.testing::internal::TestFactoryImpl.24"* %this, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.24"*, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED2Ev(%"class.testing::internal::TestFactoryImpl.24"* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED0Ev(%"class.testing::internal::TestFactoryImpl.24"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.24"*, align 8
  store %"class.testing::internal::TestFactoryImpl.24"* %this, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.24"*, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED1Ev(%"class.testing::internal::TestFactoryImpl.24"* %this1) #13
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.24"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.24"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.24"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.24"* %this, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.24"*, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #12
  %0 = bitcast i8* %call to %class.ClassifyTest_Isosceles_Test*
  invoke void @_ZN27ClassifyTest_Isosceles_TestC1Ev(%class.ClassifyTest_Isosceles_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.ClassifyTest_Isosceles_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI27ClassifyTest_Isosceles_TestED2Ev(%"class.testing::internal::TestFactoryImpl.24"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.24"*, align 8
  store %"class.testing::internal::TestFactoryImpl.24"* %this, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.24"*, %"class.testing::internal::TestFactoryImpl.24"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.24"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #13
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN27ClassifyTest_Isosceles_TestC1Ev(%class.ClassifyTest_Isosceles_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Isosceles_Test*, align 8
  store %class.ClassifyTest_Isosceles_Test* %this, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Isosceles_Test*, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  call void @_ZN27ClassifyTest_Isosceles_TestC2Ev(%class.ClassifyTest_Isosceles_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN27ClassifyTest_Isosceles_TestC2Ev(%class.ClassifyTest_Isosceles_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Isosceles_Test*, align 8
  store %class.ClassifyTest_Isosceles_Test* %this, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Isosceles_Test*, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_Isosceles_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.ClassifyTest_Isosceles_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV27ClassifyTest_Isosceles_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.25"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.25"*, align 8
  store %"class.testing::internal::TestFactoryImpl.25"* %this, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.25"*, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.25"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.25"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED1Ev(%"class.testing::internal::TestFactoryImpl.25"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.25"*, align 8
  store %"class.testing::internal::TestFactoryImpl.25"* %this, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.25"*, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED2Ev(%"class.testing::internal::TestFactoryImpl.25"* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED0Ev(%"class.testing::internal::TestFactoryImpl.25"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.25"*, align 8
  store %"class.testing::internal::TestFactoryImpl.25"* %this, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.25"*, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED1Ev(%"class.testing::internal::TestFactoryImpl.25"* %this1) #13
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.25"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.25"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.25"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.25"* %this, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.25"*, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #12
  %0 = bitcast i8* %call to %class.ClassifyTest_Equilateral_Test*
  invoke void @_ZN29ClassifyTest_Equilateral_TestC1Ev(%class.ClassifyTest_Equilateral_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.ClassifyTest_Equilateral_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29ClassifyTest_Equilateral_TestED2Ev(%"class.testing::internal::TestFactoryImpl.25"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.25"*, align 8
  store %"class.testing::internal::TestFactoryImpl.25"* %this, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.25"*, %"class.testing::internal::TestFactoryImpl.25"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.25"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #13
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN29ClassifyTest_Equilateral_TestC1Ev(%class.ClassifyTest_Equilateral_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Equilateral_Test*, align 8
  store %class.ClassifyTest_Equilateral_Test* %this, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Equilateral_Test*, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  call void @_ZN29ClassifyTest_Equilateral_TestC2Ev(%class.ClassifyTest_Equilateral_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN29ClassifyTest_Equilateral_TestC2Ev(%class.ClassifyTest_Equilateral_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Equilateral_Test*, align 8
  store %class.ClassifyTest_Equilateral_Test* %this, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Equilateral_Test*, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_Equilateral_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.ClassifyTest_Equilateral_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV29ClassifyTest_Equilateral_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

declare %"class.testing::UnitTest"* @_ZN7testing8UnitTest11GetInstanceEv() #1

declare i32 @_ZN7testing8UnitTest3RunEv(%"class.testing::UnitTest"*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33ClassifyTest_InvalidTriangle_TestD2Ev(%class.ClassifyTest_InvalidTriangle_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_InvalidTriangle_Test*, align 8
  store %class.ClassifyTest_InvalidTriangle_Test* %this, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_InvalidTriangle_Test*, %class.ClassifyTest_InvalidTriangle_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_InvalidTriangle_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(%"class.testing::Test"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN25ClassifyTest_Scalene_TestD2Ev(%class.ClassifyTest_Scalene_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Scalene_Test*, align 8
  store %class.ClassifyTest_Scalene_Test* %this, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Scalene_Test*, %class.ClassifyTest_Scalene_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_Scalene_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN27ClassifyTest_Isosceles_TestD2Ev(%class.ClassifyTest_Isosceles_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Isosceles_Test*, align 8
  store %class.ClassifyTest_Isosceles_Test* %this, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Isosceles_Test*, %class.ClassifyTest_Isosceles_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_Isosceles_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN29ClassifyTest_Equilateral_TestD2Ev(%class.ClassifyTest_Equilateral_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.ClassifyTest_Equilateral_Test*, align 8
  store %class.ClassifyTest_Equilateral_Test* %this, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %this1 = load %class.ClassifyTest_Equilateral_Test*, %class.ClassifyTest_Equilateral_Test** %this.addr, align 8
  %0 = bitcast %class.ClassifyTest_Equilateral_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #13
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %__r_)
  %1 = load i8*, i8** %__s.addr, align 8
  %2 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #13
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %this1, i8* %1, i64 %call)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv(%"class.std::__1::__compressed_pair"* %this1)
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #5 align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @strlen(i8* %0) #13
  ret i64 %call
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv(%"class.std::__1::__compressed_pair"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %0)
  %1 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.1"*
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_ to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"class.std::__1::allocator"*
  call void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %0) #13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* %a, void ()* %def) #5 {
entry:
  %a.addr = alloca void ()*, align 8
  %def.addr = alloca void ()*, align 8
  store void ()* %a, void ()** %a.addr, align 8
  store void ()* %def, void ()** %def.addr, align 8
  %0 = load void ()*, void ()** %a.addr, align 8
  %1 = load void ()*, void ()** %def.addr, align 8
  %cmp = icmp eq void ()* %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load void ()*, void ()** %a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi void ()* [ null, %cond.true ], [ %2, %cond.false ]
  ret void ()* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing4Test13SetUpTestCaseEv() #5 align 2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing4Test14SetUpTestSuiteEv() #5 align 2 {
entry:
  ret void
}

declare zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 zeroext) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str) #2 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i8*, i8** %__str.addr, align 8
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #13
  %call1 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %1, i64 %call)
  ret %"class.std::__1::basic_ostream"* %call1
}

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"*, i32, i8*, i32) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::GTestLog"*, align 8
  store %"class.testing::internal::GTestLog"* %this, %"class.testing::internal::GTestLog"** %this.addr, align 8
  %this1 = load %"class.testing::internal::GTestLog"*, %"class.testing::internal::GTestLog"** %this.addr, align 8
  ret %"class.std::__1::basic_ostream"* @_ZNSt3__14cerrE
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"*) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, %"class.std::__1::basic_ostream"* dereferenceable(160) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call, label %if.then, label %if.end27

if.then:                                          ; preds = %invoke.cont2
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  call void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::basic_ostream"* dereferenceable(160) %1) #13
  %2 = load i8*, i8** %__str.addr, align 8
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %3 to i8**
  %vtable = load i8*, i8** %4, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %5 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %5, align 8
  %6 = bitcast %"class.std::__1::basic_ostream"* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %vbase.offset
  %7 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*
  %call4 = invoke i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %7)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %if.then
  %and = and i32 %call4, 176
  %cmp = icmp eq i32 %and, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont3
  %8 = load i8*, i8** %__str.addr, align 8
  %9 = load i64, i64* %__len.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont3
  %10 = load i8*, i8** %__str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr5, %cond.true ], [ %10, %cond.false ]
  %11 = load i8*, i8** %__str.addr, align 8
  %12 = load i64, i64* %__len.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %14 = bitcast %"class.std::__1::basic_ostream"* %13 to i8**
  %vtable7 = load i8*, i8** %14, align 8
  %vbase.offset.ptr8 = getelementptr i8, i8* %vtable7, i64 -24
  %15 = bitcast i8* %vbase.offset.ptr8 to i64*
  %vbase.offset9 = load i64, i64* %15, align 8
  %16 = bitcast %"class.std::__1::basic_ostream"* %13 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 %vbase.offset9
  %17 = bitcast i8* %add.ptr10 to %"class.std::__1::ios_base"*
  %18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %19 = bitcast %"class.std::__1::basic_ostream"* %18 to i8**
  %vtable11 = load i8*, i8** %19, align 8
  %vbase.offset.ptr12 = getelementptr i8, i8* %vtable11, i64 -24
  %20 = bitcast i8* %vbase.offset.ptr12 to i64*
  %vbase.offset13 = load i64, i64* %20, align 8
  %21 = bitcast %"class.std::__1::basic_ostream"* %18 to i8*
  %add.ptr14 = getelementptr inbounds i8, i8* %21, i64 %vbase.offset13
  %22 = bitcast i8* %add.ptr14 to %"class.std::__1::basic_ios"*
  %call16 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %22)
          to label %invoke.cont15 unwind label %lpad1

invoke.cont15:                                    ; preds = %cond.end
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0
  %23 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  %call18 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %23, i8* %2, i8* %cond, i8* %add.ptr6, %"class.std::__1::ios_base"* dereferenceable(136) %17, i8 signext %call16)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %invoke.cont15
  %coerce.dive19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %call18, %"class.std::__1::basic_streambuf"** %coerce.dive19, align 8
  %call20 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %ref.tmp) #13
  br i1 %call20, label %if.then21, label %if.end

if.then21:                                        ; preds = %invoke.cont17
  %24 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %25 = bitcast %"class.std::__1::basic_ostream"* %24 to i8**
  %vtable22 = load i8*, i8** %25, align 8
  %vbase.offset.ptr23 = getelementptr i8, i8* %vtable22, i64 -24
  %26 = bitcast i8* %vbase.offset.ptr23 to i64*
  %vbase.offset24 = load i64, i64* %26, align 8
  %27 = bitcast %"class.std::__1::basic_ostream"* %24 to i8*
  %add.ptr25 = getelementptr inbounds i8, i8* %27, i64 %vbase.offset24
  %28 = bitcast i8* %add.ptr25 to %"class.std::__1::basic_ios"*
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %28, i32 5)
          to label %invoke.cont26 unwind label %lpad1

invoke.cont26:                                    ; preds = %if.then21
  br label %if.end

lpad:                                             ; preds = %entry
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then21, %invoke.cont15, %cond.end, %if.then, %invoke.cont
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot, align 4
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #13
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %35 = call i8* @__cxa_begin_catch(i8* %exn) #13
  %36 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %37 = bitcast %"class.std::__1::basic_ostream"* %36 to i8**
  %vtable28 = load i8*, i8** %37, align 8
  %vbase.offset.ptr29 = getelementptr i8, i8* %vtable28, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr29 to i64*
  %vbase.offset30 = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::__1::basic_ostream"* %36 to i8*
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 %vbase.offset30
  %40 = bitcast i8* %add.ptr31 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %40)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %if.end27, %invoke.cont33
  %41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  ret %"class.std::__1::basic_ostream"* %41

if.end:                                           ; preds = %invoke.cont26, %invoke.cont17
  br label %if.end27

if.end27:                                         ; preds = %if.end, %invoke.cont2
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #13
  br label %try.cont

lpad32:                                           ; preds = %catch
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont34 unwind label %terminate.lpad

invoke.cont34:                                    ; preds = %lpad32
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont34
  %exn35 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn35, 0
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val36

terminate.lpad:                                   ; preds = %lpad32
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #15
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr, align 8
  %__ok_ = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this1, i32 0, i32 0
  %0 = load i8, i8* %__ok_, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca i8*, align 8
  %__op.addr = alloca i8*, align 8
  %__oe.addr = alloca i8*, align 8
  %__iob.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %__s.coerce, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  store i8* %__ob, i8** %__ob.addr, align 8
  store i8* %__op, i8** %__op.addr, align 8
  store i8* %__oe, i8** %__oe.addr, align 8
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  store i8 %__fl, i8* %__fl.addr, align 1
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %__oe.addr, align 8
  %4 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %__sz, align 8
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  %call = call i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %5)
  store i64 %call, i64* %__ns, align 8
  %6 = load i64, i64* %__ns, align 8
  %7 = load i64, i64* %__sz, align 8
  %cmp1 = icmp sgt i64 %6, %7
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i64, i64* %__sz, align 8
  %9 = load i64, i64* %__ns, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, i64* %__ns, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %10 = load i8*, i8** %__op.addr, align 8
  %11 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %11 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, i64* %__np, align 8
  %12 = load i64, i64* %__np, align 8
  %cmp7 = icmp sgt i64 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %13 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8
  %14 = load i8*, i8** %__ob.addr, align 8
  %15 = load i64, i64* %__np, align 8
  %call10 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %13, i8* %14, i64 %15)
  %16 = load i64, i64* %__np, align 8
  %cmp11 = icmp ne i64 %call10, %16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8
  %17 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %18 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %19 = load i64, i64* %__ns, align 8
  %cmp16 = icmp sgt i64 %19, 0
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %20 = load i64, i64* %__ns, align 8
  %21 = load i8, i8* %__fl.addr, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* %__sp, i64 %20, i8 signext %21)
  %__sbuf_18 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %22 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_18, align 8
  %call19 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__sp) #13
  %23 = load i64, i64* %__ns, align 8
  %call20 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %22, i8* %call19, i64 %23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %24 = load i64, i64* %__ns, align 8
  %cmp21 = icmp ne i64 %call20, %24
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %invoke.cont
  %__sbuf_23 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_23, align 8
  %25 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %26 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #13
  br label %eh.resume

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25

if.end25:                                         ; preds = %cleanup.cont, %if.end15
  %30 = load i8*, i8** %__oe.addr, align 8
  %31 = load i8*, i8** %__op.addr, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %31 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  store i64 %sub.ptr.sub28, i64* %__np, align 8
  %32 = load i64, i64* %__np, align 8
  %cmp29 = icmp sgt i64 %32, 0
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end25
  %__sbuf_31 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %33 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_31, align 8
  %34 = load i8*, i8** %__op.addr, align 8
  %35 = load i64, i64* %__np, align 8
  %call32 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %33, i8* %34, i64 %35)
  %36 = load i64, i64* %__np, align 8
  %cmp33 = icmp ne i64 %call32, %36
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then30
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8
  %37 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %38 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  br label %return

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end25
  %39 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  %call38 = call i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %39, i64 0)
  %40 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %41 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  br label %return

return:                                           ; preds = %if.end37, %if.then34, %cleanup, %if.then12, %if.then
  %coerce.dive39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0
  %42 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive39, align 8
  ret %"class.std::__1::basic_streambuf"* %42

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val40 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val40

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::basic_ostream"* dereferenceable(160) %__s) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  call void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1, %"class.std::__1::basic_ostream"* dereferenceable(160) %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 1
  %0 = load i32, i32* %__fmtflags_, align 8
  ret i32 %0
}

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #13
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %0 = load i32, i32* %__fill_, align 8
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call, i32 %0) #13
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %this1, i8 signext 32)
  %conv = sext i8 %call3 to i32
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  store i32 %conv, i32* %__fill_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %1 = load i32, i32* %__fill_5, align 8
  %conv6 = trunc i32 %1 to i8
  ret i8 %conv6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %this, i32 %__state) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store i32 %__state, i32* %__state.addr, align 4
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %1 = load i32, i32* %__state.addr, align 4
  call void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #6

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #1

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #10 {
bb:
  %1 = call i8* @__cxa_begin_catch(i8* %0) #13
  call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  %0 = load i64, i64* %__width_, align 8
  ret i64 %0
}

; Function Attrs: noinline optnone ssp uwtable
define internal i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %this, i8* %__s, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = bitcast %"class.std::__1::basic_streambuf"* %this1 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %2, align 8
  %vfn = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable, i64 12
  %3 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn, align 8
  %call = call i64 %3(%"class.std::__1::basic_streambuf"* %this1, i8* %0, i64 %1)
  ret i64 %call
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* %this, i64 %__n, i8 signext %__c) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load i8, i8* %__c.addr, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this1) #13
  %call2 = call i8* @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_(i8* %call) #13
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %this, i64 %__wide) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__wide.addr = alloca i64, align 8
  %__r = alloca i64, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  store i64 %__wide, i64* %__wide.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  %0 = load i64, i64* %__width_, align 8
  store i64 %0, i64* %__r, align 8
  %1 = load i64, i64* %__wide.addr, align 8
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  store i64 %1, i64* %__width_2, align 8
  %2 = load i64, i64* %__r, align 8
  ret i64 %2
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* %this, i64 %__n, i8 signext %__c) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %__r_)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i8, i8* %__c.addr, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1, i64 %1, i8 signext %2)
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_(i8* %__p) #5 {
entry:
  %__p.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #13
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this1) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s, i32 0, i32 0
  %__size_ = bitcast %union.anon.0* %1 to i8*
  %2 = load i8, i8* %__size_, align 8
  %conv = zext i8 %2 to i64
  %and = and i64 %conv, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l, i32 0, i32 2
  %1 = load i8*, i8** %__data_, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s, i32 0, i32 1
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %arrayidx) #13
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #13
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %__r) #5 align 2 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8
  %0 = load i8*, i8** %__r.addr, align 8
  %call = call i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %0) #13
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %__x) #5 {
entry:
  %__x.addr = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr, align 8
  %0 = load i8*, i8** %__x.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::basic_ostream"* dereferenceable(160) %__s) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1 to %"struct.std::__1::iterator"*
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %2 = bitcast %"class.std::__1::basic_ostream"* %1 to i8**
  %vtable = load i8*, i8** %2, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset
  %5 = bitcast i8* %add.ptr to %"class.std::__1::basic_ios"*
  %call = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %5)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_streambuf"* %call, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %call = call i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %0)
  %1 = bitcast i8* %call to %"class.std::__1::basic_streambuf"*
  ret %"class.std::__1::basic_streambuf"* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 6
  %0 = load i8*, i8** %__rdbuf_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #5 align 2 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  store i32 %__c2, i32* %__c2.addr, align 4
  %0 = load i32, i32* %__c1.addr, align 4
  %1 = load i32, i32* %__c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #5 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %this, i8 signext %__c) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %ref.tmp, %"class.std::__1::ios_base"* %0)
  %call = invoke dereferenceable(32) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %__c.addr, align 1
  %call3 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %call, i8 signext %1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp) #13
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline optnone ssp uwtable
define internal dereferenceable(32) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* dereferenceable(8) %__l) #2 {
entry:
  %__l.addr = alloca %"class.std::__1::locale"*, align 8
  store %"class.std::__1::locale"* %__l, %"class.std::__1::locale"** %__l.addr, align 8
  %0 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr, align 8
  %call = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %0, %"class.std::__1::locale::id"* dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
  %1 = bitcast %"class.std::__1::locale::facet"* %call to %"class.std::__1::ctype"*
  ret %"class.std::__1::ctype"* %1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %this, i8 signext %__c) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::ctype"* %this, %"class.std::__1::ctype"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr, align 8
  %0 = load i8, i8* %__c.addr, align 1
  %1 = bitcast %"class.std::__1::ctype"* %this1 to i8 (%"class.std::__1::ctype"*, i8)***
  %vtable = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %1, align 8
  %vfn = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable, i64 7
  %2 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn, align 8
  %call = call signext i8 %2(%"class.std::__1::ctype"* %this1, i8 signext %0)
  ret i8 %call
}

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #6

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %this, i32 %__state) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  store i32 %__state, i32* %__state.addr, align 4
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 4
  %0 = load i32, i32* %__rdstate_, align 8
  %1 = load i32, i32* %__state.addr, align 4
  %or = or i32 %0, %1
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1, i32 %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing4Test16TearDownTestCaseEv() #5 align 2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing4Test17TearDownTestSuiteEv() #5 align 2 {
entry:
  ret void
}

; Function Attrs: noinline ssp uwtable
define internal void @_GLOBAL__sub_I_classify_test.cpp() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.6()
  call void @__cxx_global_var_init.8()
  call void @__cxx_global_var_init.10()
  ret void
}

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_una_intrinsic(i8*, i8*, i8*, i8*)

declare void @stg_update_cast_i1(i8*, i8*, i8*, i8*, i8*, i1)

declare void @stg_update_cast_i8(i8*, i8*, i8*, i8*, i8*, i8)

declare void @stg_update_cast_i32(i8*, i8*, i8*, i8*, i8*, i32)

declare void @stg_update_cast_i64(i8*, i8*, i8*, i8*, i8*, i64)

declare void @stg_update_cast_float(i8*, i8*, i8*, i8*, i8*, float)

declare void @stg_update_cast_double(i8*, i8*, i8*, i8*, i8*, double)

declare void @stg_update_pc(i1, i8*)

declare void @stg_update_char(i8*, i8*)

declare void @stg_update_phi(i8*, i8*)

declare void @stg_update_int(i8*, i32, i8*)

declare void @stg_update_load_i32(i32*, i8*)

declare void @stg_update_input_i32(i32*)

declare void @stg_update_input_i64(i64*)

declare void @stg_update_input_float(float*)

declare void @stg_update_input_double(double*)

declare void @stg_update_store_i32(i32*, i8*)

declare void @stg_update_load_i8(i8*, i8*)

declare void @stg_update_store_i8(i8*, i8*)

declare void @stg_update_load_i1(i1*, i8*)

declare void @stg_update_store_i1(i1*, i8*)

declare void @stg_update_load_float(float*, i8*)

declare void @stg_update_store_float(float*, i8*)

declare void @stg_update_cmp(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_load_i64(i64*, i8*)

declare void @stg_update_store_i64(i64*, i8*)

declare void @stg_update_store_double(double*, i8*)

declare void @stg_update_load_double(double*, i8*)

declare void @stg_update_float(i8*, float, i8*)

declare void @stg_update_double(i8*, double, i8*)

declare void @stg_update_bin_intrinsic(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_prev_bb(i8*)

declare void @stg_update_select(i8*, i1, i8*, i8*, i8*, i8*)

attributes #0 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { argmemonly nounwind willreturn writeonly }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { argmemonly nounwind willreturn }
attributes #12 = { builtin }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
