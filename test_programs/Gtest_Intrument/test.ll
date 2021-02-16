; ModuleID = 'test.bc'
source_filename = "test.cpp"
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
%class.foo_test1_Test = type { %"class.testing::Test" }
%"class.testing::Test" = type { i32 (...)**, %"class.std::__1::unique_ptr.17" }
%"class.std::__1::unique_ptr.17" = type { %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.18" = type { %"struct.std::__1::__compressed_pair_elem.19" }
%"struct.std::__1::__compressed_pair_elem.19" = type { %"class.testing::internal::GTestFlagSaver"* }
%"class.testing::internal::GTestFlagSaver" = type opaque
%"class.testing::AssertionResult" = type { i8, %"class.std::__1::unique_ptr.23" }
%"class.std::__1::unique_ptr.23" = type { %"class.std::__1::__compressed_pair.24" }
%"class.std::__1::__compressed_pair.24" = type { %"struct.std::__1::__compressed_pair_elem.25" }
%"struct.std::__1::__compressed_pair_elem.25" = type { %"class.std::__1::basic_string"* }
%"class.testing::Message" = type { %"class.std::__1::unique_ptr.29" }
%"class.std::__1::unique_ptr.29" = type { %"class.std::__1::__compressed_pair.30" }
%"class.std::__1::__compressed_pair.30" = type { %"struct.std::__1::__compressed_pair_elem.31" }
%"struct.std::__1::__compressed_pair_elem.31" = type { %"class.std::__1::basic_stringstream"* }
%"class.std::__1::basic_stringstream" = type { %"class.std::__1::basic_iostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_iostream.base" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base" }
%"class.std::__1::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::__1::basic_ostream.base" = type { i32 (...)** }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", i8*, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.testing::internal::AssertHelper" = type { %"struct.testing::internal::AssertHelper::AssertHelperData"* }
%"struct.testing::internal::AssertHelper::AssertHelperData" = type { i32, i8*, i32, %"class.std::__1::basic_string" }
%"class.testing::UnitTest" = type { i32 (...)**, %"class.testing::internal::Mutex", %"class.testing::internal::UnitTestImpl"* }
%"class.testing::internal::UnitTestImpl" = type opaque
%"struct.testing::Test::Setup_should_be_spelled_SetUp" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"struct.std::__1::default_delete.33" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.32" = type { i8 }
%"struct.std::__1::default_delete.27" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.26" = type { i8 }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.1" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::basic_iostream" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_istream" = type { i32 (...)**, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::fpos" = type { %union.__mbstate_t, i64 }
%union.__mbstate_t = type { i64, [120 x i8] }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw" = type { [3 x i64] }
%"struct.std::__1::__less" = type { i8 }
%"struct.testing::internal::WrapPrinterType" = type { i8 }
%"struct.std::__1::__second_tag" = type { i8 }
%"struct.std::__1::random_access_iterator_tag" = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__has_max_size" = type { i8 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::__libcpp_refstring" = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@_ZN14foo_test1_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"test.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@_ZTV14foo_test1_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14foo_test1_Test to i8*), i8* bitcast (void (%class.foo_test1_Test*)* @_ZN14foo_test1_TestD1Ev to i8*), i8* bitcast (void (%class.foo_test1_Test*)* @_ZN14foo_test1_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.foo_test1_Test*)* @_ZN14foo_test1_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS14foo_test1_Test = constant [17 x i8] c"14foo_test1_Test\00"
@_ZTIN7testing4TestE = external constant i8*
@_ZTI14foo_test1_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14foo_test1_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI14foo_test1_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI14foo_test1_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI14foo_test1_TestEE = linkonce_odr constant [55 x i8] c"N7testing8internal15TestFactoryImplI14foo_test1_TestEE\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00"
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_ZTSN7testing8internal15TestFactoryBaseE, i32 0, i32 0) }
@_ZTIN7testing8internal15TestFactoryImplI14foo_test1_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @_ZTSN7testing8internal15TestFactoryImplI14foo_test1_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryBaseE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryBase"*)* @_ZN7testing8internal15TestFactoryBaseD1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryBase"*)* @_ZN7testing8internal15TestFactoryBaseD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, align 8
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"/usr/local/include/gtest/internal/gtest-internal.h\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.11 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@_ZNSt3__14cerrE = external global %"class.std::__1::basic_ostream", align 8
@.str.13 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant [10 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 2, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i8*)]
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -112 to i8*), i8* inttoptr (i64 -112 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant [69 x i8] c"NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00"
@_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*) }
@_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE = external unnamed_addr constant { [4 x i8*] }
@_ZTVNSt3__18ios_baseE = external unnamed_addr constant { [4 x i8*] }
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [16 x i8*] } { [16 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE to i8*), i8* bitcast (%"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, %"class.std::__1::fpos"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i8*)] }, align 8
@_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant [66 x i8] c"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00"
@_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE to i8*) }
@.str.14 = private unnamed_addr constant [68 x i8] c"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00", align 1
@_ZTISt12length_error = external constant i8*
@_ZTVSt12length_error = external unnamed_addr constant { [5 x i8*] }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }]
@0 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@2 = private unnamed_addr constant [13 x i8] c"invoke.cont2\00", align 1
@3 = private unnamed_addr constant [13 x i8] c"invoke.cont3\00", align 1
@4 = private unnamed_addr constant [13 x i8] c"invoke.cont5\00", align 1
@5 = private unnamed_addr constant [13 x i8] c"invoke.cont7\00", align 1
@6 = private unnamed_addr constant [14 x i8] c"invoke.cont10\00", align 1
@7 = private unnamed_addr constant [14 x i8] c"invoke.cont11\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@9 = private unnamed_addr constant [6 x i8] c"lpad1\00", align 1
@10 = private unnamed_addr constant [6 x i8] c"lpad9\00", align 1
@11 = private unnamed_addr constant [10 x i8] c"ehcleanup\00", align 1
@12 = private unnamed_addr constant [12 x i8] c"ehcleanup13\00", align 1
@13 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@14 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@15 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@16 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@17 = private unnamed_addr constant [8 x i8] c"lor.rhs\00", align 1
@18 = private unnamed_addr constant [8 x i8] c"lor.end\00", align 1
@19 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@21 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@22 = private unnamed_addr constant [13 x i8] c"invoke.cont5\00", align 1
@23 = private unnamed_addr constant [13 x i8] c"invoke.cont7\00", align 1
@24 = private unnamed_addr constant [13 x i8] c"invoke.cont9\00", align 1
@25 = private unnamed_addr constant [14 x i8] c"invoke.cont11\00", align 1
@26 = private unnamed_addr constant [14 x i8] c"invoke.cont13\00", align 1
@27 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@28 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@29 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@30 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@31 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@32 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@33 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@34 = private unnamed_addr constant [8 x i8] c"lor.rhs\00", align 1
@35 = private unnamed_addr constant [8 x i8] c"lor.end\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@37 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@38 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@39 = private unnamed_addr constant [13 x i8] c"invoke.cont5\00", align 1
@40 = private unnamed_addr constant [13 x i8] c"invoke.cont7\00", align 1
@41 = private unnamed_addr constant [13 x i8] c"invoke.cont9\00", align 1
@42 = private unnamed_addr constant [14 x i8] c"invoke.cont11\00", align 1
@43 = private unnamed_addr constant [14 x i8] c"invoke.cont13\00", align 1
@44 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@45 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@46 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@47 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@49 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@50 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@51 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@53 = private unnamed_addr constant [22 x i8] c"stg_start_intrmnt_RET\00", align 1
@54 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@55 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@56 = private unnamed_addr constant [36 x i8] c"tmp__ZN14foo_test1_Test8TestBodyEv2\00", align 1
@57 = private unnamed_addr constant [36 x i8] c"tmp__ZN14foo_test1_Test8TestBodyEv2\00", align 1
@58 = private unnamed_addr constant [36 x i8] c"tmp__ZN14foo_test1_Test8TestBodyEv3\00", align 1
@59 = private unnamed_addr constant [36 x i8] c"tmp__ZN14foo_test1_Test8TestBodyEv3\00", align 1
@60 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@61 = private unnamed_addr constant [36 x i8] c"tmp__ZN14foo_test1_Test8TestBodyEv2\00", align 1
@62 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@63 = private unnamed_addr constant [36 x i8] c"tmp__ZN14foo_test1_Test8TestBodyEv3\00", align 1
@64 = private unnamed_addr constant [36 x i8] c"call__ZN14foo_test1_Test8TestBodyEv\00", align 1
@65 = private unnamed_addr constant [13 x i8] c"_Z3fooii_RET\00", align 1
@66 = private unnamed_addr constant [36 x i8] c"call__ZN14foo_test1_Test8TestBodyEv\00", align 1
@67 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@68 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@69 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@70 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@71 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@72 = private unnamed_addr constant [13 x i8] c"invoke.cont4\00", align 1
@73 = private unnamed_addr constant [13 x i8] c"invoke.cont7\00", align 1
@74 = private unnamed_addr constant [13 x i8] c"invoke.cont9\00", align 1
@75 = private unnamed_addr constant [14 x i8] c"invoke.cont11\00", align 1
@76 = private unnamed_addr constant [6 x i8] c"lpad6\00", align 1
@77 = private unnamed_addr constant [7 x i8] c"lpad10\00", align 1
@78 = private unnamed_addr constant [10 x i8] c"ehcleanup\00", align 1
@79 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@80 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@81 = private unnamed_addr constant [13 x i8] c"cleanup.cont\00", align 1
@82 = private unnamed_addr constant [12 x i8] c"ehcleanup12\00", align 1
@83 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@84 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@85 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@86 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@87 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@88 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@89 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@90 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@91 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@92 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@93 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@94 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@95 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@96 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@97 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@98 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@99 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@100 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@101 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@102 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@103 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@105 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@106 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@107 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@108 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@109 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@111 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@112 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@113 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@114 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@115 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@116 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@117 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@118 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@119 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@120 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@121 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@122 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@123 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@124 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@125 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@126 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@127 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@128 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@129 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@130 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@131 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@132 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@133 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@134 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@135 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@136 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@137 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@138 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@139 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@140 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@141 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@142 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@143 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@144 = private unnamed_addr constant [15 x i8] c"delete.notnull\00", align 1
@145 = private unnamed_addr constant [11 x i8] c"delete.end\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@147 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@148 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@149 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@150 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@151 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@152 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@153 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@154 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@155 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@156 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@157 = private unnamed_addr constant [15 x i8] c"delete.notnull\00", align 1
@158 = private unnamed_addr constant [11 x i8] c"delete.end\00", align 1
@159 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@160 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@161 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@162 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@163 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@164 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@165 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@166 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@167 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@168 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@169 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@170 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@171 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@172 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@173 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@174 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@175 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@176 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@177 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@178 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@179 = private unnamed_addr constant [13 x i8] c"invoke.cont2\00", align 1
@180 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@181 = private unnamed_addr constant [13 x i8] c"invoke.cont3\00", align 1
@182 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@183 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@184 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@185 = private unnamed_addr constant [14 x i8] c"invoke.cont15\00", align 1
@186 = private unnamed_addr constant [14 x i8] c"invoke.cont17\00", align 1
@187 = private unnamed_addr constant [10 x i8] c"if.then21\00", align 1
@188 = private unnamed_addr constant [14 x i8] c"invoke.cont26\00", align 1
@189 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@190 = private unnamed_addr constant [6 x i8] c"lpad1\00", align 1
@191 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@192 = private unnamed_addr constant [14 x i8] c"invoke.cont33\00", align 1
@193 = private unnamed_addr constant [9 x i8] c"try.cont\00", align 1
@194 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@195 = private unnamed_addr constant [9 x i8] c"if.end27\00", align 1
@196 = private unnamed_addr constant [7 x i8] c"lpad32\00", align 1
@197 = private unnamed_addr constant [14 x i8] c"invoke.cont34\00", align 1
@198 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@199 = private unnamed_addr constant [15 x i8] c"terminate.lpad\00", align 1
@200 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@201 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@202 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@203 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@204 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@205 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@206 = private unnamed_addr constant [8 x i8] c"if.end3\00", align 1
@207 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@208 = private unnamed_addr constant [10 x i8] c"if.then12\00", align 1
@209 = private unnamed_addr constant [9 x i8] c"if.end14\00", align 1
@210 = private unnamed_addr constant [9 x i8] c"if.end15\00", align 1
@211 = private unnamed_addr constant [10 x i8] c"if.then17\00", align 1
@212 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@213 = private unnamed_addr constant [10 x i8] c"if.then22\00", align 1
@214 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@215 = private unnamed_addr constant [9 x i8] c"if.end24\00", align 1
@216 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@217 = private unnamed_addr constant [13 x i8] c"cleanup.cont\00", align 1
@218 = private unnamed_addr constant [9 x i8] c"if.end25\00", align 1
@219 = private unnamed_addr constant [10 x i8] c"if.then30\00", align 1
@220 = private unnamed_addr constant [10 x i8] c"if.then34\00", align 1
@221 = private unnamed_addr constant [9 x i8] c"if.end36\00", align 1
@222 = private unnamed_addr constant [9 x i8] c"if.end37\00", align 1
@223 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@224 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@225 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@226 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@227 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@228 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@229 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@230 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@231 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@232 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@233 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@234 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@235 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@236 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@237 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@238 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@239 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@240 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@241 = private unnamed_addr constant [15 x i8] c"terminate.lpad\00", align 1
@242 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@243 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@244 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@245 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@246 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@247 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@248 = private unnamed_addr constant [13 x i8] c"invoke.cont2\00", align 1
@249 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@250 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@251 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@252 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@253 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@254 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@255 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@256 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@257 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@258 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@259 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@260 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@261 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@262 = private unnamed_addr constant [13 x i8] c"invoke.cont3\00", align 1
@263 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@264 = private unnamed_addr constant [6 x i8] c"lpad2\00", align 1
@265 = private unnamed_addr constant [10 x i8] c"ehcleanup\00", align 1
@266 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@267 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@268 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@269 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@270 = private unnamed_addr constant [13 x i8] c"cast.notnull\00", align 1
@271 = private unnamed_addr constant [9 x i8] c"cast.end\00", align 1
@272 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@273 = private unnamed_addr constant [13 x i8] c"invoke.cont1\00", align 1
@274 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@275 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@276 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@277 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@278 = private unnamed_addr constant [13 x i8] c"invoke.cont7\00", align 1
@279 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@280 = private unnamed_addr constant [6 x i8] c"lpad6\00", align 1
@281 = private unnamed_addr constant [10 x i8] c"ehcleanup\00", align 1
@282 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@283 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@284 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@285 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@286 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@287 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@288 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@289 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@290 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@291 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@292 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@293 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@294 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@295 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@296 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@297 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@298 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@299 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@300 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@301 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@302 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@303 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@304 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@305 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@306 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@307 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@308 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@309 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@310 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@311 = private unnamed_addr constant [10 x i8] c"if.then10\00", align 1
@312 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@313 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@314 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@315 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@316 = private unnamed_addr constant [6 x i8] c"sw.bb\00", align 1
@317 = private unnamed_addr constant [8 x i8] c"sw.bb16\00", align 1
@318 = private unnamed_addr constant [10 x i8] c"if.then18\00", align 1
@319 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@320 = private unnamed_addr constant [9 x i8] c"if.end29\00", align 1
@321 = private unnamed_addr constant [8 x i8] c"sw.bb30\00", align 1
@322 = private unnamed_addr constant [11 x i8] c"sw.default\00", align 1
@323 = private unnamed_addr constant [10 x i8] c"sw.epilog\00", align 1
@324 = private unnamed_addr constant [14 x i8] c"lor.lhs.false\00", align 1
@325 = private unnamed_addr constant [10 x i8] c"if.then33\00", align 1
@326 = private unnamed_addr constant [9 x i8] c"if.end34\00", align 1
@327 = private unnamed_addr constant [10 x i8] c"if.then36\00", align 1
@328 = private unnamed_addr constant [16 x i8] c"land.lhs.true39\00", align 1
@329 = private unnamed_addr constant [10 x i8] c"if.then42\00", align 1
@330 = private unnamed_addr constant [9 x i8] c"if.end43\00", align 1
@331 = private unnamed_addr constant [16 x i8] c"land.lhs.true46\00", align 1
@332 = private unnamed_addr constant [10 x i8] c"if.then49\00", align 1
@333 = private unnamed_addr constant [9 x i8] c"if.end50\00", align 1
@334 = private unnamed_addr constant [9 x i8] c"if.end51\00", align 1
@335 = private unnamed_addr constant [10 x i8] c"if.then54\00", align 1
@336 = private unnamed_addr constant [9 x i8] c"if.end58\00", align 1
@337 = private unnamed_addr constant [10 x i8] c"if.then61\00", align 1
@338 = private unnamed_addr constant [9 x i8] c"if.end64\00", align 1
@339 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@340 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@341 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@342 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@343 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@344 = private unnamed_addr constant [9 x i8] c"if.then4\00", align 1
@345 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@346 = private unnamed_addr constant [9 x i8] c"if.end12\00", align 1
@347 = private unnamed_addr constant [10 x i8] c"if.then16\00", align 1
@348 = private unnamed_addr constant [9 x i8] c"if.end19\00", align 1
@349 = private unnamed_addr constant [9 x i8] c"if.end20\00", align 1
@350 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@351 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@352 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@353 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@354 = private unnamed_addr constant [9 x i8] c"if.then7\00", align 1
@355 = private unnamed_addr constant [10 x i8] c"if.then10\00", align 1
@356 = private unnamed_addr constant [9 x i8] c"if.end15\00", align 1
@357 = private unnamed_addr constant [14 x i8] c"lor.lhs.false\00", align 1
@358 = private unnamed_addr constant [10 x i8] c"if.then19\00", align 1
@359 = private unnamed_addr constant [9 x i8] c"if.end26\00", align 1
@360 = private unnamed_addr constant [9 x i8] c"if.end27\00", align 1
@361 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@362 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@363 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@364 = private unnamed_addr constant [9 x i8] c"if.then7\00", align 1
@365 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@366 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@367 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@368 = private unnamed_addr constant [14 x i8] c"invoke.cont11\00", align 1
@369 = private unnamed_addr constant [14 x i8] c"invoke.cont16\00", align 1
@370 = private unnamed_addr constant [14 x i8] c"invoke.cont21\00", align 1
@371 = private unnamed_addr constant [14 x i8] c"invoke.cont25\00", align 1
@372 = private unnamed_addr constant [14 x i8] c"invoke.cont30\00", align 1
@373 = private unnamed_addr constant [14 x i8] c"invoke.cont31\00", align 1
@374 = private unnamed_addr constant [14 x i8] c"invoke.cont32\00", align 1
@375 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@376 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@377 = private unnamed_addr constant [9 x i8] c"try.cont\00", align 1
@378 = private unnamed_addr constant [9 x i8] c"if.end37\00", align 1
@379 = private unnamed_addr constant [10 x i8] c"if.then46\00", align 1
@380 = private unnamed_addr constant [9 x i8] c"if.end52\00", align 1
@381 = private unnamed_addr constant [9 x i8] c"if.end54\00", align 1
@382 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@383 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@384 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@385 = private unnamed_addr constant [15 x i8] c"terminate.lpad\00", align 1
@386 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@387 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@388 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@389 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@390 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@391 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@392 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@393 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@394 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@395 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@396 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@397 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@398 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@399 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@400 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@401 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@402 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@403 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@404 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@405 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@406 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@407 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@408 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@409 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@410 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@411 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@412 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@413 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@414 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@415 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@416 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@417 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@418 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@419 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@420 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@421 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@422 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@423 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@424 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@425 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@426 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@427 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@428 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@429 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@430 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@431 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@432 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@433 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@434 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@435 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@436 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@437 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@438 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@439 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@440 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@441 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@442 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@443 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@444 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@445 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@446 = private unnamed_addr constant [10 x i8] c"if.then10\00", align 1
@447 = private unnamed_addr constant [9 x i8] c"if.end16\00", align 1
@448 = private unnamed_addr constant [9 x i8] c"if.end17\00", align 1
@449 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@450 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@451 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@452 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@453 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@454 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@455 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@456 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@457 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@458 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@459 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@460 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@461 = private unnamed_addr constant [9 x i8] c"if.then4\00", align 1
@462 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@463 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@464 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@465 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@466 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@467 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@468 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@469 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@470 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@471 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@472 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@473 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@474 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@475 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@476 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@477 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@478 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@479 = private unnamed_addr constant [8 x i8] c"if.end3\00", align 1
@480 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@481 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@482 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@483 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@484 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@485 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@486 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@487 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@488 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@489 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@490 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@491 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@492 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@493 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@494 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@495 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@496 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@497 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@498 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@499 = private unnamed_addr constant [5 x i8] c"lpad\00", align 1
@500 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@501 = private unnamed_addr constant [10 x i8] c"eh.resume\00", align 1
@502 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@503 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@504 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@505 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@506 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@507 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@508 = private unnamed_addr constant [12 x i8] c"invoke.cont\00", align 1
@509 = private unnamed_addr constant [15 x i8] c"terminate.lpad\00", align 1
@510 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@511 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp___cxx_global_var_init = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp___cxx_global_var_init = alloca %"class.std::__1::basic_string", align 8
  %exn.slot___cxx_global_var_init = alloca i8*
  %ehselector.slot___cxx_global_var_init = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp___cxx_global_var_init, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp___cxx_global_var_init, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp___cxx_global_var_init, i32 8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call___cxx_global_var_init = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4___cxx_global_var_init = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 8)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6___cxx_global_var_init = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 8)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8___cxx_global_var_init = invoke i8* @_Znwm(i64 8) #14
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %tmp___cxx_global_var_init = bitcast i8* %call8___cxx_global_var_init to %"class.testing::internal::TestFactoryImpl"*
  invoke void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev(%"class.testing::internal::TestFactoryImpl"* %tmp___cxx_global_var_init)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %tmp___cxx_global_var_init1 = bitcast %"class.testing::internal::TestFactoryImpl"* %tmp___cxx_global_var_init to %"class.testing::internal::TestFactoryBase"*
  %call12___cxx_global_var_init = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp___cxx_global_var_init, i8* %call___cxx_global_var_init, void ()* %call4___cxx_global_var_init, void ()* %call6___cxx_global_var_init, %"class.testing::internal::TestFactoryBase"* %tmp___cxx_global_var_init1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp___cxx_global_var_init) #15
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp___cxx_global_var_init) #15
  store %"class.testing::TestInfo"* %call12___cxx_global_var_init, %"class.testing::TestInfo"** @_ZN14foo_test1_Test10test_info_E, align 8
  ret void

lpad:                                             ; preds = %entry
  %tmp___cxx_global_var_init2 = landingpad { i8*, i32 }
          cleanup
  %tmp___cxx_global_var_init3 = extractvalue { i8*, i32 } %tmp___cxx_global_var_init2, 0
  store i8* %tmp___cxx_global_var_init3, i8** %exn.slot___cxx_global_var_init, align 8
  %tmp___cxx_global_var_init4 = extractvalue { i8*, i32 } %tmp___cxx_global_var_init2, 1
  store i32 %tmp___cxx_global_var_init4, i32* %ehselector.slot___cxx_global_var_init, align 4
  br label %ehcleanup13

lpad1:                                            ; preds = %invoke.cont10, %invoke.cont5, %invoke.cont3, %invoke.cont2, %invoke.cont
  %tmp___cxx_global_var_init5 = landingpad { i8*, i32 }
          cleanup
  %tmp___cxx_global_var_init6 = extractvalue { i8*, i32 } %tmp___cxx_global_var_init5, 0
  store i8* %tmp___cxx_global_var_init6, i8** %exn.slot___cxx_global_var_init, align 8
  %tmp___cxx_global_var_init7 = extractvalue { i8*, i32 } %tmp___cxx_global_var_init5, 1
  store i32 %tmp___cxx_global_var_init7, i32* %ehselector.slot___cxx_global_var_init, align 4
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %tmp___cxx_global_var_init8 = landingpad { i8*, i32 }
          cleanup
  %tmp___cxx_global_var_init9 = extractvalue { i8*, i32 } %tmp___cxx_global_var_init8, 0
  store i8* %tmp___cxx_global_var_init9, i8** %exn.slot___cxx_global_var_init, align 8
  %tmp___cxx_global_var_init10 = extractvalue { i8*, i32 } %tmp___cxx_global_var_init8, 1
  store i32 %tmp___cxx_global_var_init10, i32* %ehselector.slot___cxx_global_var_init, align 4
  call void @_ZdlPv(i8* %call8___cxx_global_var_init) #16
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp___cxx_global_var_init) #15
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp___cxx_global_var_init) #15
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn___cxx_global_var_init = load i8*, i8** %exn.slot___cxx_global_var_init, align 8
  %sel___cxx_global_var_init = load i32, i32* %ehselector.slot___cxx_global_var_init, align 4
  %lpad.val___cxx_global_var_init = insertvalue { i8*, i32 } undef, i8* %exn___cxx_global_var_init, 0
  %lpad.val14___cxx_global_var_init = insertvalue { i8*, i32 } %lpad.val___cxx_global_var_init, i32 %sel___cxx_global_var_init, 1
  resume { i8*, i32 } %lpad.val14___cxx_global_var_init
}

declare %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8*, i8*, i8*, i8*, %"struct.testing::internal::CodeLocation"*, i8*, void ()*, void ()*, %"class.testing::internal::TestFactoryBase"*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc, align 8
  store i8* %__s, i8** %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc = load i8*, i8** %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %this, %"class.std::__1::basic_string"* dereferenceable(24) %a_file, i32 %a_line) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = alloca %"struct.testing::internal::CodeLocation"*, align 8
  %a_file.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = alloca %"class.std::__1::basic_string"*, align 8
  %a_line.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = alloca i32, align 4
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  store %"class.std::__1::basic_string"* %a_file, %"class.std::__1::basic_string"** %a_file.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  store i32 %a_line, i32* %a_line.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 4
  %this1__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  %tmp__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %a_file.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  %tmp__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi1 = load i32, i32* %a_line.addr__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 4
  call void @_ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %this1__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, %"class.std::__1::basic_string"* dereferenceable(24) %tmp__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, i32 %tmp__ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi1)
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare i8* @_ZN7testing8internal13GetTestTypeIdEv() #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* %filename, i32 %line_num) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %filename.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca i8*, align 8
  %line_num.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca i32, align 4
  %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca void ()*, align 8
  %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca void ()*, align 8
  %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca %"class.testing::internal::GTestLog", align 4
  %exn.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca i8*
  %ehselector.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = alloca i32
  store i8* %filename, i8** %filename.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  store i32 %line_num, i32* %line_num.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 4
  %call__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test13SetUpTestCaseEv, void ()* @_ZN7testing4Test13SetUpTestCaseEv)
  store void ()* %call__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %call1__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test14SetUpTestSuiteEv, void ()* @_ZN7testing4Test14SetUpTestSuiteEv)
  store void ()* %call1__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, void ()** %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = load void ()*, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %tobool__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = icmp ne void ()* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, null
  br i1 %tobool__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci1 = load void ()*, void ()** %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %tobool2__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = icmp ne void ()* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci1, null
  %lnot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = xor i1 %tobool2__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci2 = phi i1 [ true, %entry ], [ %lnot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, %lor.rhs ]
  %call3__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = call zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 zeroext %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci2)
  br i1 %call3__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  br label %if.end

if.else:                                          ; preds = %lor.end
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i32 516)
  %call4__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %call6__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call8__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.11, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci3 = load i8*, i8** %filename.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %call10__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i8* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci3)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call10__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci4 = load i32, i32* %line_num.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 4
  %call14__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call12__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i32 %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci) #15
  br label %if.end

lpad:                                             ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont5, %invoke.cont, %if.else
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci5 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci6 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci5, 0
  store i8* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci6, i8** %exn.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci7 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci5, 1
  store i32 %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci7, i32* %ehselector.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 4
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci) #15
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont13, %if.then
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci8 = load void ()*, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %cmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = icmp ne void ()* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci8, null
  br i1 %cmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci9 = load void ()*, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci10 = load void ()*, void ()** %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = phi void ()* [ %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci9, %cond.true ], [ %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci10, %cond.false ]
  ret void ()* %cond__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci

eh.resume:                                        ; preds = %lpad
  %exn__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = load i8*, i8** %exn.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 8
  %sel__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = load i32, i32* %ehselector.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, align 4
  %lpad.val__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = insertvalue { i8*, i32 } undef, i8* %exn__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, 0
  %lpad.val15__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = insertvalue { i8*, i32 } %lpad.val__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, i32 %sel__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci, 1
  resume { i8*, i32 } %lpad.val15__ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* %filename, i32 %line_num) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %filename.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca i8*, align 8
  %line_num.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca i32, align 4
  %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca void ()*, align 8
  %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca void ()*, align 8
  %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca %"class.testing::internal::GTestLog", align 4
  %exn.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca i8*
  %ehselector.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = alloca i32
  store i8* %filename, i8** %filename.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  store i32 %line_num, i32* %line_num.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 4
  %call__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test16TearDownTestCaseEv, void ()* @_ZN7testing4Test16TearDownTestCaseEv)
  store void ()* %call__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %call1__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = call void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* @_ZN7testing4Test17TearDownTestSuiteEv, void ()* @_ZN7testing4Test17TearDownTestSuiteEv)
  store void ()* %call1__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, void ()** %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = load void ()*, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %tobool__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = icmp ne void ()* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, null
  br i1 %tobool__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci1 = load void ()*, void ()** %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %tobool2__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = icmp ne void ()* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci1, null
  %lnot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = xor i1 %tobool2__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci2 = phi i1 [ true, %entry ], [ %lnot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, %lor.rhs ]
  %call3__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = call zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 zeroext %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci2)
  br i1 %call3__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  br label %if.end

if.else:                                          ; preds = %lor.end
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i32 531)
  %call4__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %call6__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call8__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci3 = load i8*, i8** %filename.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %call10__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i8* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci3)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call10__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci4 = load i32, i32* %line_num.addr__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 4
  %call14__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call12__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i32 %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci) #15
  br label %if.end

lpad:                                             ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont5, %invoke.cont, %if.else
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci5 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci6 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci5, 0
  store i8* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci6, i8** %exn.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci7 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci5, 1
  store i32 %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci7, i32* %ehselector.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 4
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci) #15
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont13, %if.then
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci8 = load void ()*, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %cmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = icmp ne void ()* %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci8, null
  br i1 %cmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci9 = load void ()*, void ()** %test_case_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci10 = load void ()*, void ()** %test_suite_fp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = phi void ()* [ %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci9, %cond.true ], [ %tmp__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci10, %cond.false ]
  ret void ()* %cond__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci

eh.resume:                                        ; preds = %lpad
  %exn__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = load i8*, i8** %exn.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 8
  %sel__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = load i32, i32* %ehselector.slot__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, align 4
  %lpad.val__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = insertvalue { i8*, i32 } undef, i8* %exn__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, 0
  %lpad.val15__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = insertvalue { i8*, i32 } %lpad.val__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, i32 %sel__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci, 1
  resume { i8*, i32 } %lpad.val15__ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #3

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev, align 8
  %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev, align 8
  call void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev(%"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC1Ev)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal12CodeLocationD1Ev = alloca %"struct.testing::internal::CodeLocation"*, align 8
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationD1Ev, align 8
  %this1__ZN7testing8internal12CodeLocationD1Ev = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationD1Ev, align 8
  call void @_ZN7testing8internal12CodeLocationD2Ev(%"struct.testing::internal::CodeLocation"* %this1__ZN7testing8internal12CodeLocationD1Ev) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN14foo_test1_Test8TestBodyEv(%class.foo_test1_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZN14foo_test1_Test8TestBodyEv = alloca %class.foo_test1_Test*, align 8
  %m__ZN14foo_test1_Test8TestBodyEv = alloca i32, align 4
  %p__ZN14foo_test1_Test8TestBodyEv = alloca i32, align 4
  %result__ZN14foo_test1_Test8TestBodyEv = alloca i32, align 4
  %gtest_ar__ZN14foo_test1_Test8TestBodyEv = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp__ZN14foo_test1_Test8TestBodyEv = alloca i32, align 4
  %exn.slot__ZN14foo_test1_Test8TestBodyEv = alloca i8*
  %ehselector.slot__ZN14foo_test1_Test8TestBodyEv = alloca i32
  %ref.tmp3__ZN14foo_test1_Test8TestBodyEv = alloca %"class.testing::Message", align 8
  %ref.tmp5__ZN14foo_test1_Test8TestBodyEv = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot__ZN14foo_test1_Test8TestBodyEv = alloca i32, align 4
  store %class.foo_test1_Test* %this, %class.foo_test1_Test** %this.addr__ZN14foo_test1_Test8TestBodyEv, align 8
  %this1__ZN14foo_test1_Test8TestBodyEv = load %class.foo_test1_Test*, %class.foo_test1_Test** %this.addr__ZN14foo_test1_Test8TestBodyEv, align 8
  store i32 90, i32* %m__ZN14foo_test1_Test8TestBodyEv, align 4
  store i32 80, i32* %p__ZN14foo_test1_Test8TestBodyEv, align 4
  call void @stg_begin_test()
  %tmp__ZN14foo_test1_Test8TestBodyEv = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %m__ZN14foo_test1_Test8TestBodyEv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp__ZN14foo_test1_Test8TestBodyEv, double 0.000000e+00, double 0.000000e+00)
  %tmp__ZN14foo_test1_Test8TestBodyEv1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %p__ZN14foo_test1_Test8TestBodyEv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp__ZN14foo_test1_Test8TestBodyEv1, double 0.000000e+00, double 0.000000e+00)
  call void @stg_start_intrmnt()
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @53, i32 0, i32 0))
  %tmp__ZN14foo_test1_Test8TestBodyEv2 = load i32, i32* %m__ZN14foo_test1_Test8TestBodyEv, align 4
  call void @stg_update_load_i32(i32* %m__ZN14foo_test1_Test8TestBodyEv, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @57, i32 0, i32 0))
  %tmp__ZN14foo_test1_Test8TestBodyEv3 = load i32, i32* %p__ZN14foo_test1_Test8TestBodyEv, align 4
  call void @stg_update_load_i32(i32* %p__ZN14foo_test1_Test8TestBodyEv, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @59, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @61, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @63, i32 0, i32 0))
  %call__ZN14foo_test1_Test8TestBodyEv = call i32 @_Z3fooii(i32 %tmp__ZN14foo_test1_Test8TestBodyEv2, i32 %tmp__ZN14foo_test1_Test8TestBodyEv3)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @65, i32 0, i32 0))
  store i32 %call__ZN14foo_test1_Test8TestBodyEv, i32* %result__ZN14foo_test1_Test8TestBodyEv, align 4
  call void @stg_update_store_i32(i32* %result__ZN14foo_test1_Test8TestBodyEv, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @66, i32 0, i32 0))
  call void @stg_stop_intrmnt()
  call void @stg_end_test()
  %tmp__ZN14foo_test1_Test8TestBodyEv4 = load i32, i32* %result__ZN14foo_test1_Test8TestBodyEv, align 4
  %cmp__ZN14foo_test1_Test8TestBodyEv = icmp eq i32 %tmp__ZN14foo_test1_Test8TestBodyEv4, 10
  call void @stg_record_test(i1 zeroext %cmp__ZN14foo_test1_Test8TestBodyEv)
  store i32 10, i32* %ref.tmp__ZN14foo_test1_Test8TestBodyEv, align 4
  call void @_ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar__ZN14foo_test1_Test8TestBodyEv, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32* dereferenceable(4) %ref.tmp__ZN14foo_test1_Test8TestBodyEv, i32* dereferenceable(4) %result__ZN14foo_test1_Test8TestBodyEv)
  %call2__ZN14foo_test1_Test8TestBodyEv = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar__ZN14foo_test1_Test8TestBodyEv)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call2__ZN14foo_test1_Test8TestBodyEv, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %tmp__ZN14foo_test1_Test8TestBodyEv5 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN14foo_test1_Test8TestBodyEv6 = extractvalue { i8*, i32 } %tmp__ZN14foo_test1_Test8TestBodyEv5, 0
  store i8* %tmp__ZN14foo_test1_Test8TestBodyEv6, i8** %exn.slot__ZN14foo_test1_Test8TestBodyEv, align 8
  %tmp__ZN14foo_test1_Test8TestBodyEv7 = extractvalue { i8*, i32 } %tmp__ZN14foo_test1_Test8TestBodyEv5, 1
  store i32 %tmp__ZN14foo_test1_Test8TestBodyEv7, i32* %ehselector.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  br label %ehcleanup12

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp3__ZN14foo_test1_Test8TestBodyEv)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %if.else
  %call8__ZN14foo_test1_Test8TestBodyEv = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar__ZN14foo_test1_Test8TestBodyEv)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont4
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp5__ZN14foo_test1_Test8TestBodyEv, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 23, i8* %call8__ZN14foo_test1_Test8TestBodyEv)
          to label %invoke.cont9 unwind label %lpad6

invoke.cont9:                                     ; preds = %invoke.cont7
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp5__ZN14foo_test1_Test8TestBodyEv, %"class.testing::Message"* dereferenceable(8) %ref.tmp3__ZN14foo_test1_Test8TestBodyEv)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont9
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp5__ZN14foo_test1_Test8TestBodyEv) #15
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp3__ZN14foo_test1_Test8TestBodyEv) #15
  store i32 1, i32* %cleanup.dest.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  br label %cleanup

lpad6:                                            ; preds = %invoke.cont7, %invoke.cont4
  %tmp__ZN14foo_test1_Test8TestBodyEv8 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN14foo_test1_Test8TestBodyEv9 = extractvalue { i8*, i32 } %tmp__ZN14foo_test1_Test8TestBodyEv8, 0
  store i8* %tmp__ZN14foo_test1_Test8TestBodyEv9, i8** %exn.slot__ZN14foo_test1_Test8TestBodyEv, align 8
  %tmp__ZN14foo_test1_Test8TestBodyEv10 = extractvalue { i8*, i32 } %tmp__ZN14foo_test1_Test8TestBodyEv8, 1
  store i32 %tmp__ZN14foo_test1_Test8TestBodyEv10, i32* %ehselector.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  br label %ehcleanup

lpad10:                                           ; preds = %invoke.cont9
  %tmp__ZN14foo_test1_Test8TestBodyEv11 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN14foo_test1_Test8TestBodyEv12 = extractvalue { i8*, i32 } %tmp__ZN14foo_test1_Test8TestBodyEv11, 0
  store i8* %tmp__ZN14foo_test1_Test8TestBodyEv12, i8** %exn.slot__ZN14foo_test1_Test8TestBodyEv, align 8
  %tmp__ZN14foo_test1_Test8TestBodyEv13 = extractvalue { i8*, i32 } %tmp__ZN14foo_test1_Test8TestBodyEv11, 1
  store i32 %tmp__ZN14foo_test1_Test8TestBodyEv13, i32* %ehselector.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp5__ZN14foo_test1_Test8TestBodyEv) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad10, %lpad6
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp3__ZN14foo_test1_Test8TestBodyEv) #15
  br label %ehcleanup12

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont11
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar__ZN14foo_test1_Test8TestBodyEv) #15
  %cleanup.dest__ZN14foo_test1_Test8TestBodyEv = load i32, i32* %cleanup.dest.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  switch i32 %cleanup.dest__ZN14foo_test1_Test8TestBodyEv, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup12:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar__ZN14foo_test1_Test8TestBodyEv) #15
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup12
  %exn__ZN14foo_test1_Test8TestBodyEv = load i8*, i8** %exn.slot__ZN14foo_test1_Test8TestBodyEv, align 8
  %sel__ZN14foo_test1_Test8TestBodyEv = load i32, i32* %ehselector.slot__ZN14foo_test1_Test8TestBodyEv, align 4
  %lpad.val__ZN14foo_test1_Test8TestBodyEv = insertvalue { i8*, i32 } undef, i8* %exn__ZN14foo_test1_Test8TestBodyEv, 0
  %lpad.val13__ZN14foo_test1_Test8TestBodyEv = insertvalue { i8*, i32 } %lpad.val__ZN14foo_test1_Test8TestBodyEv, i32 %sel__ZN14foo_test1_Test8TestBodyEv, 1
  resume { i8*, i32 } %lpad.val13__ZN14foo_test1_Test8TestBodyEv

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_int(i32*, i8*, double, double, i8*, double, double) #1

declare void @stg_start_intrmnt() #1

declare i32 @_Z3fooii(i32, i32) #1

declare void @stg_stop_intrmnt() #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* noalias sret %agg.result, i8* %lhs_expression, i8* %rhs_expression, i32* dereferenceable(4) %lhs, i32* dereferenceable(4) %rhs) #2 align 2 {
entry:
  %lhs_expression.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_ = alloca i8*, align 8
  %rhs_expression.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_ = alloca i8*, align 8
  %lhs.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_ = alloca i32*, align 8
  %rhs.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_ = alloca i32*, align 8
  store i8* %lhs_expression, i8** %lhs_expression.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  store i8* %rhs_expression, i8** %rhs_expression.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  store i32* %lhs, i32** %lhs.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  store i32* %rhs, i32** %rhs.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_ = load i8*, i8** %lhs_expression.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_1 = load i8*, i8** %rhs_expression.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_2 = load i32*, i32** %lhs.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_3 = load i32*, i32** %rhs.addr__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, align 8
  call void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* sret %agg.result, i8* %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_, i8* %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_1, i32* dereferenceable(4) %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_2, i32* dereferenceable(4) %tmp__ZN7testing8internal8EqHelper7CompareIiiLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %this) #5 align 2 {
entry:
  %this.addr__ZNK7testing15AssertionResultcvbEv = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr__ZNK7testing15AssertionResultcvbEv, align 8
  %this1__ZNK7testing15AssertionResultcvbEv = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr__ZNK7testing15AssertionResultcvbEv, align 8
  %success___ZNK7testing15AssertionResultcvbEv = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1__ZNK7testing15AssertionResultcvbEv, i32 0, i32 0
  %tmp__ZNK7testing15AssertionResultcvbEv = load i8, i8* %success___ZNK7testing15AssertionResultcvbEv, align 8
  %tobool__ZNK7testing15AssertionResultcvbEv = trunc i8 %tmp__ZNK7testing15AssertionResultcvbEv to i1
  ret i1 %tobool__ZNK7testing15AssertionResultcvbEv
}

declare void @_ZN7testing7MessageC1Ev(%"class.testing::Message"*) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %this) #2 align 2 {
entry:
  %this.addr__ZNK7testing15AssertionResult15failure_messageEv = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr__ZNK7testing15AssertionResult15failure_messageEv, align 8
  %this1__ZNK7testing15AssertionResult15failure_messageEv = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr__ZNK7testing15AssertionResult15failure_messageEv, align 8
  %call__ZNK7testing15AssertionResult15failure_messageEv = call i8* @_ZNK7testing15AssertionResult7messageEv(%"class.testing::AssertionResult"* %this1__ZNK7testing15AssertionResult15failure_messageEv)
  ret i8* %call__ZNK7testing15AssertionResult15failure_messageEv
}

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"*, i32, i8*, i32, i8*) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"*, %"class.testing::Message"* dereferenceable(8)) #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing7MessageD1Ev = alloca %"class.testing::Message"*, align 8
  store %"class.testing::Message"* %this, %"class.testing::Message"** %this.addr__ZN7testing7MessageD1Ev, align 8
  %this1__ZN7testing7MessageD1Ev = load %"class.testing::Message"*, %"class.testing::Message"** %this.addr__ZN7testing7MessageD1Ev, align 8
  call void @_ZN7testing7MessageD2Ev(%"class.testing::Message"* %this1__ZN7testing7MessageD1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing15AssertionResultD1Ev = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr__ZN7testing15AssertionResultD1Ev, align 8
  %this1__ZN7testing15AssertionResultD1Ev = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr__ZN7testing15AssertionResultD1Ev, align 8
  call void @_ZN7testing15AssertionResultD2Ev(%"class.testing::AssertionResult"* %this1__ZN7testing15AssertionResultD1Ev) #15
  ret void
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #7 {
entry:
  %retval_main = alloca i32, align 4
  %argc.addr_main = alloca i32, align 4
  %argv.addr_main = alloca i8**, align 8
  store i32 0, i32* %retval_main, align 4
  store i32 %argc, i32* %argc.addr_main, align 4
  store i8** %argv, i8*** %argv.addr_main, align 8
  %tmp_main = load i8**, i8*** %argv.addr_main, align 8
  call void @_ZN7testing14InitGoogleTestEPiPPc(i32* %argc.addr_main, i8** %tmp_main)
  %call_main = call i32 @_Z13RUN_ALL_TESTSv()
  ret i32 %call_main
}

declare void @_ZN7testing14InitGoogleTestEPiPPc(i32*, i8**) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_Z13RUN_ALL_TESTSv() #2 {
entry:
  %call__Z13RUN_ALL_TESTSv = call %"class.testing::UnitTest"* @_ZN7testing8UnitTest11GetInstanceEv()
  %call1__Z13RUN_ALL_TESTSv = call i32 @_ZN7testing8UnitTest3RunEv(%"class.testing::UnitTest"* %call__Z13RUN_ALL_TESTSv)
  ret i32 %call1__Z13RUN_ALL_TESTSv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN14foo_test1_TestD1Ev(%class.foo_test1_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN14foo_test1_TestD1Ev = alloca %class.foo_test1_Test*, align 8
  store %class.foo_test1_Test* %this, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestD1Ev, align 8
  %this1__ZN14foo_test1_TestD1Ev = load %class.foo_test1_Test*, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestD1Ev, align 8
  call void @_ZN14foo_test1_TestD2Ev(%class.foo_test1_Test* %this1__ZN14foo_test1_TestD1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN14foo_test1_TestD0Ev(%class.foo_test1_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN14foo_test1_TestD0Ev = alloca %class.foo_test1_Test*, align 8
  store %class.foo_test1_Test* %this, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestD0Ev, align 8
  %this1__ZN14foo_test1_TestD0Ev = load %class.foo_test1_Test*, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestD0Ev, align 8
  call void @_ZN14foo_test1_TestD1Ev(%class.foo_test1_Test* %this1__ZN14foo_test1_TestD0Ev) #15
  %tmp__ZN14foo_test1_TestD0Ev = bitcast %class.foo_test1_Test* %this1__ZN14foo_test1_TestD0Ev to i8*
  call void @_ZdlPv(i8* %tmp__ZN14foo_test1_TestD0Ev) #16
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(%"class.testing::Test"*) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(%"class.testing::Test"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr %"struct.testing::Test::Setup_should_be_spelled_SetUp"* @_ZN7testing4Test5SetupEv(%"class.testing::Test"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing4Test5SetupEv = alloca %"class.testing::Test"*, align 8
  store %"class.testing::Test"* %this, %"class.testing::Test"** %this.addr__ZN7testing4Test5SetupEv, align 8
  %this1__ZN7testing4Test5SetupEv = load %"class.testing::Test"*, %"class.testing::Test"** %this.addr__ZN7testing4Test5SetupEv, align 8
  ret %"struct.testing::Test::Setup_should_be_spelled_SetUp"* null
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %this, %"class.std::__1::basic_string"* dereferenceable(24) %a_file, i32 %a_line) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = alloca %"struct.testing::internal::CodeLocation"*, align 8
  %a_file.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = alloca %"class.std::__1::basic_string"*, align 8
  %a_line.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = alloca i32, align 4
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  store %"class.std::__1::basic_string"* %a_file, %"class.std::__1::basic_string"** %a_file.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  store i32 %a_line, i32* %a_line.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 4
  %this1__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  %file__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = getelementptr inbounds %"struct.testing::internal::CodeLocation", %"struct.testing::internal::CodeLocation"* %this1__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, i32 0, i32 0
  %tmp__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %a_file.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(%"class.std::__1::basic_string"* %file__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, %"class.std::__1::basic_string"* dereferenceable(24) %tmp__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi)
  %line__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi = getelementptr inbounds %"struct.testing::internal::CodeLocation", %"struct.testing::internal::CodeLocation"* %this1__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, i32 0, i32 1
  %tmp__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi1 = load i32, i32* %a_line.addr__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 4
  store i32 %tmp__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi1, i32* %line__ZN7testing8internal12CodeLocationC2ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi, align 8
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(%"class.std::__1::basic_string"*, %"class.std::__1::basic_string"* dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev, align 8
  %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev, align 8
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev = bitcast %"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev)
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev1 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI14foo_test1_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestEC2Ev1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryBaseC2Ev = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseC2Ev, align 8
  %this1__ZN7testing8internal15TestFactoryBaseC2Ev = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseC2Ev, align 8
  %tmp__ZN7testing8internal15TestFactoryBaseC2Ev = bitcast %"class.testing::internal::TestFactoryBase"* %this1__ZN7testing8internal15TestFactoryBaseC2Ev to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryBaseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZN7testing8internal15TestFactoryBaseC2Ev, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev, align 8
  %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev, align 8
  call void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev(%"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev, align 8
  %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev, align 8
  call void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED1Ev(%"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev) #15
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev = bitcast %"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev to i8*
  call void @_ZdlPv(i8* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED0Ev) #16
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  %exn.slot__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = alloca i8*
  %ehselector.slot__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = alloca i32
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, align 8
  %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, align 8
  %call__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = call i8* @_Znwm(i64 16) #14
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = bitcast i8* %call__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv to %class.foo_test1_Test*
  invoke void @_ZN14foo_test1_TestC1Ev(%class.foo_test1_Test* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv1 = bitcast %class.foo_test1_Test* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv to %"class.testing::Test"*
  ret %"class.testing::Test"* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv1

lpad:                                             ; preds = %entry
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv2 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv3 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv2, 0
  store i8* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv3, i8** %exn.slot__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, align 8
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv4 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv2, 1
  store i32 %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv4, i32* %ehselector.slot__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, align 4
  call void @_ZdlPv(i8* %call__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv) #16
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = load i8*, i8** %exn.slot__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, align 8
  %sel__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = load i32, i32* %ehselector.slot__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, align 4
  %lpad.val__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = insertvalue { i8*, i32 } undef, i8* %exn__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, 0
  %lpad.val2__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv = insertvalue { i8*, i32 } %lpad.val__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, i32 %sel__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv, 1
  resume { i8*, i32 } %lpad.val2__ZN7testing8internal15TestFactoryImplI14foo_test1_TestE10CreateTestEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseD1Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryBaseD1Ev = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseD1Ev, align 8
  %this1__ZN7testing8internal15TestFactoryBaseD1Ev = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseD1Ev, align 8
  call void @llvm.trap() #17
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseD0Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryBaseD0Ev = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseD0Ev, align 8
  %this1__ZN7testing8internal15TestFactoryBaseD0Ev = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseD0Ev, align 8
  call void @llvm.trap() #17
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #8

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev, align 8
  %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev, align 8
  %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev = bitcast %"class.testing::internal::TestFactoryImpl"* %this1__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %tmp__ZN7testing8internal15TestFactoryImplI14foo_test1_TestED2Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal15TestFactoryBaseD2Ev = alloca %"class.testing::internal::TestFactoryBase"*, align 8
  store %"class.testing::internal::TestFactoryBase"* %this, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseD2Ev, align 8
  %this1__ZN7testing8internal15TestFactoryBaseD2Ev = load %"class.testing::internal::TestFactoryBase"*, %"class.testing::internal::TestFactoryBase"** %this.addr__ZN7testing8internal15TestFactoryBaseD2Ev, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN14foo_test1_TestC1Ev(%class.foo_test1_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZN14foo_test1_TestC1Ev = alloca %class.foo_test1_Test*, align 8
  store %class.foo_test1_Test* %this, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestC1Ev, align 8
  %this1__ZN14foo_test1_TestC1Ev = load %class.foo_test1_Test*, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestC1Ev, align 8
  call void @_ZN14foo_test1_TestC2Ev(%class.foo_test1_Test* %this1__ZN14foo_test1_TestC1Ev)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN14foo_test1_TestC2Ev(%class.foo_test1_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZN14foo_test1_TestC2Ev = alloca %class.foo_test1_Test*, align 8
  store %class.foo_test1_Test* %this, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestC2Ev, align 8
  %this1__ZN14foo_test1_TestC2Ev = load %class.foo_test1_Test*, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestC2Ev, align 8
  %tmp__ZN14foo_test1_TestC2Ev = bitcast %class.foo_test1_Test* %this1__ZN14foo_test1_TestC2Ev to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %tmp__ZN14foo_test1_TestC2Ev)
  %tmp__ZN14foo_test1_TestC2Ev1 = bitcast %class.foo_test1_Test* %this1__ZN14foo_test1_TestC2Ev to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV14foo_test1_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZN14foo_test1_TestC2Ev1, align 8
  ret void
}

declare void @_ZN7testing4TestC2Ev(%"class.testing::Test"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal12CodeLocationD2Ev(%"struct.testing::internal::CodeLocation"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing8internal12CodeLocationD2Ev = alloca %"struct.testing::internal::CodeLocation"*, align 8
  store %"struct.testing::internal::CodeLocation"* %this, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationD2Ev, align 8
  %this1__ZN7testing8internal12CodeLocationD2Ev = load %"struct.testing::internal::CodeLocation"*, %"struct.testing::internal::CodeLocation"** %this.addr__ZN7testing8internal12CodeLocationD2Ev, align 8
  %file__ZN7testing8internal12CodeLocationD2Ev = getelementptr inbounds %"struct.testing::internal::CodeLocation", %"struct.testing::internal::CodeLocation"* %this1__ZN7testing8internal12CodeLocationD2Ev, i32 0, i32 0
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %file__ZN7testing8internal12CodeLocationD2Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i8* @_ZNK7testing15AssertionResult7messageEv(%"class.testing::AssertionResult"* %this) #5 align 2 {
entry:
  %this.addr__ZNK7testing15AssertionResult7messageEv = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr__ZNK7testing15AssertionResult7messageEv, align 8
  %this1__ZNK7testing15AssertionResult7messageEv = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr__ZNK7testing15AssertionResult7messageEv, align 8
  %message___ZNK7testing15AssertionResult7messageEv = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1__ZNK7testing15AssertionResult7messageEv, i32 0, i32 1
  %call__ZNK7testing15AssertionResult7messageEv = call %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv(%"class.std::__1::unique_ptr.23"* %message___ZNK7testing15AssertionResult7messageEv) #15
  %cmp__ZNK7testing15AssertionResult7messageEv = icmp ne %"class.std::__1::basic_string"* %call__ZNK7testing15AssertionResult7messageEv, null
  br i1 %cmp__ZNK7testing15AssertionResult7messageEv, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %message_2__ZNK7testing15AssertionResult7messageEv = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1__ZNK7testing15AssertionResult7messageEv, i32 0, i32 1
  %call3__ZNK7testing15AssertionResult7messageEv = call %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv(%"class.std::__1::unique_ptr.23"* %message_2__ZNK7testing15AssertionResult7messageEv) #15
  %call4__ZNK7testing15AssertionResult7messageEv = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %call3__ZNK7testing15AssertionResult7messageEv) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNK7testing15AssertionResult7messageEv = phi i8* [ %call4__ZNK7testing15AssertionResult7messageEv, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  ret i8* %cond__ZNK7testing15AssertionResult7messageEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv(%"class.std::__1::unique_ptr.23"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv, align 8
  %this1__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv, align 8
  %__ptr___ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv, i32 0, i32 0
  %call__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr___ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv) #15
  %tmp__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %call__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv, align 8
  ret %"class.std::__1::basic_string"* %tmp__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv(%"class.std::__1::unique_ptr.23"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv, align 8
  %this1__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv, align 8
  %__ptr___ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv, i32 0, i32 0
  %call__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr___ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv) #15
  %tmp__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %call__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv, align 8
  ret %"class.std::__1::basic_string"* %tmp__ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv) #15
  ret i8* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = alloca %"class.std::__1::__compressed_pair.24"*, align 8
  store %"class.std::__1::__compressed_pair.24"* %this, %"class.std::__1::__compressed_pair.24"** %this.addr__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv, align 8
  %this1__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = load %"class.std::__1::__compressed_pair.24"*, %"class.std::__1::__compressed_pair.24"** %this.addr__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv, align 8
  %tmp__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = bitcast %"class.std::__1::__compressed_pair.24"* %this1__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv to %"struct.std::__1::__compressed_pair_elem.25"*
  %call__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %tmp__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv) #15
  ret %"class.std::__1::basic_string"** %call__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %this, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, align 8
  %this1__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, align 8
  %__value___ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.25", %"struct.std::__1::__compressed_pair_elem.25"* %this1__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, i32 0, i32 0
  ret %"class.std::__1::basic_string"** %__value___ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv) #15
  %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv = call i8* @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_(i8* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv) #15
  ret i8* %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_(i8* %__p) #5 {
entry:
  %__p.addr__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_ = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_, align 8
  %tmp__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_ = load i8*, i8** %__p.addr__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_, align 8
  ret i8* %tmp__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv) #15
  br i1 %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv = phi i8* [ %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, %cond.true ], [ %call3__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv, %cond.false ]
  ret i8* %cond__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv) #15
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, i32 0, i32 0
  %__s__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = bitcast %union.anon* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, i32 0, i32 0
  %__size___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = bitcast %union.anon.0* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv1 to i8*
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv2 = load i8, i8* %__size___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, align 8
  %conv__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = zext i8 %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv2 to i64
  %and__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = and i64 %conv__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, 1
  %tobool__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv = icmp ne i64 %and__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv, 0
  ret i1 %tobool__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv) #15
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, i32 0, i32 0
  %__l__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = bitcast %union.anon* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__data___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, i32 0, i32 2
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv1 = load i8*, i8** %__data___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv, align 8
  ret i8* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv) #15
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i32 0, i32 0
  %__s__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = bitcast %union.anon* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %__data___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i32 0, i32 1
  %arrayidx__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds [23 x i8], [23 x i8]* %__data___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i64 0, i64 0
  %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %arrayidx__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv) #15
  ret i8* %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv, align 8
  %this1__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv, align 8
  %tmp__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv to %"struct.std::__1::__compressed_pair_elem"*
  %call__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %tmp__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv) #15
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, align 8
  %this1__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, align 8
  %__value___ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value___ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %__r) #5 align 2 {
entry:
  %__r.addr__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_ = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_, align 8
  %tmp__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_ = load i8*, i8** %__r.addr__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_, align 8
  %call__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_ = call i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %tmp__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_) #15
  ret i8* %call__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %__x) #5 {
entry:
  %__x.addr__ZNSt3__1L9addressofIKcEEPT_RS2_ = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr__ZNSt3__1L9addressofIKcEEPT_RS2_, align 8
  %tmp__ZNSt3__1L9addressofIKcEEPT_RS2_ = load i8*, i8** %__x.addr__ZNSt3__1L9addressofIKcEEPT_RS2_, align 8
  ret i8* %tmp__ZNSt3__1L9addressofIKcEEPT_RS2_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing7MessageD2Ev(%"class.testing::Message"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing7MessageD2Ev = alloca %"class.testing::Message"*, align 8
  store %"class.testing::Message"* %this, %"class.testing::Message"** %this.addr__ZN7testing7MessageD2Ev, align 8
  %this1__ZN7testing7MessageD2Ev = load %"class.testing::Message"*, %"class.testing::Message"** %this.addr__ZN7testing7MessageD2Ev, align 8
  %ss___ZN7testing7MessageD2Ev = getelementptr inbounds %"class.testing::Message", %"class.testing::Message"* %this1__ZN7testing7MessageD2Ev, i32 0, i32 0
  call void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.29"* %ss___ZN7testing7MessageD2Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.29"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev = alloca %"class.std::__1::unique_ptr.29"*, align 8
  store %"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::unique_ptr.29"** %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev, align 8
  %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev, align 8
  call void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.29"* %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.29"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev = alloca %"class.std::__1::unique_ptr.29"*, align 8
  store %"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::unique_ptr.29"** %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev, align 8
  %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev, align 8
  call void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.29"* %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev, %"class.std::__1::basic_stringstream"* null) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::basic_stringstream"* %__p) #5 align 2 {
entry:
  %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = alloca %"class.std::__1::basic_stringstream"*, align 8
  %__tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::unique_ptr.29"** %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  store %"class.std::__1::basic_stringstream"* %__p, %"class.std::__1::basic_stringstream"** %__p.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %__ptr___ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, i32 0, i32 0
  %call__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = call dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.30"* %__ptr___ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_) #15
  %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %call__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  store %"class.std::__1::basic_stringstream"* %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, %"class.std::__1::basic_stringstream"** %__tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__p.addr__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %__ptr_2__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, i32 0, i32 0
  %call3__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = call dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.30"* %__ptr_2__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_) #15
  store %"class.std::__1::basic_stringstream"* %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_1, %"class.std::__1::basic_stringstream"** %call3__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_2 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %tobool__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = icmp ne %"class.std::__1::basic_stringstream"* %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_2, null
  br i1 %tobool__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, i32 0, i32 0
  %call5__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = call dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.30"* %__ptr_4__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_) #15
  %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_3 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  call void @_ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.33"* %call5__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, %"class.std::__1::basic_stringstream"* %tmp__ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.30"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  store %"class.std::__1::__compressed_pair.30"* %this, %"class.std::__1::__compressed_pair.30"** %this.addr__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv, align 8
  %this1__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv, align 8
  %tmp__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = bitcast %"class.std::__1::__compressed_pair.30"* %this1__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv to %"struct.std::__1::__compressed_pair_elem.31"*
  %call__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = call dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %tmp__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv) #15
  ret %"class.std::__1::basic_stringstream"** %call__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.30"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  store %"class.std::__1::__compressed_pair.30"* %this, %"class.std::__1::__compressed_pair.30"** %this.addr__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv, align 8
  %this1__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv, align 8
  %tmp__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = bitcast %"class.std::__1::__compressed_pair.30"* %this1__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv to %"struct.std::__1::__compressed_pair_elem.32"*
  %call__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = call dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.32"* %tmp__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv) #15
  ret %"struct.std::__1::default_delete.33"* %call__ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.33"* %this, %"class.std::__1::basic_stringstream"* %__ptr) #5 align 2 {
entry:
  %this.addr__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = alloca %"struct.std::__1::default_delete.33"*, align 8
  %__ptr.addr__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"struct.std::__1::default_delete.33"* %this, %"struct.std::__1::default_delete.33"** %this.addr__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  store %"class.std::__1::basic_stringstream"* %__ptr, %"class.std::__1::basic_stringstream"** %__ptr.addr__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  %this1__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = load %"struct.std::__1::default_delete.33"*, %"struct.std::__1::default_delete.33"** %this.addr__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__ptr.addr__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  %isnull__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = icmp eq %"class.std::__1::basic_stringstream"* %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, null
  br i1 %isnull__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_1 = bitcast %"class.std::__1::basic_stringstream"* %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ to void (%"class.std::__1::basic_stringstream"*)***
  %vtable__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = load void (%"class.std::__1::basic_stringstream"*)**, void (%"class.std::__1::basic_stringstream"*)*** %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_1, align 8
  %vfn__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = getelementptr inbounds void (%"class.std::__1::basic_stringstream"*)*, void (%"class.std::__1::basic_stringstream"*)** %vtable__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, i64 1
  %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_2 = load void (%"class.std::__1::basic_stringstream"*)*, void (%"class.std::__1::basic_stringstream"*)** %vfn__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  call void %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_2(%"class.std::__1::basic_stringstream"* %tmp__ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.31"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.31"* %this, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr__ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, align 8
  %this1__ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.31"*, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr__ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, align 8
  %__value___ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.31", %"struct.std::__1::__compressed_pair_elem.31"* %this1__ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, i32 0, i32 0
  ret %"class.std::__1::basic_stringstream"** %__value___ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.32"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.32"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.32"* %this, %"struct.std::__1::__compressed_pair_elem.32"** %this.addr__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.32"*, %"struct.std::__1::__compressed_pair_elem.32"** %this.addr__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv, align 8
  %tmp__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv = bitcast %"struct.std::__1::__compressed_pair_elem.32"* %this1__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv to %"struct.std::__1::default_delete.33"*
  ret %"struct.std::__1::default_delete.33"* %tmp__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing15AssertionResultD2Ev(%"class.testing::AssertionResult"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN7testing15AssertionResultD2Ev = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr__ZN7testing15AssertionResultD2Ev, align 8
  %this1__ZN7testing15AssertionResultD2Ev = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr__ZN7testing15AssertionResultD2Ev, align 8
  %message___ZN7testing15AssertionResultD2Ev = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1__ZN7testing15AssertionResultD2Ev, i32 0, i32 1
  call void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.23"* %message___ZN7testing15AssertionResultD2Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev, align 8
  %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev, align 8
  call void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.23"* %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev, align 8
  %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev, align 8
  call void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.23"* %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev, %"class.std::__1::basic_string"* null) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::basic_string"* %__p) #5 align 2 {
entry:
  %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = alloca %"class.std::__1::unique_ptr.23"*, align 8
  %__p.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = alloca %"class.std::__1::basic_string"*, align 8
  %__tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  store %"class.std::__1::basic_string"* %__p, %"class.std::__1::basic_string"** %__p.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %__ptr___ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, i32 0, i32 0
  %call__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr___ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_) #15
  %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %call__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  store %"class.std::__1::basic_string"* %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, %"class.std::__1::basic_string"** %__tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__p.addr__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %__ptr_2__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, i32 0, i32 0
  %call3__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr_2__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_) #15
  store %"class.std::__1::basic_string"* %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_1, %"class.std::__1::basic_string"** %call3__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_2 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  %tobool__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = icmp ne %"class.std::__1::basic_string"* %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_2, null
  br i1 %tobool__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, i32 0, i32 0
  %call5__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_ = call dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.24"* %__ptr_4__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_) #15
  %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, align 8
  call void @_ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.27"* %call5__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_, %"class.std::__1::basic_string"* %tmp__ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = alloca %"class.std::__1::__compressed_pair.24"*, align 8
  store %"class.std::__1::__compressed_pair.24"* %this, %"class.std::__1::__compressed_pair.24"** %this.addr__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv, align 8
  %this1__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = load %"class.std::__1::__compressed_pair.24"*, %"class.std::__1::__compressed_pair.24"** %this.addr__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv, align 8
  %tmp__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = bitcast %"class.std::__1::__compressed_pair.24"* %this1__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv to %"struct.std::__1::__compressed_pair_elem.25"*
  %call__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %tmp__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv) #15
  ret %"class.std::__1::basic_string"** %call__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.24"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = alloca %"class.std::__1::__compressed_pair.24"*, align 8
  store %"class.std::__1::__compressed_pair.24"* %this, %"class.std::__1::__compressed_pair.24"** %this.addr__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv, align 8
  %this1__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = load %"class.std::__1::__compressed_pair.24"*, %"class.std::__1::__compressed_pair.24"** %this.addr__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv, align 8
  %tmp__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = bitcast %"class.std::__1::__compressed_pair.24"* %this1__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv to %"struct.std::__1::__compressed_pair_elem.26"*
  %call__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv = call dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.26"* %tmp__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv) #15
  ret %"struct.std::__1::default_delete.27"* %call__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.27"* %this, %"class.std::__1::basic_string"* %__ptr) #5 align 2 {
entry:
  %this.addr__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = alloca %"struct.std::__1::default_delete.27"*, align 8
  %__ptr.addr__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = alloca %"class.std::__1::basic_string"*, align 8
  store %"struct.std::__1::default_delete.27"* %this, %"struct.std::__1::default_delete.27"** %this.addr__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  store %"class.std::__1::basic_string"* %__ptr, %"class.std::__1::basic_string"** %__ptr.addr__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  %this1__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = load %"struct.std::__1::default_delete.27"*, %"struct.std::__1::default_delete.27"** %this.addr__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  %tmp__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__ptr.addr__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, align 8
  %isnull__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ = icmp eq %"class.std::__1::basic_string"* %tmp__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, null
  br i1 %isnull__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %tmp__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_) #15
  %tmp__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_1 = bitcast %"class.std::__1::basic_string"* %tmp__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_ to i8*
  call void @_ZdlPv(i8* %tmp__ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_1) #16
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %this, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, align 8
  %this1__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, align 8
  %__value___ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.25", %"struct.std::__1::__compressed_pair_elem.25"* %this1__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv, i32 0, i32 0
  ret %"class.std::__1::basic_string"** %__value___ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.26"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.26"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.26"* %this, %"struct.std::__1::__compressed_pair_elem.26"** %this.addr__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.26"*, %"struct.std::__1::__compressed_pair_elem.26"** %this.addr__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv, align 8
  %tmp__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv = bitcast %"struct.std::__1::__compressed_pair_elem.26"* %this1__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv to %"struct.std::__1::default_delete.27"*
  ret %"struct.std::__1::default_delete.27"* %tmp__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv
}

declare %"class.testing::UnitTest"* @_ZN7testing8UnitTest11GetInstanceEv() #1

declare i32 @_ZN7testing8UnitTest3RunEv(%"class.testing::UnitTest"*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN14foo_test1_TestD2Ev(%class.foo_test1_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZN14foo_test1_TestD2Ev = alloca %class.foo_test1_Test*, align 8
  store %class.foo_test1_Test* %this, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestD2Ev, align 8
  %this1__ZN14foo_test1_TestD2Ev = load %class.foo_test1_Test*, %class.foo_test1_Test** %this.addr__ZN14foo_test1_TestD2Ev, align 8
  %tmp__ZN14foo_test1_TestD2Ev = bitcast %class.foo_test1_Test* %this1__ZN14foo_test1_TestD2Ev to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %tmp__ZN14foo_test1_TestD2Ev) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(%"class.testing::Test"*) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc(%"class.std::__1::basic_string"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, align 8
  store i8* %__s, i8** %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc = bitcast %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc to %"class.std::__1::__basic_string_common"*
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, i32 0, i32 0
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc)
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc1 = load i8*, i8** %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc2 = load i8*, i8** %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, align 8
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc2) #15
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc1, i64 %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv, align 8
  %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv(%"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv)
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #5 align 2 {
entry:
  %__s.addr__ZNSt3__111char_traitsIcE6lengthEPKc = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr__ZNSt3__111char_traitsIcE6lengthEPKc, align 8
  %tmp__ZNSt3__111char_traitsIcE6lengthEPKc = load i8*, i8** %__s.addr__ZNSt3__111char_traitsIcE6lengthEPKc, align 8
  %call__ZNSt3__111char_traitsIcE6lengthEPKc = call i64 @strlen(i8* %tmp__ZNSt3__111char_traitsIcE6lengthEPKc) #15
  ret i64 %call__ZNSt3__111char_traitsIcE6lengthEPKc
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv(%"class.std::__1::__compressed_pair"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv, align 8
  %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv, align 8
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv to %"struct.std::__1::__compressed_pair_elem"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv)
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv1 = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv to %"struct.std::__1::__compressed_pair_elem.1"*
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv1) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev, align 8
  %__value___ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev, i32 0, i32 0
  %tmp__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value___ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %tmp__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev, align 8
  %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev to %"class.std::__1::allocator"*
  call void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev) #15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__19allocatorIcEC2Ev = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr__ZNSt3__19allocatorIcEC2Ev, align 8
  %this1__ZNSt3__19allocatorIcEC2Ev = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr__ZNSt3__19allocatorIcEC2Ev, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void ()* @_ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_(void ()* %a, void ()* %def) #5 {
entry:
  %a.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_ = alloca void ()*, align 8
  %def.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_ = alloca void ()*, align 8
  store void ()* %a, void ()** %a.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, align 8
  store void ()* %def, void ()** %def.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, align 8
  %tmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_ = load void ()*, void ()** %a.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, align 8
  %tmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_1 = load void ()*, void ()** %def.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, align 8
  %cmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_ = icmp eq void ()* %tmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, %tmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_1
  br i1 %cmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_2 = load void ()*, void ()** %a.addr__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_ = phi void ()* [ null, %cond.true ], [ %tmp__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_2, %cond.false ]
  ret void ()* %cond__ZN7testing8internal19GetNotDefaultOrNullEPFvvES2_
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
  %__os.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc, align 8
  store i8* %__str, i8** %__str.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc, align 8
  %tmp__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc, align 8
  %tmp__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc1 = load i8*, i8** %__str.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc, align 8
  %tmp__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc2 = load i8*, i8** %__str.addr__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc, align 8
  %call__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %tmp__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc2) #15
  %call1__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %tmp__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc, i8* %tmp__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc1, i64 %call__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc)
  ret %"class.std::__1::basic_ostream"* %call1__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
}

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"*, i32, i8*, i32) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %this) #5 align 2 {
entry:
  %this.addr__ZN7testing8internal8GTestLog9GetStreamEv = alloca %"class.testing::internal::GTestLog"*, align 8
  store %"class.testing::internal::GTestLog"* %this, %"class.testing::internal::GTestLog"** %this.addr__ZN7testing8internal8GTestLog9GetStreamEv, align 8
  %this1__ZN7testing8internal8GTestLog9GetStreamEv = load %"class.testing::internal::GTestLog"*, %"class.testing::internal::GTestLog"** %this.addr__ZN7testing8internal8GTestLog9GetStreamEv, align 8
  ret %"class.std::__1::basic_ostream"* @_ZNSt3__14cerrE
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"*) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca i8*, align 8
  %__len.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca i64, align 8
  %__s__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %exn.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca i8*
  %ehselector.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca i32
  %ref.tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  store i8* %__str, i8** %__str.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  store i64 %__len, i64* %__len.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, %"class.std::__1::basic_ostream"* dereferenceable(160) %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, label %if.then, label %if.end27

if.then:                                          ; preds = %invoke.cont2
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  call void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, %"class.std::__1::basic_ostream"* dereferenceable(160) %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m1) #15
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m2 = load i8*, i8** %__str.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m4 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m3 to i8**
  %vtable__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m4, align 8
  %vbase.offset.ptr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr i8, i8* %vtable__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i64 -24
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m5 = bitcast i8* %vbase.offset.ptr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to i64*
  %vbase.offset__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i64, i64* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m5, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m6 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m3 to i8*
  %add.ptr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m6, i64 %vbase.offset__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m7 = bitcast i8* %add.ptr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to %"class.std::__1::ios_base"*
  %call4__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = invoke i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m7)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %if.then
  %and__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = and i32 %call4__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, 176
  %cmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = icmp eq i32 %and__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, 32
  br i1 %cmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont3
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m8 = load i8*, i8** %__str.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m9 = load i64, i64* %__len.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %add.ptr5__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m8, i64 %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m9
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont3
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m10 = load i8*, i8** %__str.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = phi i8* [ %add.ptr5__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, %cond.true ], [ %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m10, %cond.false ]
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m11 = load i8*, i8** %__str.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m12 = load i64, i64* %__len.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %add.ptr6__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m11, i64 %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m12
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m13 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m14 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m13 to i8**
  %vtable7__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m14, align 8
  %vbase.offset.ptr8__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr i8, i8* %vtable7__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i64 -24
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m15 = bitcast i8* %vbase.offset.ptr8__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to i64*
  %vbase.offset9__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i64, i64* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m15, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m16 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m13 to i8*
  %add.ptr10__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m16, i64 %vbase.offset9__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m17 = bitcast i8* %add.ptr10__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to %"class.std::__1::ios_base"*
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m19 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m18 to i8**
  %vtable11__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m19, align 8
  %vbase.offset.ptr12__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr i8, i8* %vtable11__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i64 -24
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m20 = bitcast i8* %vbase.offset.ptr12__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to i64*
  %vbase.offset13__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i64, i64* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m20, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m21 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m18 to i8*
  %add.ptr14__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m21, i64 %vbase.offset13__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m22 = bitcast i8* %add.ptr14__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to %"class.std::__1::basic_ios"*
  %call16__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m22)
          to label %invoke.cont15 unwind label %lpad1

invoke.cont15:                                    ; preds = %cond.end
  %coerce.dive__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i32 0, i32 0
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m23 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %call18__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m23, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m2, i8* %cond__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i8* %add.ptr6__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, %"class.std::__1::ios_base"* dereferenceable(136) %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m17, i8 signext %call16__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %invoke.cont15
  %coerce.dive19__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %call18__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, %"class.std::__1::basic_streambuf"** %coerce.dive19__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %call20__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %ref.tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m) #15
  br i1 %call20__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, label %if.then21, label %if.end

if.then21:                                        ; preds = %invoke.cont17
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m24 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m25 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m24 to i8**
  %vtable22__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m25, align 8
  %vbase.offset.ptr23__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr i8, i8* %vtable22__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i64 -24
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m26 = bitcast i8* %vbase.offset.ptr23__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to i64*
  %vbase.offset24__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i64, i64* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m26, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m27 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m24 to i8*
  %add.ptr25__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m27, i64 %vbase.offset24__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m28 = bitcast i8* %add.ptr25__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to %"class.std::__1::basic_ios"*
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m28, i32 5)
          to label %invoke.cont26 unwind label %lpad1

invoke.cont26:                                    ; preds = %if.then21
  br label %if.end

lpad:                                             ; preds = %entry
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m29 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m30 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m29, 0
  store i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m30, i8** %exn.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m31 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m29, 1
  store i32 %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m31, i32* %ehselector.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 4
  br label %catch

lpad1:                                            ; preds = %if.then21, %invoke.cont15, %cond.end, %if.then, %invoke.cont
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m32 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m33 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m32, 0
  store i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m33, i8** %exn.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m34 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m32, 1
  store i32 %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m34, i32* %ehselector.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 4
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m) #15
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %exn.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m35 = call i8* @__cxa_begin_catch(i8* %exn__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m) #15
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m36 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m37 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m36 to i8**
  %vtable28__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m37, align 8
  %vbase.offset.ptr29__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr i8, i8* %vtable28__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i64 -24
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m38 = bitcast i8* %vbase.offset.ptr29__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to i64*
  %vbase.offset30__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i64, i64* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m38, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m39 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m36 to i8*
  %add.ptr31__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = getelementptr inbounds i8, i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m39, i64 %vbase.offset30__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m40 = bitcast i8* %add.ptr31__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m40)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %if.end27, %invoke.cont33
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  ret %"class.std::__1::basic_ostream"* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m41

if.end:                                           ; preds = %invoke.cont26, %invoke.cont17
  br label %if.end27

if.end27:                                         ; preds = %if.end, %invoke.cont2
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m) #15
  br label %try.cont

lpad32:                                           ; preds = %catch
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m42 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m43 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m42, 0
  store i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m43, i8** %exn.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m44 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m42, 1
  store i32 %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m44, i32* %ehselector.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont34 unwind label %terminate.lpad

invoke.cont34:                                    ; preds = %lpad32
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont34
  %exn35__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i8*, i8** %exn.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 8
  %sel__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = load i32, i32* %ehselector.slot__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, align 4
  %lpad.val__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = insertvalue { i8*, i32 } undef, i8* %exn35__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, 0
  %lpad.val36__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = insertvalue { i8*, i32 } %lpad.val__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, i32 %sel__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m, 1
  resume { i8*, i32 } %lpad.val36__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m

terminate.lpad:                                   ; preds = %lpad32
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m45 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m46 = extractvalue { i8*, i32 } %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m45, 0
  call void @__clang_call_terminate(i8* %tmp__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m46) #17
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv, align 8
  %this1__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %this.addr__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv, align 8
  %__ok___ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %this1__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv, i32 0, i32 0
  %tmp__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv = load i8, i8* %__ok___ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv, align 8
  %tobool__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv = trunc i8 %tmp__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv to i1
  ret i1 %tobool__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i8*, align 8
  %__op.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i8*, align 8
  %__oe.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i8*, align 8
  %__iob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca %"class.std::__1::ios_base"*, align 8
  %__fl.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i8, align 1
  %__sz__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i64, align 8
  %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i64, align 8
  %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i64, align 8
  %__sp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca %"class.std::__1::basic_string", align 8
  %exn.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i8*
  %ehselector.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i32
  %cleanup.dest.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = alloca i32, align 4
  %coerce.dive__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %__s.coerce, %"class.std::__1::basic_streambuf"** %coerce.dive__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  store i8* %__ob, i8** %__ob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  store i8* %__op, i8** %__op.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  store i8* %__oe, i8** %__oe.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  store i8 %__fl, i8* %__fl.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 1
  %__sbuf___ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf___ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp eq %"class.std::__1::basic_streambuf"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, null
  br i1 %cmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_1, i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_2, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_3 = load i8*, i8** %__oe.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_4 = load i8*, i8** %__ob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %sub.ptr.lhs.cast__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = ptrtoint i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_3 to i64
  %sub.ptr.rhs.cast__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = ptrtoint i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_4 to i64
  %sub.ptr.sub__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = sub i64 %sub.ptr.lhs.cast__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, %sub.ptr.rhs.cast__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
  store i64 %sub.ptr.sub__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64* %__sz__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %call__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = call i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_5)
  store i64 %call__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_6 = load i64, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_7 = load i64, i64* %__sz__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp1__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp sgt i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_6, %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_7
  br i1 %cmp1__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_8 = load i64, i64* %__sz__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_9 = load i64, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %sub__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = sub nsw i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_9, %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_8
  store i64 %sub__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_10 = load i8*, i8** %__op.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_11 = load i8*, i8** %__ob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %sub.ptr.lhs.cast4__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = ptrtoint i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_10 to i64
  %sub.ptr.rhs.cast5__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = ptrtoint i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_11 to i64
  %sub.ptr.sub6__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = sub i64 %sub.ptr.lhs.cast4__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, %sub.ptr.rhs.cast5__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
  store i64 %sub.ptr.sub6__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_12 = load i64, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp7__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp sgt i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_12, 0
  br i1 %cmp7__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %__sbuf_9__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_13 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_14 = load i8*, i8** %__ob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_15 = load i64, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %call10__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_13, i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_14, i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_15)
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_16 = load i64, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp11__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp ne i64 %call10__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_16
  br i1 %cmp11__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  %__sbuf_13__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_17 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_18 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_17, i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_18, i64 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_19 = load i64, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp16__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp sgt i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_19, 0
  br i1 %cmp16__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_20 = load i64, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_21 = load i8, i8* %__fl.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* %__sp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_20, i8 signext %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_21)
  %__sbuf_18__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_22 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_18__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %call19__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__sp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_) #15
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_23 = load i64, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %call20__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_22, i8* %call19__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_24 = load i64, i64* %__ns__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp21__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp ne i64 %call20__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_24
  br i1 %cmp21__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then22, label %if.end24

if.then22:                                        ; preds = %invoke.cont
  %__sbuf_23__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_23__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_25 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_26 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_25, i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_26, i64 8, i1 false)
  store i32 1, i32* %cleanup.dest.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 4
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_27 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_28 = extractvalue { i8*, i32 } %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_27, 0
  store i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_28, i8** %exn.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_29 = extractvalue { i8*, i32 } %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_27, 1
  store i32 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_29, i32* %ehselector.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 4
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_) #15
  br label %eh.resume

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_) #15
  %cleanup.dest__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = load i32, i32* %cleanup.dest.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 4
  switch i32 %cleanup.dest__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25

if.end25:                                         ; preds = %cleanup.cont, %if.end15
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_30 = load i8*, i8** %__oe.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_31 = load i8*, i8** %__op.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %sub.ptr.lhs.cast26__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = ptrtoint i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_30 to i64
  %sub.ptr.rhs.cast27__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = ptrtoint i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_31 to i64
  %sub.ptr.sub28__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = sub i64 %sub.ptr.lhs.cast26__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, %sub.ptr.rhs.cast27__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
  store i64 %sub.ptr.sub28__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_32 = load i64, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp29__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp sgt i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_32, 0
  br i1 %cmp29__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end25
  %__sbuf_31__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_33 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_31__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_34 = load i8*, i8** %__op.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_35 = load i64, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %call32__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_33, i8* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_34, i64 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_35)
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_36 = load i64, i64* %__np__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %cmp33__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = icmp ne i64 %call32__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_36
  br i1 %cmp33__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then30
  %__sbuf_35__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_35__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_37 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_38 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_37, i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_38, i64 8, i1 false)
  br label %return

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end25
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_39 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %call38__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = call i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_39, i64 0)
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_40 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_41 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_40, i8* align 8 %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_41, i64 8, i1 false)
  br label %return

return:                                           ; preds = %if.end37, %if.then34, %cleanup, %if.then12, %if.then
  %coerce.dive39__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 0, i32 0
  %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_42 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive39__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  ret %"class.std::__1::basic_streambuf"* %tmp__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_42

eh.resume:                                        ; preds = %lpad
  %exn__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = load i8*, i8** %exn.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 8
  %sel__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = load i32, i32* %ehselector.slot__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, align 4
  %lpad.val__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = insertvalue { i8*, i32 } undef, i8* %exn__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, 0
  %lpad.val40__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = insertvalue { i8*, i32 } %lpad.val__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, i32 %sel__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_, 1
  resume { i8*, i32 } %lpad.val40__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::basic_ostream"* dereferenceable(160) %__s) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE, align 8
  %this1__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE, align 8
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE, align 8
  call void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE, %"class.std::__1::basic_ostream"* dereferenceable(160) %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_ZNKSt3__18ios_base5flagsEv(%"class.std::__1::ios_base"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__18ios_base5flagsEv = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr__ZNKSt3__18ios_base5flagsEv, align 8
  %this1__ZNKSt3__18ios_base5flagsEv = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr__ZNKSt3__18ios_base5flagsEv, align 8
  %__fmtflags___ZNKSt3__18ios_base5flagsEv = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1__ZNKSt3__18ios_base5flagsEv, i32 0, i32 1
  %tmp__ZNKSt3__18ios_base5flagsEv = load i32, i32* %__fmtflags___ZNKSt3__18ios_base5flagsEv, align 8
  ret i32 %tmp__ZNKSt3__18ios_base5flagsEv
}

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv(%"class.std::__1::basic_ios"* %this) #2 align 2 {
entry:
  %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, align 8
  %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, align 8
  %call__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  %__fill___ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, i32 0, i32 2
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = load i32, i32* %__fill___ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, align 8
  %call2__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, i32 %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv) #15
  br i1 %call2__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, i8 signext 32)
  %conv__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = sext i8 %call3__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv to i32
  %__fill_4__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, i32 0, i32 2
  store i32 %conv__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, i32* %__fill_4__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, i32 0, i32 2
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv1 = load i32, i32* %__fill_5__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv, align 8
  %conv6__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv = trunc i32 %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv1 to i8
  ret i8 %conv6__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv, align 8
  %this1__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv, align 8
  %__sbuf___ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv, i32 0, i32 0
  %tmp__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf___ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv, align 8
  %cmp__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv = icmp eq %"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv, null
  ret i1 %cmp__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj(%"class.std::__1::basic_ios"* %this, i32 %__state) #2 align 2 {
entry:
  %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj = alloca %"class.std::__1::basic_ios"*, align 8
  %__state.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj, align 8
  store i32 %__state, i32* %__state.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj, align 4
  %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj, align 8
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj = bitcast %"class.std::__1::basic_ios"* %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj to %"class.std::__1::ios_base"*
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj1 = load i32, i32* %__state.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj, align 4
  call void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj, i32 %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj1)
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
  %tmp___clang_call_terminate = call i8* @__cxa_begin_catch(i8* %0) #15
  call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__18ios_base5widthEv(%"class.std::__1::ios_base"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__18ios_base5widthEv = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr__ZNKSt3__18ios_base5widthEv, align 8
  %this1__ZNKSt3__18ios_base5widthEv = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr__ZNKSt3__18ios_base5widthEv, align 8
  %__width___ZNKSt3__18ios_base5widthEv = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1__ZNKSt3__18ios_base5widthEv, i32 0, i32 3
  %tmp__ZNKSt3__18ios_base5widthEv = load i64, i64* %__width___ZNKSt3__18ios_base5widthEv, align 8
  ret i64 %tmp__ZNKSt3__18ios_base5widthEv
}

; Function Attrs: noinline optnone ssp uwtable
define internal i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl(%"class.std::__1::basic_streambuf"* %this, i8* %__s, i64 %__n) #2 align 2 {
entry:
  %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = alloca i8*, align 8
  %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  store i8* %__s, i8** %__s.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = load i8*, i8** %__s.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl1 = load i64, i64* %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl2 = bitcast %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl2, align 8
  %vfn__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, i64 12
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl3 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, align 8
  %call__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl = call i64 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl3(%"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl, i64 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl1)
  ret i64 %call__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc(%"class.std::__1::basic_string"* %this, i64 %__n, i8 signext %__c) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc = alloca i64, align 8
  %__c.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, align 8
  store i8 %__c, i8* %__c.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, align 1
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc = load i64, i64* %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc1 = load i8, i8* %__c.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc, i8 signext %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__18ios_base5widthEl(%"class.std::__1::ios_base"* %this, i64 %__wide) #5 align 2 {
entry:
  %this.addr__ZNSt3__18ios_base5widthEl = alloca %"class.std::__1::ios_base"*, align 8
  %__wide.addr__ZNSt3__18ios_base5widthEl = alloca i64, align 8
  %__r__ZNSt3__18ios_base5widthEl = alloca i64, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr__ZNSt3__18ios_base5widthEl, align 8
  store i64 %__wide, i64* %__wide.addr__ZNSt3__18ios_base5widthEl, align 8
  %this1__ZNSt3__18ios_base5widthEl = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr__ZNSt3__18ios_base5widthEl, align 8
  %__width___ZNSt3__18ios_base5widthEl = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1__ZNSt3__18ios_base5widthEl, i32 0, i32 3
  %tmp__ZNSt3__18ios_base5widthEl = load i64, i64* %__width___ZNSt3__18ios_base5widthEl, align 8
  store i64 %tmp__ZNSt3__18ios_base5widthEl, i64* %__r__ZNSt3__18ios_base5widthEl, align 8
  %tmp__ZNSt3__18ios_base5widthEl1 = load i64, i64* %__wide.addr__ZNSt3__18ios_base5widthEl, align 8
  %__width_2__ZNSt3__18ios_base5widthEl = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1__ZNSt3__18ios_base5widthEl, i32 0, i32 3
  store i64 %tmp__ZNSt3__18ios_base5widthEl1, i64* %__width_2__ZNSt3__18ios_base5widthEl, align 8
  %tmp__ZNSt3__18ios_base5widthEl2 = load i64, i64* %__r__ZNSt3__18ios_base5widthEl, align 8
  ret i64 %tmp__ZNSt3__18ios_base5widthEl2
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc(%"class.std::__1::basic_string"* %this, i64 %__n, i8 signext %__c) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc = alloca i64, align 8
  %__c.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, align 8
  store i8 %__c, i8* %__c.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, align 1
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc = bitcast %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc to %"class.std::__1::__basic_string_common"*
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, i32 0, i32 0
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc)
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc1 = load i64, i64* %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc2 = load i8, i8* %__c.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc, i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc1, i8 signext %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc2)
  ret void
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::basic_ostream"* dereferenceable(160) %__s) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, align 8
  %this1__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, align 8
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = bitcast %"class.std::__1::ostreambuf_iterator"* %this1__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE to %"struct.std::__1::iterator"*
  %__sbuf___ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, i32 0, i32 0
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, align 8
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE2 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE1 to i8**
  %vtable__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = load i8*, i8** %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE2, align 8
  %vbase.offset.ptr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = getelementptr i8, i8* %vtable__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, i64 -24
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE3 = bitcast i8* %vbase.offset.ptr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE to i64*
  %vbase.offset__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = load i64, i64* %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE3, align 8
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE4 = bitcast %"class.std::__1::basic_ostream"* %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE1 to i8*
  %add.ptr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = getelementptr inbounds i8, i8* %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE4, i64 %vbase.offset__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE5 = bitcast i8* %add.ptr__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE to %"class.std::__1::basic_ios"*
  %call__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE5)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_streambuf"* %call__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, %"class.std::__1::basic_streambuf"** %__sbuf___ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE, align 8
  ret void

terminate.lpad:                                   ; preds = %entry
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE6 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE7 = extractvalue { i8*, i32 } %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE6, 0
  call void @__clang_call_terminate(i8* %tmp__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE7) #17
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define internal %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv(%"class.std::__1::basic_ios"* %this) #2 align 2 {
entry:
  %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv, align 8
  %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv, align 8
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv = bitcast %"class.std::__1::basic_ios"* %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv to %"class.std::__1::ios_base"*
  %call__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv = call i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv)
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv1 = bitcast i8* %call__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv to %"class.std::__1::basic_streambuf"*
  ret %"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__18ios_base5rdbufEv(%"class.std::__1::ios_base"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__18ios_base5rdbufEv = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr__ZNKSt3__18ios_base5rdbufEv, align 8
  %this1__ZNKSt3__18ios_base5rdbufEv = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr__ZNKSt3__18ios_base5rdbufEv, align 8
  %__rdbuf___ZNKSt3__18ios_base5rdbufEv = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1__ZNKSt3__18ios_base5rdbufEv, i32 0, i32 6
  %tmp__ZNKSt3__18ios_base5rdbufEv = load i8*, i8** %__rdbuf___ZNKSt3__18ios_base5rdbufEv, align 8
  ret i8* %tmp__ZNKSt3__18ios_base5rdbufEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #5 align 2 {
entry:
  %__c1.addr__ZNSt3__111char_traitsIcE11eq_int_typeEii = alloca i32, align 4
  %__c2.addr__ZNSt3__111char_traitsIcE11eq_int_typeEii = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr__ZNSt3__111char_traitsIcE11eq_int_typeEii, align 4
  store i32 %__c2, i32* %__c2.addr__ZNSt3__111char_traitsIcE11eq_int_typeEii, align 4
  %tmp__ZNSt3__111char_traitsIcE11eq_int_typeEii = load i32, i32* %__c1.addr__ZNSt3__111char_traitsIcE11eq_int_typeEii, align 4
  %tmp__ZNSt3__111char_traitsIcE11eq_int_typeEii1 = load i32, i32* %__c2.addr__ZNSt3__111char_traitsIcE11eq_int_typeEii, align 4
  %cmp__ZNSt3__111char_traitsIcE11eq_int_typeEii = icmp eq i32 %tmp__ZNSt3__111char_traitsIcE11eq_int_typeEii, %tmp__ZNSt3__111char_traitsIcE11eq_int_typeEii1
  ret i1 %cmp__ZNSt3__111char_traitsIcE11eq_int_typeEii
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #5 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc(%"class.std::__1::basic_ios"* %this, i8 signext %__c) #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = alloca %"class.std::__1::basic_ios"*, align 8
  %__c.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = alloca i8, align 1
  %ref.tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = alloca %"class.std::__1::locale", align 8
  %exn.slot__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = alloca i8*
  %ehselector.slot__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = alloca i32
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 8
  store i8 %__c, i8* %__c.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 1
  %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 8
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = bitcast %"class.std::__1::basic_ios"* %this1__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc to %"class.std::__1::ios_base"*
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %ref.tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, %"class.std::__1::ios_base"* %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc)
  %call__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = invoke dereferenceable(32) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* dereferenceable(8) %ref.tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc1 = load i8, i8* %__c.addr__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 1
  %call3__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %call__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, i8 signext %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc) #15
  ret i8 %call3__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc

lpad:                                             ; preds = %invoke.cont, %entry
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc2 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc3 = extractvalue { i8*, i32 } %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc2, 0
  store i8* %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc3, i8** %exn.slot__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 8
  %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc4 = extractvalue { i8*, i32 } %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc2, 1
  store i32 %tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc4, i32* %ehselector.slot__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 4
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = load i8*, i8** %exn.slot__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 8
  %sel__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = load i32, i32* %ehselector.slot__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, align 4
  %lpad.val__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = insertvalue { i8*, i32 } undef, i8* %exn__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, 0
  %lpad.val4__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc = insertvalue { i8*, i32 } %lpad.val__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, i32 %sel__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc, 1
  resume { i8*, i32 } %lpad.val4__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
}

; Function Attrs: noinline optnone ssp uwtable
define internal dereferenceable(32) %"class.std::__1::ctype"* @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* dereferenceable(8) %__l) #2 {
entry:
  %__l.addr__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE = alloca %"class.std::__1::locale"*, align 8
  store %"class.std::__1::locale"* %__l, %"class.std::__1::locale"** %__l.addr__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE, align 8
  %tmp__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE, align 8
  %call__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %tmp__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE, %"class.std::__1::locale::id"* dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
  %tmp__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE1 = bitcast %"class.std::__1::locale::facet"* %call__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE to %"class.std::__1::ctype"*
  ret %"class.std::__1::ctype"* %tmp__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal signext i8 @_ZNKSt3__15ctypeIcE5widenEc(%"class.std::__1::ctype"* %this, i8 signext %__c) #2 align 2 {
entry:
  %this.addr__ZNKSt3__15ctypeIcE5widenEc = alloca %"class.std::__1::ctype"*, align 8
  %__c.addr__ZNKSt3__15ctypeIcE5widenEc = alloca i8, align 1
  store %"class.std::__1::ctype"* %this, %"class.std::__1::ctype"** %this.addr__ZNKSt3__15ctypeIcE5widenEc, align 8
  store i8 %__c, i8* %__c.addr__ZNKSt3__15ctypeIcE5widenEc, align 1
  %this1__ZNKSt3__15ctypeIcE5widenEc = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr__ZNKSt3__15ctypeIcE5widenEc, align 8
  %tmp__ZNKSt3__15ctypeIcE5widenEc = load i8, i8* %__c.addr__ZNKSt3__15ctypeIcE5widenEc, align 1
  %tmp__ZNKSt3__15ctypeIcE5widenEc1 = bitcast %"class.std::__1::ctype"* %this1__ZNKSt3__15ctypeIcE5widenEc to i8 (%"class.std::__1::ctype"*, i8)***
  %vtable__ZNKSt3__15ctypeIcE5widenEc = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %tmp__ZNKSt3__15ctypeIcE5widenEc1, align 8
  %vfn__ZNKSt3__15ctypeIcE5widenEc = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable__ZNKSt3__15ctypeIcE5widenEc, i64 7
  %tmp__ZNKSt3__15ctypeIcE5widenEc2 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn__ZNKSt3__15ctypeIcE5widenEc, align 8
  %call__ZNKSt3__15ctypeIcE5widenEc = call signext i8 %tmp__ZNKSt3__15ctypeIcE5widenEc2(%"class.std::__1::ctype"* %this1__ZNKSt3__15ctypeIcE5widenEc, i8 signext %tmp__ZNKSt3__15ctypeIcE5widenEc)
  ret i8 %call__ZNKSt3__15ctypeIcE5widenEc
}

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #6

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__18ios_base8setstateEj(%"class.std::__1::ios_base"* %this, i32 %__state) #2 align 2 {
entry:
  %this.addr__ZNSt3__18ios_base8setstateEj = alloca %"class.std::__1::ios_base"*, align 8
  %__state.addr__ZNSt3__18ios_base8setstateEj = alloca i32, align 4
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr__ZNSt3__18ios_base8setstateEj, align 8
  store i32 %__state, i32* %__state.addr__ZNSt3__18ios_base8setstateEj, align 4
  %this1__ZNSt3__18ios_base8setstateEj = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr__ZNSt3__18ios_base8setstateEj, align 8
  %__rdstate___ZNSt3__18ios_base8setstateEj = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1__ZNSt3__18ios_base8setstateEj, i32 0, i32 4
  %tmp__ZNSt3__18ios_base8setstateEj = load i32, i32* %__rdstate___ZNSt3__18ios_base8setstateEj, align 8
  %tmp__ZNSt3__18ios_base8setstateEj1 = load i32, i32* %__state.addr__ZNSt3__18ios_base8setstateEj, align 4
  %or__ZNSt3__18ios_base8setstateEj = or i32 %tmp__ZNSt3__18ios_base8setstateEj, %tmp__ZNSt3__18ios_base8setstateEj1
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1__ZNSt3__18ios_base8setstateEj, i32 %or__ZNSt3__18ios_base8setstateEj)
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

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* noalias sret %agg.result, i8* %lhs_expression, i8* %rhs_expression, i32* dereferenceable(4) %lhs, i32* dereferenceable(4) %rhs) #2 {
entry:
  %lhs_expression.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i8*, align 8
  %rhs_expression.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i8*, align 8
  %lhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i32*, align 8
  %rhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i32*, align 8
  store i8* %lhs_expression, i8** %lhs_expression.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  store i8* %rhs_expression, i8** %rhs_expression.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  store i32* %lhs, i32** %lhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  store i32* %rhs, i32** %rhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = load i32*, i32** %lhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_1 = load i32, i32* %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 4
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_2 = load i32*, i32** %rhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_3 = load i32, i32* %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_2, align 4
  %cmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = icmp eq i32 %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_1, %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_3
  br i1 %cmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN7testing16AssertionSuccessEv(%"class.testing::AssertionResult"* sret %agg.result)
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_4 = load i8*, i8** %lhs_expression.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_5 = load i8*, i8** %rhs_expression.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_6 = load i32*, i32** %lhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_7 = load i32*, i32** %rhs.addr__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* sret %agg.result, i8* %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_4, i8* %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_5, i32* dereferenceable(4) %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_6, i32* dereferenceable(4) %tmp__ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(%"class.testing::AssertionResult"* sret) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* noalias sret %agg.result, i8* %lhs_expression, i8* %rhs_expression, i32* dereferenceable(4) %lhs, i32* dereferenceable(4) %rhs) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %lhs_expression.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i8*, align 8
  %rhs_expression.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i8*, align 8
  %lhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i32*, align 8
  %rhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i32*, align 8
  %ref.tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp1__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca %"class.std::__1::basic_string", align 8
  %exn.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i8*
  %ehselector.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = alloca i32
  store i8* %lhs_expression, i8** %lhs_expression.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  store i8* %rhs_expression, i8** %rhs_expression.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  store i32* %lhs, i32** %lhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  store i32* %rhs, i32** %rhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = load i8*, i8** %lhs_expression.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_1 = load i8*, i8** %rhs_expression.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_2 = load i32*, i32** %lhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_3 = load i32*, i32** %rhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  call void @_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_(%"class.std::__1::basic_string"* sret %ref.tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, i32* dereferenceable(4) %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_2, i32* dereferenceable(4) %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_3)
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_4 = load i32*, i32** %rhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_5 = load i32*, i32** %lhs.addr__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  invoke void @_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_(%"class.std::__1::basic_string"* sret %ref.tmp1__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, i32* dereferenceable(4) %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_4, i32* dereferenceable(4) %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEESB_b(%"class.testing::AssertionResult"* sret %agg.result, i8* %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, i8* %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_1, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp1__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, i1 zeroext false)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp1__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_) #15
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_) #15
  ret void

lpad:                                             ; preds = %entry
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_6 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_7 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_6, 0
  store i8* %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_7, i8** %exn.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_8 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_6, 1
  store i32 %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_8, i32* %ehselector.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_9 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_10 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_9, 0
  store i8* %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_10, i8** %exn.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_11 = extractvalue { i8*, i32 } %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_9, 1
  store i32 %tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_11, i32* %ehselector.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 4
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp1__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad2, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_) #15
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = load i8*, i8** %exn.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 8
  %sel__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = load i32, i32* %ehselector.slot__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, align 4
  %lpad.val__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = insertvalue { i8*, i32 } undef, i8* %exn__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, 0
  %lpad.val4__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_ = insertvalue { i8*, i32 } %lpad.val__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, i32 %sel__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_, 1
  resume { i8*, i32 } %lpad.val4__ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_
}

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEESB_b(%"class.testing::AssertionResult"* sret, i8*, i8*, %"class.std::__1::basic_string"* dereferenceable(24), %"class.std::__1::basic_string"* dereferenceable(24), i1 zeroext) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_(%"class.std::__1::basic_string"* noalias sret %agg.result, i32* dereferenceable(4) %value, i32* dereferenceable(4) %0) #2 {
entry:
  %value.addr__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_ = alloca i32*, align 8
  %.addr__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_ = alloca i32*, align 8
  store i32* %value, i32** %value.addr__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_, align 8
  store i32* %0, i32** %.addr__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_, align 8
  %tmp__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_ = load i32*, i32** %value.addr__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_, align 8
  call void @_ZN7testing8internal19FormatForComparisonIiiE6FormatERKi(%"class.std::__1::basic_string"* sret %agg.result, i32* dereferenceable(4) %tmp__ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal19FormatForComparisonIiiE6FormatERKi(%"class.std::__1::basic_string"* noalias sret %agg.result, i32* dereferenceable(4) %value) #2 align 2 {
entry:
  %value.addr__ZN7testing8internal19FormatForComparisonIiiE6FormatERKi = alloca i32*, align 8
  store i32* %value, i32** %value.addr__ZN7testing8internal19FormatForComparisonIiiE6FormatERKi, align 8
  %tmp__ZN7testing8internal19FormatForComparisonIiiE6FormatERKi = load i32*, i32** %value.addr__ZN7testing8internal19FormatForComparisonIiiE6FormatERKi, align 8
  call void @_ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_(%"class.std::__1::basic_string"* sret %agg.result, i32* dereferenceable(4) %tmp__ZN7testing8internal19FormatForComparisonIiiE6FormatERKi)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_(%"class.std::__1::basic_string"* noalias sret %agg.result, i32* dereferenceable(4) %value) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %value.addr__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = alloca i32*, align 8
  %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = alloca %"class.std::__1::basic_stringstream", align 8
  %exn.slot__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = alloca i8*
  %ehselector.slot__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = alloca i32
  store i32* %value, i32** %value.addr__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, align 8
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringstream"* %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, i32 24)
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = load i32*, i32** %value.addr__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, align 8
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_1 = icmp eq %"class.std::__1::basic_stringstream"* %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, null
  br i1 %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_1, label %cast.end, label %cast.notnull

cast.notnull:                                     ; preds = %entry
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_2 = bitcast %"class.std::__1::basic_stringstream"* %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ to i8*
  %add.ptr__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = getelementptr inbounds i8, i8* %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_2, i64 16
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_3 = bitcast i8* %add.ptr__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ to %"class.std::__1::basic_ostream"*
  br label %cast.end

cast.end:                                         ; preds = %cast.notnull, %entry
  %cast.result__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = phi %"class.std::__1::basic_ostream"* [ %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_3, %cast.notnull ], [ null, %entry ]
  invoke void @_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, %"class.std::__1::basic_ostream"* %cast.result__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %cast.end
  invoke void @_ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* sret %agg.result, %"class.std::__1::basic_stringstream"* %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_) #15
  ret void

lpad:                                             ; preds = %invoke.cont, %cast.end
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_4 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_5 = extractvalue { i8*, i32 } %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_4, 0
  store i8* %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_5, i8** %exn.slot__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, align 8
  %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_6 = extractvalue { i8*, i32 } %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_4, 1
  store i32 %tmp__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_6, i32* %ehselector.slot__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, align 4
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %ss__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = load i8*, i8** %exn.slot__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, align 8
  %sel__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = load i32, i32* %ehselector.slot__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, align 4
  %lpad.val__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = insertvalue { i8*, i32 } undef, i8* %exn__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, 0
  %lpad.val2__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_ = insertvalue { i8*, i32 } %lpad.val__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, i32 %sel__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_, 1
  resume { i8*, i32 } %lpad.val2__ZN7testing13PrintToStringIiEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringstream"* %this, i32 %__wch) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = alloca %"class.std::__1::basic_stringstream"*, align 8
  %__wch.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = alloca i32, align 4
  %exn.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = alloca i8*
  %ehselector.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = alloca i32
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  store i32 %__wch, i32* %__wch.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i8*
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej1 = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, i64 128
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej2 = bitcast i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej1 to %"class.std::__1::basic_ios"*
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ios"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej2)
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej3 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej3, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej4 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i8*
  %add.ptr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej4, i64 128
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej5 = bitcast i8* %add.ptr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej5, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej6 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i8*
  %add.ptr2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej6, i64 16
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej7 = bitcast i8* %add.ptr2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej7, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej8 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to %"class.std::__1::basic_iostream"*
  %__sb___ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, i32 0, i32 1
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej9 = bitcast %"class.std::__1::basic_stringbuf"* %__sb___ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to %"class.std::__1::basic_streambuf"*
  invoke void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_iostream"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej8, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1), %"class.std::__1::basic_streambuf"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej9)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej10 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej10, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej11 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i8*
  %add.ptr3__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej11, i64 128
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej12 = bitcast i8* %add.ptr3__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej12, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej13 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i8*
  %add.ptr4__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej13, i64 16
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej14 = bitcast i8* %add.ptr4__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej14, align 8
  %__sb_5__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, i32 0, i32 1
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej15 = load i32, i32* %__wch.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringbuf"* %__sb_5__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, i32 %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej15)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %entry
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej16 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej17 = extractvalue { i8*, i32 } %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej16, 0
  store i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej17, i8** %exn.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej18 = extractvalue { i8*, i32 } %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej16, 1
  store i32 %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej18, i32* %ehselector.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej19 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej20 = extractvalue { i8*, i32 } %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej19, 0
  store i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej20, i8** %exn.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej21 = extractvalue { i8*, i32 } %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej19, 1
  store i32 %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej21, i32* %ehselector.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej22 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to %"class.std::__1::basic_iostream"*
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej22, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej23 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej to i8*
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej24 = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej23, i64 128
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej25 = bitcast i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej24 to %"class.std::__1::basic_ios"*
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej25) #15
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = load i8*, i8** %exn.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  %sel__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = load i32, i32* %ehselector.slot__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  %lpad.val__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = insertvalue { i8*, i32 } undef, i8* %exn__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, 0
  %lpad.val8__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = insertvalue { i8*, i32 } %lpad.val__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, i32 %sel__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, 1
  resume { i8*, i32 } %lpad.val8__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %value, %"class.std::__1::basic_ostream"* %os) #2 align 2 {
entry:
  %value.addr__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca i32*, align 8
  %os.addr__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca %"class.std::__1::basic_ostream"*, align 8
  store i32* %value, i32** %value.addr__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = load i32*, i32** %value.addr__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  call void @_ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %tmp__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, %"class.std::__1::basic_ostream"* %tmp__ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* noalias sret %agg.result, %"class.std::__1::basic_stringstream"* %this) #2 align 2 {
entry:
  %this.addr__ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %this1__ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %__sb___ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1__ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 1
  call void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* sret %agg.result, %"class.std::__1::basic_stringbuf"* %__sb___ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 0)) #15
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev1 = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, i64 128
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev2 = bitcast i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev1 to %"class.std::__1::basic_ios"*
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev2) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ios"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev, align 8
  %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev, align 8
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev = bitcast %"class.std::__1::basic_ios"* %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev to %"class.std::__1::ios_base"*
  call void @_ZNSt3__18ios_baseC2Ev(%"class.std::__1::ios_base"* %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev)
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev1 = bitcast %"class.std::__1::basic_ios"* %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev1, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_iostream"* %this, i8** %vtt, %"class.std::__1::basic_streambuf"* %__sb) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca %"class.std::__1::basic_iostream"*, align 8
  %vtt.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca i8**, align 8
  %__sb.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca %"class.std::__1::basic_streambuf"*, align 8
  %exn.slot__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca i8*
  %ehselector.slot__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca i32
  store %"class.std::__1::basic_iostream"* %this, %"class.std::__1::basic_iostream"** %this.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  store i8** %vtt, i8*** %vtt.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  store %"class.std::__1::basic_streambuf"* %__sb, %"class.std::__1::basic_streambuf"** %__sb.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load %"class.std::__1::basic_iostream"*, %"class.std::__1::basic_iostream"** %this.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8**, i8*** %vtt.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to %"class.std::__1::basic_istream"*
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sb.addr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE2 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 1
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_istream"* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i8** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE2, %"class.std::__1::basic_streambuf"* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE1)
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE3 = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8*
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE4 = getelementptr inbounds i8, i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE3, i64 16
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE5 = bitcast i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE4 to %"class.std::__1::basic_ostream"*
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE6 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 3
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ostream"* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE5, i8** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE7 = load i8*, i8** %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE8 = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i32 (...)***
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE9 = bitcast i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE7 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE9, i32 (...)*** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE8, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE10 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 5
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE11 = load i8*, i8** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE10, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE12 = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8**
  %vtable__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8*, i8** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE12, align 8
  %vbase.offset.ptr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr i8, i8* %vtable__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 -24
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE13 = bitcast i8* %vbase.offset.ptr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i64*
  %vbase.offset__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i64, i64* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE13, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE14 = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8*
  %add.ptr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr inbounds i8, i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE14, i64 %vbase.offset__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE15 = bitcast i8* %add.ptr__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i32 (...)***
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE16 = bitcast i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE11 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE16, i32 (...)*** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE15, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE17 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 6
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE18 = load i8*, i8** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE17, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE19 = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8*
  %add.ptr3__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr inbounds i8, i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE19, i64 16
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE20 = bitcast i8* %add.ptr3__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i32 (...)***
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE21 = bitcast i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE18 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE21, i32 (...)*** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE20, align 8
  ret void

lpad:                                             ; preds = %entry
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE22 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE23 = extractvalue { i8*, i32 } %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE22, 0
  store i8* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE23, i8** %exn.slot__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE24 = extractvalue { i8*, i32 } %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE22, 1
  store i32 %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE24, i32* %ehselector.slot__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 4
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE25 = bitcast %"class.std::__1::basic_iostream"* %this1__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to %"class.std::__1::basic_istream"*
  %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE26 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 1
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_istream"* %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE25, i8** %tmp__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE26) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8*, i8** %exn.slot__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %sel__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i32, i32* %ehselector.slot__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 4
  %lpad.val__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = insertvalue { i8*, i32 } undef, i8* %exn__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, 0
  %lpad.val4__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = insertvalue { i8*, i32 } %lpad.val__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i32 %sel__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, 1
  resume { i8*, i32 } %lpad.val4__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringbuf"* %this, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  store i32 %__wch, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, align 4
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej(%"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej, i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"*, i8**) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_istream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_istream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_istream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_istream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev) #15
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*
  call void @_ZdlPv(i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev) #16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  %this1__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = bitcast %"class.std::__1::basic_stringstream"* %this1__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*
  %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev1 = getelementptr inbounds i8, i8* %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, i64 -16
  %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev2 = bitcast i8* %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev1 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev2) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  %this1__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = bitcast %"class.std::__1::basic_stringstream"* %this1__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*
  %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev1 = getelementptr inbounds i8, i8* %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, i64 -16
  %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev2 = bitcast i8* %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev1 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %tmp__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev2) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  %this1__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = bitcast %"class.std::__1::basic_stringstream"* %this1__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev1 = bitcast i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8**
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev2 = load i8*, i8** %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev1, align 8
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev3 = getelementptr inbounds i8, i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev2, i64 -24
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev4 = bitcast i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev3 to i64*
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev5 = load i64, i64* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev4, align 8
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev6 = getelementptr inbounds i8, i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, i64 %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev5
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev7 = bitcast i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev6 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev7) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  %this1__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = bitcast %"class.std::__1::basic_stringstream"* %this1__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev1 = bitcast i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8**
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev2 = load i8*, i8** %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev1, align 8
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev3 = getelementptr inbounds i8, i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev2, i64 -24
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev4 = bitcast i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev3 to i64*
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev5 = load i64, i64* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev4, align 8
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev6 = getelementptr inbounds i8, i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, i64 %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev5
  %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev7 = bitcast i8* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev6 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %tmp__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev7) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__18ios_baseC2Ev(%"class.std::__1::ios_base"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__18ios_baseC2Ev = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr__ZNSt3__18ios_baseC2Ev, align 8
  %this1__ZNSt3__18ios_baseC2Ev = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr__ZNSt3__18ios_baseC2Ev, align 8
  %tmp__ZNSt3__18ios_baseC2Ev = bitcast %"class.std::__1::ios_base"* %this1__ZNSt3__18ios_baseC2Ev to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVNSt3__18ios_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__18ios_baseC2Ev, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_istream"* %this, i8** %vtt, %"class.std::__1::basic_streambuf"* %__sb) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca %"class.std::__1::basic_istream"*, align 8
  %vtt.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca i8**, align 8
  %__sb.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_istream"* %this, %"class.std::__1::basic_istream"** %this.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  store i8** %vtt, i8*** %vtt.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  store %"class.std::__1::basic_streambuf"* %__sb, %"class.std::__1::basic_streambuf"** %__sb.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load %"class.std::__1::basic_istream"*, %"class.std::__1::basic_istream"** %this.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %vtt2__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8**, i8*** %vtt.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8*, i8** %vtt2__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE1 = bitcast %"class.std::__1::basic_istream"* %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i32 (...)***
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE2 = bitcast i8* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE2, i32 (...)*** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE1, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE3 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 1
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE4 = load i8*, i8** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE3, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE5 = bitcast %"class.std::__1::basic_istream"* %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8**
  %vtable__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8*, i8** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE5, align 8
  %vbase.offset.ptr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr i8, i8* %vtable__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 -24
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE6 = bitcast i8* %vbase.offset.ptr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i64*
  %vbase.offset__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i64, i64* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE6, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE7 = bitcast %"class.std::__1::basic_istream"* %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8*
  %add.ptr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr inbounds i8, i8* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE7, i64 %vbase.offset__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE8 = bitcast i8* %add.ptr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i32 (...)***
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE9 = bitcast i8* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE4 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE9, i32 (...)*** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE8, align 8
  %__gc___ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr inbounds %"class.std::__1::basic_istream", %"class.std::__1::basic_istream"* %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i32 0, i32 1
  store i64 0, i64* %__gc___ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE10 = bitcast %"class.std::__1::basic_istream"* %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8**
  %vtable3__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i8*, i8** %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE10, align 8
  %vbase.offset.ptr4__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr i8, i8* %vtable3__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, i64 -24
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE11 = bitcast i8* %vbase.offset.ptr4__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i64*
  %vbase.offset5__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = load i64, i64* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE11, align 8
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE12 = bitcast %"class.std::__1::basic_istream"* %this1__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to i8*
  %add.ptr6__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE = getelementptr inbounds i8, i8* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE12, i64 %vbase.offset5__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE13 = bitcast i8* %add.ptr6__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE to %"class.std::__1::basic_ios"*
  %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE14 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sb.addr__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE, align 8
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_ios"* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE13, %"class.std::__1::basic_streambuf"* %tmp__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ostream"* %this, i8** %vtt) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = alloca %"class.std::__1::basic_ostream"*, align 8
  %vtt.addr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = alloca i8**, align 8
  store %"class.std::__1::basic_ostream"* %this, %"class.std::__1::basic_ostream"** %this.addr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, align 8
  store i8** %vtt, i8*** %vtt.addr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, align 8
  %this1__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %this.addr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, align 8
  %vtt2__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = load i8**, i8*** %vtt.addr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, align 8
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = load i8*, i8** %vtt2__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, align 8
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev1 = bitcast %"class.std::__1::basic_ostream"* %this1__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev to i32 (...)***
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev2 = bitcast i8* %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev2, i32 (...)*** %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev1, align 8
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev3 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, i64 1
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev4 = load i8*, i8** %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev3, align 8
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev5 = bitcast %"class.std::__1::basic_ostream"* %this1__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev to i8**
  %vtable__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = load i8*, i8** %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev5, align 8
  %vbase.offset.ptr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = getelementptr i8, i8* %vtable__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev, i64 -24
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev6 = bitcast i8* %vbase.offset.ptr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev to i64*
  %vbase.offset__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = load i64, i64* %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev6, align 8
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev7 = bitcast %"class.std::__1::basic_ostream"* %this1__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev to i8*
  %add.ptr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev = getelementptr inbounds i8, i8* %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev7, i64 %vbase.offset__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev8 = bitcast i8* %add.ptr__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev to i32 (...)***
  %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev9 = bitcast i8* %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev4 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev9, i32 (...)*** %tmp__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev8, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_istream"*, i8**) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_streambuf"* %__sb) #2 align 2 {
entry:
  %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = alloca %"class.std::__1::basic_ios"*, align 8
  %__sb.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, align 8
  store %"class.std::__1::basic_streambuf"* %__sb, %"class.std::__1::basic_streambuf"** %__sb.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, align 8
  %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = bitcast %"class.std::__1::basic_ios"* %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE to %"class.std::__1::ios_base"*
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sb.addr__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, align 8
  %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE2 = bitcast %"class.std::__1::basic_streambuf"* %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE1 to i8*
  call void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, i8* %tmp__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE2)
  %__tie___ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, i32 0, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie___ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, align 8
  %call__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  %__fill___ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, i32 0, i32 2
  store i32 %call__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, i32* %__fill___ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE, align 8
  ret void
}

declare void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"*, i8*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej(%"class.std::__1::basic_stringbuf"* %this, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, align 8
  store i32 %__wch, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, align 4
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej to %"class.std::__1::basic_streambuf"*
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej1, align 8
  %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, i32 0, i32 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej) #15
  %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, i32 0, i32 2
  store i8* null, i8** %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, align 8
  %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, i32 0, i32 3
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej2 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, align 4
  store i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej2, i32* %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej, align 8
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev, align 8
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev, align 8
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev) #15
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*
  call void @_ZdlPv(i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev) #16
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"* dereferenceable(8)) unnamed_addr #1

declare %"class.std::__1::basic_streambuf"* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, i64 %__off, i32 %__way, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__off.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = alloca i64, align 8
  %__way.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = alloca i32, align 4
  %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = alloca i32, align 4
  %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = alloca i64, align 8
  %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = alloca i64, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  store i64 %__off, i64* %__off.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  store i32 %__way, i32* %__way.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  store i32 %__wch, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = load i8*, i8** %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj1)
  %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ult i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
  br i1 %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj2 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj2)
  %__hm_3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i32 0, i32 2
  store i8* %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i8** %__hm_3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj3 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj3, 24
  %cmp4__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp eq i32 %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 0
  br i1 %cmp4__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end6:                                          ; preds = %if.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj4 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and7__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj4, 24
  %cmp8__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp eq i32 %and7__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 24
  br i1 %cmp8__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj5 = load i32, i32* %__way.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %cmp9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp eq i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj5, 1
  br i1 %cmp9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end6
  %__hm_12__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj6 = load i8*, i8** %__hm_12__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %cmp13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp eq i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj6, null
  br i1 %cmp13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %__hm_14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj7 = load i8*, i8** %__hm_14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i32 0, i32 1
  %call15__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj) #15
  %sub.ptr.lhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = ptrtoint i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj7 to i64
  %sub.ptr.rhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = ptrtoint i8* %call15__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i64
  %sub.ptr.sub__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = sub i64 %sub.ptr.lhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, %sub.ptr.rhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = phi i64 [ 0, %cond.true ], [ %sub.ptr.sub__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, %cond.false ]
  store i64 %cond__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i64* %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj8 = load i32, i32* %__way.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  switch i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %cond.end
  store i64 0, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %cond.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj9 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj9, 8
  %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ne i32 %and17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 0
  br i1 %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb16
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj10 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call19__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj10)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj11 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call20__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj11)
  %sub.ptr.lhs.cast21__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = ptrtoint i8* %call19__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i64
  %sub.ptr.rhs.cast22__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = ptrtoint i8* %call20__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i64
  %sub.ptr.sub23__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = sub i64 %sub.ptr.lhs.cast21__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, %sub.ptr.rhs.cast22__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
  store i64 %sub.ptr.sub23__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  br label %if.end29

if.else:                                          ; preds = %sw.bb16
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj12 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call24__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj12)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj13 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call25__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj13)
  %sub.ptr.lhs.cast26__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = ptrtoint i8* %call24__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i64
  %sub.ptr.rhs.cast27__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = ptrtoint i8* %call25__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i64
  %sub.ptr.sub28__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = sub i64 %sub.ptr.lhs.cast26__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, %sub.ptr.rhs.cast27__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
  store i64 %sub.ptr.sub28__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then18
  br label %sw.epilog

sw.bb30:                                          ; preds = %cond.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj14 = load i64, i64* %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  store i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj14, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

sw.epilog:                                        ; preds = %sw.bb30, %if.end29, %sw.bb
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj15 = load i64, i64* %__off.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj16 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %add__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = add nsw i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj16, %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj15
  store i64 %add__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj17 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %cmp31__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp slt i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj17, 0
  br i1 %cmp31__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj18 = load i64, i64* %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj19 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %cmp32__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp slt i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj18, %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj19
  br i1 %cmp32__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %sw.epilog
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj20 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %cmp35__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ne i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj20, 0
  br i1 %cmp35__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then36, label %if.end51

if.then36:                                        ; preds = %if.end34
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj21 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and37__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj21, 8
  %tobool38__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ne i32 %and37__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 0
  br i1 %tobool38__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %if.then36
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj22 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call40__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj22)
  %cmp41__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp eq i8* %call40__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, null
  br i1 %cmp41__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true39
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end43:                                         ; preds = %land.lhs.true39, %if.then36
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj23 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and44__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj23, 16
  %tobool45__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ne i32 %and44__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 0
  br i1 %tobool45__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %land.lhs.true46, label %if.end50

land.lhs.true46:                                  ; preds = %if.end43
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj24 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call47__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj24)
  %cmp48__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp eq i8* %call47__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, null
  br i1 %cmp48__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true46
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end50:                                         ; preds = %land.lhs.true46, %if.end43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end34
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj25 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and52__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj25, 8
  %tobool53__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ne i32 %and52__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 0
  br i1 %tobool53__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end51
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj26 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj27 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call55__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj27)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj28 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call56__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj28)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj29 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %add.ptr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds i8, i8* %call56__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj29
  %__hm_57__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj30 = load i8*, i8** %__hm_57__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj26, i8* %call55__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i8* %add.ptr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj30)
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj31 = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 4
  %and59__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj31, 16
  %tobool60__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = icmp ne i32 %and59__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, 0
  br i1 %tobool60__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end58
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj32 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj33 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call62__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj33)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj34 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %call63__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj34)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj32, i8* %call62__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, i8* %call63__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj35 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj36 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  %conv__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj = trunc i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj36 to i32
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj35, i32 %conv__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj)
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj37 = load i64, i64* %__noff__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj, align 8
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj37)
  br label %return

return:                                           ; preds = %if.end64, %if.then49, %if.then42, %if.then33, %sw.default, %if.then10, %if.then5
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::fpos"* byval align 8 %__sp, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, align 8
  store i32 %__wch, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, align 4
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, align 8
  %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = call i64 @_ZNKSt3__14fposI11__mbstate_tEcvxEv(%"class.std::__1::fpos"* %__sp)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = load i32, i32* %__wch.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, align 4
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj to void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)***
  %vtable__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)**, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*** %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj1, align 8
  %vfn__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj = getelementptr inbounds void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vtable__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, i64 4
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj2 = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vfn__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, align 8
  call void %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj2(%"class.std::__1::fpos"* sret %agg.result, %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, i64 %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj, i32 0, i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj)
  ret void
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #2 align 2 {
entry:
  %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = alloca i32, align 4
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = load i8*, i8** %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv1)
  %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = icmp ult i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
  br i1 %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv2 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv2)
  %__hm_3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32 0, i32 2
  store i8* %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i8** %__hm_3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32 0, i32 3
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv3 = load i32, i32* %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv3, 8
  %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = icmp ne i32 %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, 0
  br i1 %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv4 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call5__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv4)
  %__hm_6__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv5 = load i8*, i8** %__hm_6__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  %cmp7__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = icmp ult i8* %call5__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv5
  br i1 %cmp7__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv6 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv7 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv7)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv8 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call10__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv8)
  %__hm_11__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv9 = load i8*, i8** %__hm_11__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv6, i8* %call9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i8* %call10__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv9)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv10 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv10)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv11 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv11)
  %cmp15__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = icmp ult i8* %call13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, %call14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
  br i1 %cmp15__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv12 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to %"class.std::__1::basic_streambuf"*
  %call17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv12)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv13 = load i8, i8* %call17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 1
  %call18__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv13) #15
  store i32 %call18__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 4
  br label %return

if.end19:                                         ; preds = %if.end12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %call21__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  store i32 %call21__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then16
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv14 = load i32, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv, align 4
  ret i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv14
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #5 align 2 {
entry:
  %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = alloca i32, align 4
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  store i32 %__c, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = load i8*, i8** %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi1)
  %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = icmp ult i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
  br i1 %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi2 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi2)
  %__hm_3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32 0, i32 2
  store i8* %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8** %__hm_3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi3 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call4__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi3)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi4 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call5__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi4)
  %cmp6__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = icmp ult i8* %call4__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, %call5__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
  br i1 %cmp6__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, label %if.then7, label %if.end27

if.then7:                                         ; preds = %if.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi5 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  %call8__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  %call9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi5, i32 %call8__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi) #15
  br i1 %call9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then7
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi6 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi7 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call11__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi7)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi8 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call12__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi8)
  %add.ptr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds i8, i8* %call12__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i64 -1
  %__hm_13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi9 = load i8*, i8** %__hm_13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi6, i8* %call11__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8* %add.ptr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi9)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi10 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  %call14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi10) #15
  store i32 %call14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  br label %return

if.end15:                                         ; preds = %if.then7
  %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32 0, i32 3
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi11 = load i32, i32* %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi11, 16
  %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = icmp ne i32 %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, 0
  br i1 %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi12 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  %call16__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi12) #15
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi13 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi13)
  %arrayidx__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds i8, i8* %call17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i64 -1
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi14 = load i8, i8* %arrayidx__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 1
  %call18__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 signext %call16__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8 signext %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi14) #15
  br i1 %call18__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, label %if.then19, label %if.end26

if.then19:                                        ; preds = %lor.lhs.false, %if.end15
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi15 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi16 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call20__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi16)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi17 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call21__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi17)
  %add.ptr22__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds i8, i8* %call21__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i64 -1
  %__hm_23__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi18 = load i8*, i8** %__hm_23__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi15, i8* %call20__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8* %add.ptr22__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi18)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi19 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  %call24__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi19) #15
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi20 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to %"class.std::__1::basic_streambuf"*
  %call25__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi20)
  store i8 %call24__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i8* %call25__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 1
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi21 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  store i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi21, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %call28__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  store i32 %call28__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then19, %if.then10
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi22 = load i32, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi, align 4
  ret i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi22
}

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i32, align 4
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i32, align 4
  %__ninp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i64, align 8
  %__nout__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i64, align 8
  %exn.slot__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i8*
  %ehselector.slot__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i32
  %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i64, align 8
  %__p__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i8*, align 8
  %ref.tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i8*, align 8
  %__p47__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = alloca i8*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  store i32 %__c, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 %call__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi) #15
  br i1 %call2__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, label %if.end54, label %if.then

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi1)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi2 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call4__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi2)
  %sub.ptr.lhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = ptrtoint i8* %call3__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i64
  %sub.ptr.rhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = ptrtoint i8* %call4__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i64
  %sub.ptr.sub__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = sub i64 %sub.ptr.lhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, %sub.ptr.rhs.cast__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
  store i64 %sub.ptr.sub__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i64* %__ninp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi3 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call5__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi3)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi4 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call6__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi4)
  %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = icmp eq i8* %call5__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, %call6__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
  br i1 %cmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, label %if.then7, label %if.end37

if.then7:                                         ; preds = %if.then
  %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 3
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi5 = load i32, i32* %__mode___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi5, 16
  %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = icmp ne i32 %and__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, 0
  br i1 %tobool__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then7
  %call9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  store i32 %call9__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi6 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call10__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi7 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call12__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi7)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %sub.ptr.lhs.cast13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = ptrtoint i8* %call10__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i64
  %sub.ptr.rhs.cast14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = ptrtoint i8* %call12__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i64
  %sub.ptr.sub15__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = sub i64 %sub.ptr.lhs.cast13__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, %sub.ptr.rhs.cast14__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
  store i64 %sub.ptr.sub15__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i64* %__nout__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi8 = load i8*, i8** %__hm___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi9 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi9)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont11
  %sub.ptr.lhs.cast18__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = ptrtoint i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi8 to i64
  %sub.ptr.rhs.cast19__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = ptrtoint i8* %call17__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i64
  %sub.ptr.sub20__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = sub i64 %sub.ptr.lhs.cast18__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, %sub.ptr.rhs.cast19__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
  store i64 %sub.ptr.sub20__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i64* %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8 signext 0)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %invoke.cont16
  %__str_22__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 1
  %__str_23__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 1
  %call24__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv(%"class.std::__1::basic_string"* %__str_23__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi) #15
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm(%"class.std::__1::basic_string"* %__str_22__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i64 %call24__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi)
          to label %invoke.cont25 unwind label %lpad

invoke.cont25:                                    ; preds = %invoke.cont21
  %__str_26__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 1
  %call27__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__str_26__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi) #15
  store i8* %call27__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8** %__p__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi10 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi11 = load i8*, i8** %__p__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi12 = load i8*, i8** %__p__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %__str_28__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 1
  %call29__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %__str_28__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi) #15
  %add.ptr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds i8, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi12, i64 %call29__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi10, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi11, i8* %add.ptr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont25
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi13 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi14 = load i64, i64* %__nout__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi13, i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi14)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont30
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi15 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call33__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi15)
          to label %invoke.cont32 unwind label %lpad

invoke.cont32:                                    ; preds = %invoke.cont31
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi16 = load i64, i64* %__hm__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %add.ptr34__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds i8, i8* %call33__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi16
  %__hm_35__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 2
  store i8* %add.ptr34__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8** %__hm_35__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont31, %invoke.cont30, %invoke.cont25, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont, %if.end
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi17 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi18 = extractvalue { i8*, i32 } %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi17, 0
  store i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi18, i8** %exn.slot__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi19 = extractvalue { i8*, i32 } %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi17, 1
  store i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi19, i32* %ehselector.slot__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = load i8*, i8** %exn.slot__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi20 = call i8* @__cxa_begin_catch(i8* %exn__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi) #15
  %call36__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  store i32 %call36__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  call void @__cxa_end_catch()
  br label %return

try.cont:                                         ; preds = %invoke.cont32
  br label %if.end37

if.end37:                                         ; preds = %try.cont, %if.then
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi21 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %call38__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi21)
  %add.ptr39__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds i8, i8* %call38__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i64 1
  store i8* %add.ptr39__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8** %ref.tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %__hm_40__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 2
  %call41__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call dereferenceable(8) i8** @_ZNSt3__1L3maxIPcEERKT_S4_S4_(i8** dereferenceable(8) %ref.tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8** dereferenceable(8) %__hm_40__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi)
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi22 = load i8*, i8** %call41__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %__hm_42__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 2
  store i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi22, i8** %__hm_42__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %__mode_43__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 3
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi23 = load i32, i32* %__mode_43__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %and44__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = and i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi23, 8
  %tobool45__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = icmp ne i32 %and44__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, 0
  br i1 %tobool45__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, label %if.then46, label %if.end52

if.then46:                                        ; preds = %if.end37
  %__str_48__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 1
  %call49__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__str_48__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi) #15
  store i8* %call49__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8** %__p47__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi24 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi25 = load i8*, i8** %__p47__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi26 = load i8*, i8** %__p47__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi27 = load i64, i64* %__ninp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  %add.ptr50__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds i8, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi26, i64 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi27
  %__hm_51__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32 0, i32 2
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi28 = load i8*, i8** %__hm_51__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi24, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi25, i8* %add.ptr50__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i8* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi28)
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end37
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi29 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to %"class.std::__1::basic_streambuf"*
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi30 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  %conv__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = trunc i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi30 to i8
  %call53__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi29, i8 signext %conv__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi)
  store i32 %call53__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  br label %return

if.end54:                                         ; preds = %entry
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi31 = load i32, i32* %__c.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  %call55__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi = call i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi31) #15
  store i32 %call55__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.end52, %catch, %if.then8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi32 = load i32, i32* %retval__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi, align 4
  ret i32 %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %this) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev = bitcast %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev to %"class.std::__1::__basic_string_common"*
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev, i32 0, i32 0
  invoke void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev) #15
  ret void

terminate.lpad:                                   ; preds = %entry
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev1 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev2 = extractvalue { i8*, i32 } %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev1, 0
  call void @__clang_call_terminate(i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev2) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = alloca %"class.std::__1::basic_string"*, align 8
  %__a__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = alloca [3 x i64]*, align 8
  %__i__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = alloca i32, align 4
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 8
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, i32 0, i32 0
  %__r__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = bitcast %union.anon* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw"*
  %__words__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw"* %__r__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, i32 0, i32 0
  store [3 x i64]* %__words__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, [3 x i64]** %__a__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 8
  store i32 0, i32* %__i__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv1 = load i32, i32* %__i__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 4
  %cmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = icmp ult i32 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv1, 3
  br i1 %cmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv2 = load [3 x i64]*, [3 x i64]** %__a__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv3 = load i32, i32* %__i__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 4
  %idxprom__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = zext i32 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv3 to i64
  %arrayidx__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = getelementptr inbounds [3 x i64], [3 x i64]* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv2, i64 0, i64 %idxprom__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv
  store i64 0, i64* %arrayidx__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv4 = load i32, i32* %__i__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 4
  %inc__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv = add i32 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv4, 1
  store i32 %inc__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, i32* %__i__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv, align 8
  %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv, align 8
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv to %"struct.std::__1::__compressed_pair_elem"*
  %call__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv) #15
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, align 8
  %__value___ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value___ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, i32 0, i32 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__str___ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev) #15
  %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev1 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to %"class.std::__1::basic_streambuf"*
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %tmp__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev1) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv, align 8
  %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv, align 8
  %__nout___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv, i32 0, i32 6
  %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv = load i8*, i8** %__nout___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv, align 8
  ret i8* %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %this, i64 %__off) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__14fposI11__mbstate_tEC1Ex = alloca %"class.std::__1::fpos"*, align 8
  %__off.addr__ZNSt3__14fposI11__mbstate_tEC1Ex = alloca i64, align 8
  store %"class.std::__1::fpos"* %this, %"class.std::__1::fpos"** %this.addr__ZNSt3__14fposI11__mbstate_tEC1Ex, align 8
  store i64 %__off, i64* %__off.addr__ZNSt3__14fposI11__mbstate_tEC1Ex, align 8
  %this1__ZNSt3__14fposI11__mbstate_tEC1Ex = load %"class.std::__1::fpos"*, %"class.std::__1::fpos"** %this.addr__ZNSt3__14fposI11__mbstate_tEC1Ex, align 8
  %tmp__ZNSt3__14fposI11__mbstate_tEC1Ex = load i64, i64* %__off.addr__ZNSt3__14fposI11__mbstate_tEC1Ex, align 8
  call void @_ZNSt3__14fposI11__mbstate_tEC2Ex(%"class.std::__1::fpos"* %this1__ZNSt3__14fposI11__mbstate_tEC1Ex, i64 %tmp__ZNSt3__14fposI11__mbstate_tEC1Ex)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv, align 8
  %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv, align 8
  %__ninp___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv, i32 0, i32 3
  %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv = load i8*, i8** %__ninp___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv, align 8
  ret i8* %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv, align 8
  %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv, align 8
  %__binp___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv, i32 0, i32 2
  %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv = load i8*, i8** %__binp___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv, align 8
  ret i8* %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv, align 8
  %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv, align 8
  %__bout___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv, i32 0, i32 5
  %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv = load i8*, i8** %__bout___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv, align 8
  ret i8* %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %this, i8* %__gbeg, i8* %__gnext, i8* %__gend) #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__gbeg.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = alloca i8*, align 8
  %__gnext.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = alloca i8*, align 8
  %__gend.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = alloca i8*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  store i8* %__gbeg, i8** %__gbeg.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  store i8* %__gnext, i8** %__gnext.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  store i8* %__gend, i8** %__gend.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = load i8*, i8** %__gbeg.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %__binp___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, i32 0, i32 2
  store i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, i8** %__binp___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_1 = load i8*, i8** %__gnext.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %__ninp___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, i32 0, i32 3
  store i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_1, i8** %__ninp___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_2 = load i8*, i8** %__gend.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  %__einp___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, i32 0, i32 4
  store i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_2, i8** %__einp___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_(%"class.std::__1::basic_streambuf"* %this, i8* %__pbeg, i8* %__pend) #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__pbeg.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = alloca i8*, align 8
  %__pend.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = alloca i8*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  store i8* %__pbeg, i8** %__pbeg.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  store i8* %__pend, i8** %__pend.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = load i8*, i8** %__pbeg.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, i32 0, i32 6
  store i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, i8** %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  %__bout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, i32 0, i32 5
  store i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, i8** %__bout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_1 = load i8*, i8** %__pend.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  %__eout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, i32 0, i32 7
  store i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_1, i8** %__eout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv, align 8
  %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv, align 8
  %__eout___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv, i32 0, i32 7
  %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv = load i8*, i8** %__eout___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv, align 8
  ret i8* %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi(%"class.std::__1::basic_streambuf"* %this, i32 %__n) #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = alloca i32, align 4
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, align 8
  store i32 %__n, i32* %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, align 4
  %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = load i32, i32* %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, align 4
  %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, i32 0, i32 6
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi1 = load i8*, i8** %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, align 8
  %idx.ext__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = sext i32 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi to i64
  %add.ptr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi = getelementptr inbounds i8, i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi1, i64 %idx.ext__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi
  store i8* %add.ptr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, i8** %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__14fposI11__mbstate_tEC2Ex(%"class.std::__1::fpos"* %this, i64 %__off) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__14fposI11__mbstate_tEC2Ex = alloca %"class.std::__1::fpos"*, align 8
  %__off.addr__ZNSt3__14fposI11__mbstate_tEC2Ex = alloca i64, align 8
  store %"class.std::__1::fpos"* %this, %"class.std::__1::fpos"** %this.addr__ZNSt3__14fposI11__mbstate_tEC2Ex, align 8
  store i64 %__off, i64* %__off.addr__ZNSt3__14fposI11__mbstate_tEC2Ex, align 8
  %this1__ZNSt3__14fposI11__mbstate_tEC2Ex = load %"class.std::__1::fpos"*, %"class.std::__1::fpos"** %this.addr__ZNSt3__14fposI11__mbstate_tEC2Ex, align 8
  %__st___ZNSt3__14fposI11__mbstate_tEC2Ex = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %this1__ZNSt3__14fposI11__mbstate_tEC2Ex, i32 0, i32 0
  %tmp__ZNSt3__14fposI11__mbstate_tEC2Ex = bitcast %union.__mbstate_t* %__st___ZNSt3__14fposI11__mbstate_tEC2Ex to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %tmp__ZNSt3__14fposI11__mbstate_tEC2Ex, i8 0, i64 128, i1 false)
  %__off___ZNSt3__14fposI11__mbstate_tEC2Ex = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %this1__ZNSt3__14fposI11__mbstate_tEC2Ex, i32 0, i32 1
  %tmp__ZNSt3__14fposI11__mbstate_tEC2Ex1 = load i64, i64* %__off.addr__ZNSt3__14fposI11__mbstate_tEC2Ex, align 8
  store i64 %tmp__ZNSt3__14fposI11__mbstate_tEC2Ex1, i64* %__off___ZNSt3__14fposI11__mbstate_tEC2Ex, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__14fposI11__mbstate_tEcvxEv(%"class.std::__1::fpos"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__14fposI11__mbstate_tEcvxEv = alloca %"class.std::__1::fpos"*, align 8
  store %"class.std::__1::fpos"* %this, %"class.std::__1::fpos"** %this.addr__ZNKSt3__14fposI11__mbstate_tEcvxEv, align 8
  %this1__ZNKSt3__14fposI11__mbstate_tEcvxEv = load %"class.std::__1::fpos"*, %"class.std::__1::fpos"** %this.addr__ZNKSt3__14fposI11__mbstate_tEcvxEv, align 8
  %__off___ZNKSt3__14fposI11__mbstate_tEcvxEv = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %this1__ZNKSt3__14fposI11__mbstate_tEcvxEv, i32 0, i32 1
  %tmp__ZNKSt3__14fposI11__mbstate_tEcvxEv = load i64, i64* %__off___ZNKSt3__14fposI11__mbstate_tEcvxEv, align 8
  ret i64 %tmp__ZNKSt3__14fposI11__mbstate_tEcvxEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv, align 8
  %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv, align 8
  %__einp___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv, i32 0, i32 4
  %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv = load i8*, i8** %__einp___ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv, align 8
  ret i8* %tmp__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %__c) #5 align 2 {
entry:
  %__c.addr__ZNSt3__111char_traitsIcE11to_int_typeEc = alloca i8, align 1
  store i8 %__c, i8* %__c.addr__ZNSt3__111char_traitsIcE11to_int_typeEc, align 1
  %tmp__ZNSt3__111char_traitsIcE11to_int_typeEc = load i8, i8* %__c.addr__ZNSt3__111char_traitsIcE11to_int_typeEc, align 1
  %conv__ZNSt3__111char_traitsIcE11to_int_typeEc = zext i8 %tmp__ZNSt3__111char_traitsIcE11to_int_typeEc to i32
  ret i32 %conv__ZNSt3__111char_traitsIcE11to_int_typeEc
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 %__c) #5 align 2 {
entry:
  %__c.addr__ZNSt3__111char_traitsIcE7not_eofEi = alloca i32, align 4
  store i32 %__c, i32* %__c.addr__ZNSt3__111char_traitsIcE7not_eofEi, align 4
  %tmp__ZNSt3__111char_traitsIcE7not_eofEi = load i32, i32* %__c.addr__ZNSt3__111char_traitsIcE7not_eofEi, align 4
  %call__ZNSt3__111char_traitsIcE7not_eofEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  %call1__ZNSt3__111char_traitsIcE7not_eofEi = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %tmp__ZNSt3__111char_traitsIcE7not_eofEi, i32 %call__ZNSt3__111char_traitsIcE7not_eofEi) #15
  br i1 %call1__ZNSt3__111char_traitsIcE7not_eofEi, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2__ZNSt3__111char_traitsIcE7not_eofEi = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #15
  %neg__ZNSt3__111char_traitsIcE7not_eofEi = xor i32 %call2__ZNSt3__111char_traitsIcE7not_eofEi, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZNSt3__111char_traitsIcE7not_eofEi1 = load i32, i32* %__c.addr__ZNSt3__111char_traitsIcE7not_eofEi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNSt3__111char_traitsIcE7not_eofEi = phi i32 [ %neg__ZNSt3__111char_traitsIcE7not_eofEi, %cond.true ], [ %tmp__ZNSt3__111char_traitsIcE7not_eofEi1, %cond.false ]
  ret i32 %cond__ZNSt3__111char_traitsIcE7not_eofEi
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 signext %__c1, i8 signext %__c2) #5 align 2 {
entry:
  %__c1.addr__ZNSt3__111char_traitsIcE2eqEcc = alloca i8, align 1
  %__c2.addr__ZNSt3__111char_traitsIcE2eqEcc = alloca i8, align 1
  store i8 %__c1, i8* %__c1.addr__ZNSt3__111char_traitsIcE2eqEcc, align 1
  store i8 %__c2, i8* %__c2.addr__ZNSt3__111char_traitsIcE2eqEcc, align 1
  %tmp__ZNSt3__111char_traitsIcE2eqEcc = load i8, i8* %__c1.addr__ZNSt3__111char_traitsIcE2eqEcc, align 1
  %conv__ZNSt3__111char_traitsIcE2eqEcc = sext i8 %tmp__ZNSt3__111char_traitsIcE2eqEcc to i32
  %tmp__ZNSt3__111char_traitsIcE2eqEcc1 = load i8, i8* %__c2.addr__ZNSt3__111char_traitsIcE2eqEcc, align 1
  %conv1__ZNSt3__111char_traitsIcE2eqEcc = sext i8 %tmp__ZNSt3__111char_traitsIcE2eqEcc1 to i32
  %cmp__ZNSt3__111char_traitsIcE2eqEcc = icmp eq i32 %conv__ZNSt3__111char_traitsIcE2eqEcc, %conv1__ZNSt3__111char_traitsIcE2eqEcc
  ret i1 %cmp__ZNSt3__111char_traitsIcE2eqEcc
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 %__c) #5 align 2 {
entry:
  %__c.addr__ZNSt3__111char_traitsIcE12to_char_typeEi = alloca i32, align 4
  store i32 %__c, i32* %__c.addr__ZNSt3__111char_traitsIcE12to_char_typeEi, align 4
  %tmp__ZNSt3__111char_traitsIcE12to_char_typeEi = load i32, i32* %__c.addr__ZNSt3__111char_traitsIcE12to_char_typeEi, align 4
  %conv__ZNSt3__111char_traitsIcE12to_char_typeEi = trunc i32 %tmp__ZNSt3__111char_traitsIcE12to_char_typeEi to i8
  ret i8 %conv__ZNSt3__111char_traitsIcE12to_char_typeEi
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm(%"class.std::__1::basic_string"* %this, i64 %__n) #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm = load i64, i64* %__n.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm, i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm, i8 signext 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv) #15
  br i1 %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv = phi i64 [ %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv, %cond.true ], [ 23, %cond.false ]
  %sub__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv = sub i64 %cond__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv, 1
  ret i64 %sub__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv) #15
  br i1 %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv = phi i64 [ %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv, %cond.true ], [ %call3__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv, %cond.false ]
  ret i64 %cond__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl(%"class.std::__1::basic_streambuf"* %this, i64 %__n) #5 align 2 {
entry:
  %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, align 8
  %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, align 8
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl = load i64, i64* %__n.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, align 8
  %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, i32 0, i32 6
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl1 = load i8*, i8** %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, align 8
  %add.ptr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl = getelementptr inbounds i8, i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl1, i64 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl
  store i8* %add.ptr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, i8** %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal dereferenceable(8) i8** @_ZNSt3__1L3maxIPcEERKT_S4_S4_(i8** dereferenceable(8) %__a, i8** dereferenceable(8) %__b) #2 {
entry:
  %__a.addr__ZNSt3__1L3maxIPcEERKT_S4_S4_ = alloca i8**, align 8
  %__b.addr__ZNSt3__1L3maxIPcEERKT_S4_S4_ = alloca i8**, align 8
  %agg.tmp__ZNSt3__1L3maxIPcEERKT_S4_S4_ = alloca %"struct.std::__1::__less", align 1
  store i8** %__a, i8*** %__a.addr__ZNSt3__1L3maxIPcEERKT_S4_S4_, align 8
  store i8** %__b, i8*** %__b.addr__ZNSt3__1L3maxIPcEERKT_S4_S4_, align 8
  %tmp__ZNSt3__1L3maxIPcEERKT_S4_S4_ = load i8**, i8*** %__a.addr__ZNSt3__1L3maxIPcEERKT_S4_S4_, align 8
  %tmp__ZNSt3__1L3maxIPcEERKT_S4_S4_1 = load i8**, i8*** %__b.addr__ZNSt3__1L3maxIPcEERKT_S4_S4_, align 8
  %call__ZNSt3__1L3maxIPcEERKT_S4_S4_ = call dereferenceable(8) i8** @_ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_(i8** dereferenceable(8) %tmp__ZNSt3__1L3maxIPcEERKT_S4_S4_, i8** dereferenceable(8) %tmp__ZNSt3__1L3maxIPcEERKT_S4_S4_1)
  ret i8** %call__ZNSt3__1L3maxIPcEERKT_S4_S4_
}

; Function Attrs: noinline optnone ssp uwtable
define internal i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc(%"class.std::__1::basic_streambuf"* %this, i8 signext %__c) #2 align 2 {
entry:
  %retval__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = alloca i32, align 4
  %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__c.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = alloca i8, align 1
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  store i8 %__c, i8* %__c.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 1
  %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i32 0, i32 6
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = load i8*, i8** %__nout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  %__eout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i32 0, i32 7
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc1 = load i8*, i8** %__eout___ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  %cmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = icmp eq i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc1
  br i1 %cmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc2 = load i8, i8* %__c.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 1
  %call__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc2) #15
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc3 = bitcast %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc to i32 (%"class.std::__1::basic_streambuf"*, i32)***
  %vtable__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = load i32 (%"class.std::__1::basic_streambuf"*, i32)**, i32 (%"class.std::__1::basic_streambuf"*, i32)*** %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc3, align 8
  %vfn__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = getelementptr inbounds i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vtable__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i64 13
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc4 = load i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vfn__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  %call2__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = call i32 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc4(%"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i32 %call__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc)
  store i32 %call2__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i32* %retval__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 4
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc5 = load i8, i8* %__c.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 1
  %__nout_3__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i32 0, i32 6
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc6 = load i8*, i8** %__nout_3__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  %incdec.ptr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = getelementptr inbounds i8, i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc6, i32 1
  store i8* %incdec.ptr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i8** %__nout_3__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 8
  store i8 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc5, i8* %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc6, align 1
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc7 = load i8, i8* %__c.addr__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 1
  %call4__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc = call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc7) #15
  store i32 %call4__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, i32* %retval__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc8 = load i32, i32* %retval__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc, align 4
  ret i32 %tmp__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc8
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv) #15
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, i32 0, i32 0
  %__l__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = bitcast %union.anon* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__cap___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, i32 0, i32 0
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv1 = load i64, i64* %__cap___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv, align 8
  %and__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv = and i64 %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv1, -2
  ret i64 %and__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv) #15
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, i32 0, i32 0
  %__l__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = bitcast %union.anon* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__size___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, i32 0, i32 1
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv1 = load i64, i64* %__size___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv, align 8
  ret i64 %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv) #15
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, i32 0, i32 0
  %__s__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = bitcast %union.anon* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, i32 0, i32 0
  %__size___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = bitcast %union.anon.0* %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv1 to i8*
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv2 = load i8, i8* %__size___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, align 8
  %conv__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = zext i8 %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv2 to i32
  %shr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = ashr i32 %conv__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv, 1
  %conv2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv = sext i32 %shr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv to i64
  ret i64 %conv2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
}

; Function Attrs: noinline optnone ssp uwtable
define internal dereferenceable(8) i8** @_ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_(i8** dereferenceable(8) %__a, i8** dereferenceable(8) %__b) #2 {
entry:
  %__comp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_ = alloca %"struct.std::__1::__less", align 1
  %__a.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_ = alloca i8**, align 8
  %__b.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_ = alloca i8**, align 8
  store i8** %__a, i8*** %__a.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, align 8
  store i8** %__b, i8*** %__b.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, align 8
  %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_ = load i8**, i8*** %__a.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, align 8
  %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_1 = load i8**, i8*** %__b.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, align 8
  %call__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_ = call zeroext i1 @_ZNKSt3__16__lessIPcS1_EclERKS1_S4_(%"struct.std::__1::__less"* %__comp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, i8** dereferenceable(8) %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, i8** dereferenceable(8) %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_1)
  br i1 %call__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_2 = load i8**, i8*** %__b.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_3 = load i8**, i8*** %__a.addr__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_ = phi i8** [ %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_2, %cond.true ], [ %tmp__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_3, %cond.false ]
  ret i8** %cond-lvalue__ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__16__lessIPcS1_EclERKS1_S4_(%"struct.std::__1::__less"* %this, i8** dereferenceable(8) %__x, i8** dereferenceable(8) %__y) #5 align 2 {
entry:
  %this.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_ = alloca %"struct.std::__1::__less"*, align 8
  %__x.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_ = alloca i8**, align 8
  %__y.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_ = alloca i8**, align 8
  store %"struct.std::__1::__less"* %this, %"struct.std::__1::__less"** %this.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  store i8** %__x, i8*** %__x.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  store i8** %__y, i8*** %__y.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  %this1__ZNKSt3__16__lessIPcS1_EclERKS1_S4_ = load %"struct.std::__1::__less"*, %"struct.std::__1::__less"** %this.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_ = load i8**, i8*** %__x.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_1 = load i8*, i8** %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_2 = load i8**, i8*** %__y.addr__ZNKSt3__16__lessIPcS1_EclERKS1_S4_, align 8
  %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_3 = load i8*, i8** %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_2, align 8
  %cmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_ = icmp ult i8* %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_1, %tmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_3
  ret i1 %cmp__ZNKSt3__16__lessIPcS1_EclERKS1_S4_
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %value, %"class.std::__1::basic_ostream"* %os) #2 {
entry:
  %value.addr__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca i32*, align 8
  %os.addr__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca %"class.std::__1::basic_ostream"*, align 8
  store i32* %value, i32** %value.addr__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = load i32*, i32** %value.addr__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  call void @_ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %tmp__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, %"class.std::__1::basic_ostream"* %tmp__ZN7testing8internal14UniversalPrintIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %value, %"class.std::__1::basic_ostream"* %os) #2 align 2 {
entry:
  %value.addr__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca i32*, align 8
  %os.addr__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca %"class.std::__1::basic_ostream"*, align 8
  store i32* %value, i32** %value.addr__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = load i32*, i32** %value.addr__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  call void @_ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %tmp__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, %"class.std::__1::basic_ostream"* %tmp__ZN7testing8internal16UniversalPrinterIiE5PrintERKiPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i32* dereferenceable(4) %value, %"class.std::__1::basic_ostream"* %os) #2 {
entry:
  %value.addr__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca i32*, align 8
  %os.addr__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca %"class.std::__1::basic_ostream"*, align 8
  %agg.tmp__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = alloca %"struct.testing::internal::WrapPrinterType", align 1
  store i32* %value, i32** %value.addr__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE = load i32*, i32** %value.addr__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, align 8
  call void @_ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE(i32* dereferenceable(4) %tmp__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE, %"class.std::__1::basic_ostream"* %tmp__ZN7testing8internal7PrintToIiEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE(i32* dereferenceable(4) %value, %"class.std::__1::basic_ostream"* %os) #2 {
entry:
  %tmp__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE = alloca %"struct.testing::internal::WrapPrinterType", align 1
  %value.addr__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE = alloca i32*, align 8
  %os.addr__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE = alloca %"class.std::__1::basic_ostream"*, align 8
  store i32* %value, i32** %value.addr__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE1 = load i32*, i32** %value.addr__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE, align 8
  %tmp__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE2 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE, align 8
  call void @_ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE(i32* dereferenceable(4) %tmp__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE1, %"class.std::__1::basic_ostream"* %tmp__ZN7testing8internal14DefaultPrintToIiEEvNS0_15WrapPrinterTypeILNS0_18DefaultPrinterTypeE3EEERKT_PNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEE2)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE(i32* dereferenceable(4) %value, %"class.std::__1::basic_ostream"* %os) #2 {
entry:
  %value.addr__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE = alloca i32*, align 8
  %os.addr__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE = alloca %"class.std::__1::basic_ostream"*, align 8
  store i32* %value, i32** %value.addr__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE, align 8
  %tmp__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE, align 8
  %tmp__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE1 = load i32*, i32** %value.addr__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE, align 8
  %tmp__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE2 = load i32, i32* %tmp__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE1, align 4
  %call__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %tmp__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE, i32 %tmp__ZN16testing_internal26DefaultPrintNonContainerToIiEEvRKT_PNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEE2)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this) #2 align 2 {
entry:
  %this.addr__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %ref.tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::allocator", align 1
  %undef.agg.tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::allocator", align 1
  %ref.tmp13__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::allocator", align 1
  %undef.agg.tmp15__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::allocator", align 1
  %ref.tmp18__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::allocator", align 1
  %undef.agg.tmp20__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = alloca %"class.std::__1::allocator", align 1
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %__mode___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 3
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = load i32, i32* %__mode___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %and__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = and i32 %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, 16
  %tobool__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = icmp ne i32 %and__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, 0
  br i1 %tobool__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__hm___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 2
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv1 = load i8*, i8** %__hm___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv2 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv to %"class.std::__1::basic_streambuf"*
  %call__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv2)
  %cmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = icmp ult i8* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv1, %call__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
  br i1 %cmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv3 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv to %"class.std::__1::basic_streambuf"*
  %call3__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv3)
  %__hm_4__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 2
  store i8* %call3__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i8** %__hm_4__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv4 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv to %"class.std::__1::basic_streambuf"*
  %call5__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv4)
  %__hm_6__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 2
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv5 = load i8*, i8** %__hm_6__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %__str___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %__str___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv) #15
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %agg.result, i8* %call5__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i8* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv5, %"class.std::__1::allocator"* dereferenceable(1) %ref.tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv)
  br label %return

if.else:                                          ; preds = %entry
  %__mode_7__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 3
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv6 = load i32, i32* %__mode_7__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, align 8
  %and8__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = and i32 %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv6, 8
  %tobool9__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = icmp ne i32 %and8__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, 0
  br i1 %tobool9__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.else
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv7 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv to %"class.std::__1::basic_streambuf"*
  %call11__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv7)
  %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv8 = bitcast %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv to %"class.std::__1::basic_streambuf"*
  %call12__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %tmp__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv8)
  %__str_14__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %__str_14__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv) #15
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %agg.result, i8* %call11__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i8* %call12__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, %"class.std::__1::allocator"* dereferenceable(1) %ref.tmp13__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv)
  br label %return

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %__str_19__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv, i32 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %__str_19__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv) #15
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_(%"class.std::__1::basic_string"* %agg.result, %"class.std::__1::allocator"* dereferenceable(1) %ref.tmp18__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv) #15
  br label %return

return:                                           ; preds = %if.end17, %if.then10, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %retval__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv = alloca %"class.std::__1::allocator", align 1
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %this, i8* %__first, i8* %__last, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_ = alloca %"class.std::__1::basic_string"*, align 8
  %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_ = alloca i8*, align 8
  %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_ = alloca i8*, align 8
  %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_ = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  store i8* %__first, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  store i8* %__last, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_ = load i8*, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_1 = load i8*, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_2 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_1, %"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_(%"class.std::__1::basic_string"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_ = alloca %"class.std::__1::basic_string"*, align 8
  %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_ = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_ = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_, %"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, align 8
  %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, i32 0, i32 0
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %__r___ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv) #15
  ret %"class.std::__1::allocator"* %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv, align 8
  %this1__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv, align 8
  %tmp__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv to %"struct.std::__1::__compressed_pair_elem.1"*
  %call__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %tmp__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv) #15
  ret %"class.std::__1::allocator"* %call__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv, align 8
  %this1__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv, align 8
  %tmp__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %tmp__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %this, i8* %__first, i8* %__last, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = alloca %"class.std::__1::basic_string"*, align 8
  %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = alloca i8*, align 8
  %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = alloca i8*, align 8
  %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = alloca %"struct.std::__1::__second_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  store i8* %__first, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  store i8* %__last, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = bitcast %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ to %"class.std::__1::__basic_string_common"*
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, i32 0, i32 0
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, %"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_1)
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_2 = load i8*, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_3 = load i8*, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_2, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_3)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__t) unnamed_addr #2 align 2 {
entry:
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_ = alloca %"struct.std::__1::__second_tag", align 1
  %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_ = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_ = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_, align 8
  %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_ = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_, align 8
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_, %"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_(%"class.std::__1::basic_string"* %this, i8* %__first, i8* %__last) #2 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca %"class.std::__1::basic_string"*, align 8
  %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca i8*, align 8
  %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca i8*, align 8
  %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca i64, align 8
  %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca i8*, align 8
  %__cap__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca i64, align 8
  %ref.tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  store i8* %__first, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  store i8* %__last, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = load i8*, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_1 = load i8*, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = call i64 @_ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_(i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_1)
  store i64 %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i64* %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_2 = load i64, i64* %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %call2__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_) #15
  %cmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = icmp ugt i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_2, %call2__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_
  br i1 %cmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_3 = bitcast %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_3) #18
  unreachable

if.end:                                           ; preds = %entry
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_4 = load i64, i64* %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %cmp3__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = icmp ult i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_4, 23
  br i1 %cmp3__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_5 = load i64, i64* %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_5) #15
  %call5__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = call i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_) #15
  store i8* %call5__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_6 = load i64, i64* %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %call6__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_6) #15
  store i64 %call6__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i64* %__cap__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %call7__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_7 = load i64, i64* %__cap__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %add__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = add i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_7, 1
  %call8__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = call i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(%"class.std::__1::allocator"* dereferenceable(1) %call7__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i64 %add__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_)
  store i8* %call8__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_8 = load i8*, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_8) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_9 = load i64, i64* %__cap__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %add9__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = add i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_9, 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i64 %add9__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_10 = load i64, i64* %__sz__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_10) #15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_11 = load i8*, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_12 = load i8*, i8** %__last.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %cmp11__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = icmp ne i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_11, %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_12
  br i1 %cmp11__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_13 = load i8*, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_14 = load i8*, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_13, i8* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_14) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_15 = load i8*, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %incdec.ptr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = getelementptr inbounds i8, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_15, i32 1
  store i8* %incdec.ptr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i8** %__first.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_16 = load i8*, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  %incdec.ptr12__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ = getelementptr inbounds i8, i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_16, i32 1
  store i8* %incdec.ptr12__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_17 = load i8*, i8** %__p__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 8
  store i8 0, i8* %ref.tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_, align 1
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_17, i8* dereferenceable(1) %ref.tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__t) unnamed_addr #2 align 2 {
entry:
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ = alloca %"struct.std::__1::__second_tag", align 1
  %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_, align 8
  %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_, align 8
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_1 = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ to %"struct.std::__1::__compressed_pair_elem"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_1)
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_2 = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ to %"struct.std::__1::__compressed_pair_elem.1"*
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_3 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_, align 8
  %call__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_ = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_3) #15
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.1"* %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_2, %"class.std::__1::allocator"* dereferenceable(1) %call__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator"* dereferenceable(1) %__t) #5 {
entry:
  %__t.addr__ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr__ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE, align 8
  %tmp__ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr__ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE, align 8
  ret %"class.std::__1::allocator"* %tmp__ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.1"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__u) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_ = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  %__u.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_ = alloca %"class.std::__1::allocator"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_, align 8
  store %"class.std::__1::allocator"* %__u, %"class.std::__1::allocator"** %__u.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_ = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_, align 8
  %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_ = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_ to %"class.std::__1::allocator"*
  %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__u.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_, align 8
  %call__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_ = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_1) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal i64 @_ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #2 {
entry:
  %__first.addr__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_ = alloca i8*, align 8
  %__last.addr__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_ = alloca i8*, align 8
  %agg.tmp__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_ = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  store i8* %__first, i8** %__first.addr__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_, align 8
  store i8* %__last, i8** %__last.addr__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_, align 8
  %tmp__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_ = load i8*, i8** %__first.addr__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_, align 8
  %tmp__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_1 = load i8*, i8** %__last.addr__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_, align 8
  %call__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_ = call i64 @_ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE(i8* %tmp__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_, i8* %tmp__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_1)
  ret i64 %call__ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = alloca %"class.std::__1::basic_string"*, align 8
  %__m__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, align 8
  %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, align 8
  %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this1__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv) #15
  %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %call__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv) #15
  store i64 %call2__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, i64* %__m__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, align 8
  %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = load i64, i64* %__m__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, align 8
  %sub__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv = sub i64 %tmp__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv, 16
  ret i64 %sub__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) #12

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %this, i64 %__s) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, align 8
  store i64 %__s, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = load i64, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, align 8
  %shl__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = shl i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, 1
  %conv__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = trunc i64 %shl__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm to i8
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, i32 0, i32 0
  %__s2__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = bitcast %union.anon* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm2 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s2__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, i32 0, i32 0
  %__size___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm = bitcast %union.anon.0* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm2 to i8*
  store i8 %conv__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, i8* %__size___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, align 8
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i32 0, i32 0
  %__s__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = bitcast %union.anon* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %__data___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i32 0, i32 1
  %arrayidx__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = getelementptr inbounds [23 x i8], [23 x i8]* %__data___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv, i64 0, i64 0
  %call2__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv = call i8* @_ZNSt3__114pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %arrayidx__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv) #15
  ret i8* %call2__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %__s) #5 align 2 {
entry:
  %retval__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = alloca i64, align 8
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = alloca i64, align 8
  %__guess__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = alloca i64, align 8
  store i64 %__s, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = load i64, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  %cmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = icmp ult i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, 23
  br i1 %cmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 22, i64* %retval__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm1 = load i64, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  %add__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = add i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm1, 1
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %add__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm) #15
  %sub__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = sub i64 %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, 1
  store i64 %sub__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, i64* %__guess__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm2 = load i64, i64* %__guess__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  %cmp1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = icmp eq i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm2, 23
  br i1 %cmp1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm3 = load i64, i64* %__guess__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  %inc__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm = add i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm3, 1
  store i64 %inc__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, i64* %__guess__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm4 = load i64, i64* %__guess__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  store i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm4, i64* %retval__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm5 = load i64, i64* %retval__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm, align 8
  ret i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm5
}

; Function Attrs: noinline optnone ssp uwtable
define internal i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(%"class.std::__1::allocator"* dereferenceable(1) %__a, i64 %__n) #2 align 2 {
entry:
  %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m = alloca %"class.std::__1::allocator"*, align 8
  %__n.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m = alloca i64, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m, align 8
  %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m, align 8
  %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m1 = load i64, i64* %__n.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m, align 8
  %call__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m = call i8* @_ZNSt3__19allocatorIcE8allocateEmPKv(%"class.std::__1::allocator"* %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m, i64 %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m1, i8* null)
  ret i8* %call__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, align 8
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv) #15
  ret %"class.std::__1::allocator"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %this, i8* %__p) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = alloca %"class.std::__1::basic_string"*, align 8
  %__p.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, align 8
  store i8* %__p, i8** %__p.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = load i8*, i8** %__p.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, align 8
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, i32 0, i32 0
  %__l__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = bitcast %union.anon* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__data___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, i32 0, i32 2
  store i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, i8** %__data___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %this, i64 %__s) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, align 8
  store i64 %__s, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = load i64, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, align 8
  %or__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = or i64 1, %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, i32 0, i32 0
  %__l__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = bitcast %union.anon* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__cap___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, i32 0, i32 0
  store i64 %or__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, i64* %__cap___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %this, i64 %__s) #5 align 2 {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, align 8
  store i64 %__s, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = load i64, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, align 8
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, i32 0, i32 0
  %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm) #15
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, i32 0, i32 0
  %__l__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = bitcast %union.anon* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__size___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, i32 0, i32 1
  store i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, i64* %__size___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %__c1, i8* dereferenceable(1) %__c2) #5 align 2 {
entry:
  %__c1.addr__ZNSt3__111char_traitsIcE6assignERcRKc = alloca i8*, align 8
  %__c2.addr__ZNSt3__111char_traitsIcE6assignERcRKc = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr__ZNSt3__111char_traitsIcE6assignERcRKc, align 8
  store i8* %__c2, i8** %__c2.addr__ZNSt3__111char_traitsIcE6assignERcRKc, align 8
  %tmp__ZNSt3__111char_traitsIcE6assignERcRKc = load i8*, i8** %__c2.addr__ZNSt3__111char_traitsIcE6assignERcRKc, align 8
  %tmp__ZNSt3__111char_traitsIcE6assignERcRKc1 = load i8, i8* %tmp__ZNSt3__111char_traitsIcE6assignERcRKc, align 1
  %tmp__ZNSt3__111char_traitsIcE6assignERcRKc2 = load i8*, i8** %__c1.addr__ZNSt3__111char_traitsIcE6assignERcRKc, align 8
  store i8 %tmp__ZNSt3__111char_traitsIcE6assignERcRKc1, i8* %tmp__ZNSt3__111char_traitsIcE6assignERcRKc2, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE(i8* %__first, i8* %__last) #5 {
entry:
  %tmp__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %__first.addr__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE = alloca i8*, align 8
  %__last.addr__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE, align 8
  store i8* %__last, i8** %__last.addr__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE, align 8
  %tmp__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE1 = load i8*, i8** %__last.addr__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE, align 8
  %tmp__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE2 = load i8*, i8** %__first.addr__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE, align 8
  %sub.ptr.lhs.cast__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE = ptrtoint i8* %tmp__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE1 to i64
  %sub.ptr.rhs.cast__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE = ptrtoint i8* %tmp__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE2 to i64
  %sub.ptr.sub__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE = sub i64 %sub.ptr.lhs.cast__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE, %sub.ptr.rhs.cast__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
  ret i64 %sub.ptr.sub__ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %__a) #5 align 2 {
entry:
  %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ = alloca %"struct.std::__1::__has_max_size", align 1
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_, align 8
  %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ = bitcast %"struct.std::__1::__has_max_size"* %ref.tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ to %"struct.std::__1::integral_constant"*
  %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_, align 8
  %call__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_ = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_1) #15
  ret i64 %call__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %__a) #5 align 2 {
entry:
  %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_ = alloca %"struct.std::__1::integral_constant", align 1
  %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_ = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_, align 8
  %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_, align 8
  %call__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_ = call i64 @_ZNKSt3__19allocatorIcE8max_sizeEv(%"class.std::__1::allocator"* %tmp__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_1) #15
  ret i64 %call__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__19allocatorIcE8max_sizeEv(%"class.std::__1::allocator"* %this) #5 align 2 {
entry:
  %this.addr__ZNKSt3__19allocatorIcE8max_sizeEv = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr__ZNKSt3__19allocatorIcE8max_sizeEv, align 8
  %this1__ZNKSt3__19allocatorIcE8max_sizeEv = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr__ZNKSt3__19allocatorIcE8max_sizeEv, align 8
  ret i64 -1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__114pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %__r) #5 align 2 {
entry:
  %__r.addr__ZNSt3__114pointer_traitsIPcE10pointer_toERc = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr__ZNSt3__114pointer_traitsIPcE10pointer_toERc, align 8
  %tmp__ZNSt3__114pointer_traitsIPcE10pointer_toERc = load i8*, i8** %__r.addr__ZNSt3__114pointer_traitsIPcE10pointer_toERc, align 8
  %call__ZNSt3__114pointer_traitsIPcE10pointer_toERc = call i8* @_ZNSt3__1L9addressofIcEEPT_RS1_(i8* dereferenceable(1) %tmp__ZNSt3__114pointer_traitsIPcE10pointer_toERc) #15
  ret i8* %call__ZNSt3__114pointer_traitsIPcE10pointer_toERc
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L9addressofIcEEPT_RS1_(i8* dereferenceable(1) %__x) #5 {
entry:
  %__x.addr__ZNSt3__1L9addressofIcEEPT_RS1_ = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr__ZNSt3__1L9addressofIcEEPT_RS1_, align 8
  %tmp__ZNSt3__1L9addressofIcEEPT_RS1_ = load i8*, i8** %__x.addr__ZNSt3__1L9addressofIcEEPT_RS1_, align 8
  ret i8* %tmp__ZNSt3__1L9addressofIcEEPT_RS1_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %__s) #5 align 2 {
entry:
  %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm = alloca i64, align 8
  store i64 %__s, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm = load i64, i64* %__s.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm, align 8
  %add__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm = add i64 %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm, 15
  %and__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm = and i64 %add__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm, -16
  ret i64 %and__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
}

; Function Attrs: noinline optnone ssp uwtable
define internal i8* @_ZNSt3__19allocatorIcE8allocateEmPKv(%"class.std::__1::allocator"* %this, i64 %__n, i8* %0) #2 align 2 {
entry:
  %this.addr__ZNSt3__19allocatorIcE8allocateEmPKv = alloca %"class.std::__1::allocator"*, align 8
  %__n.addr__ZNSt3__19allocatorIcE8allocateEmPKv = alloca i64, align 8
  %.addr__ZNSt3__19allocatorIcE8allocateEmPKv = alloca i8*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr__ZNSt3__19allocatorIcE8allocateEmPKv, align 8
  store i64 %__n, i64* %__n.addr__ZNSt3__19allocatorIcE8allocateEmPKv, align 8
  store i8* %0, i8** %.addr__ZNSt3__19allocatorIcE8allocateEmPKv, align 8
  %this1__ZNSt3__19allocatorIcE8allocateEmPKv = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr__ZNSt3__19allocatorIcE8allocateEmPKv, align 8
  %tmp__ZNSt3__19allocatorIcE8allocateEmPKv = load i64, i64* %__n.addr__ZNSt3__19allocatorIcE8allocateEmPKv, align 8
  %call__ZNSt3__19allocatorIcE8allocateEmPKv = call i64 @_ZNKSt3__19allocatorIcE8max_sizeEv(%"class.std::__1::allocator"* %this1__ZNSt3__19allocatorIcE8allocateEmPKv) #15
  %cmp__ZNSt3__19allocatorIcE8allocateEmPKv = icmp ugt i64 %tmp__ZNSt3__19allocatorIcE8allocateEmPKv, %call__ZNSt3__19allocatorIcE8allocateEmPKv
  br i1 %cmp__ZNSt3__19allocatorIcE8allocateEmPKv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__1L20__throw_length_errorEPKc(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i32 0, i32 0)) #18
  unreachable

if.end:                                           ; preds = %entry
  %tmp__ZNSt3__19allocatorIcE8allocateEmPKv1 = load i64, i64* %__n.addr__ZNSt3__19allocatorIcE8allocateEmPKv, align 8
  %mul__ZNSt3__19allocatorIcE8allocateEmPKv = mul i64 %tmp__ZNSt3__19allocatorIcE8allocateEmPKv1, 1
  %call2__ZNSt3__19allocatorIcE8allocateEmPKv = call i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %mul__ZNSt3__19allocatorIcE8allocateEmPKv, i64 1)
  ret i8* %call2__ZNSt3__19allocatorIcE8allocateEmPKv
}

; Function Attrs: noinline noreturn optnone ssp uwtable
define internal void @_ZNSt3__1L20__throw_length_errorEPKc(i8* %__msg) #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__msg.addr__ZNSt3__1L20__throw_length_errorEPKc = alloca i8*, align 8
  %exn.slot__ZNSt3__1L20__throw_length_errorEPKc = alloca i8*
  %ehselector.slot__ZNSt3__1L20__throw_length_errorEPKc = alloca i32
  store i8* %__msg, i8** %__msg.addr__ZNSt3__1L20__throw_length_errorEPKc, align 8
  %exception__ZNSt3__1L20__throw_length_errorEPKc = call i8* @__cxa_allocate_exception(i64 16) #15
  %tmp__ZNSt3__1L20__throw_length_errorEPKc = bitcast i8* %exception__ZNSt3__1L20__throw_length_errorEPKc to %"class.std::length_error"*
  %tmp__ZNSt3__1L20__throw_length_errorEPKc1 = load i8*, i8** %__msg.addr__ZNSt3__1L20__throw_length_errorEPKc, align 8
  invoke void @_ZNSt12length_errorC1EPKc(%"class.std::length_error"* %tmp__ZNSt3__1L20__throw_length_errorEPKc, i8* %tmp__ZNSt3__1L20__throw_length_errorEPKc1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(i8* %exception__ZNSt3__1L20__throw_length_errorEPKc, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #18
  unreachable

lpad:                                             ; preds = %entry
  %tmp__ZNSt3__1L20__throw_length_errorEPKc2 = landingpad { i8*, i32 }
          cleanup
  %tmp__ZNSt3__1L20__throw_length_errorEPKc3 = extractvalue { i8*, i32 } %tmp__ZNSt3__1L20__throw_length_errorEPKc2, 0
  store i8* %tmp__ZNSt3__1L20__throw_length_errorEPKc3, i8** %exn.slot__ZNSt3__1L20__throw_length_errorEPKc, align 8
  %tmp__ZNSt3__1L20__throw_length_errorEPKc4 = extractvalue { i8*, i32 } %tmp__ZNSt3__1L20__throw_length_errorEPKc2, 1
  store i32 %tmp__ZNSt3__1L20__throw_length_errorEPKc4, i32* %ehselector.slot__ZNSt3__1L20__throw_length_errorEPKc, align 4
  call void @__cxa_free_exception(i8* %exception__ZNSt3__1L20__throw_length_errorEPKc) #15
  br label %eh.resume

return:                                           ; No predecessors!
  ret void

eh.resume:                                        ; preds = %lpad
  %exn__ZNSt3__1L20__throw_length_errorEPKc = load i8*, i8** %exn.slot__ZNSt3__1L20__throw_length_errorEPKc, align 8
  %sel__ZNSt3__1L20__throw_length_errorEPKc = load i32, i32* %ehselector.slot__ZNSt3__1L20__throw_length_errorEPKc, align 4
  %lpad.val__ZNSt3__1L20__throw_length_errorEPKc = insertvalue { i8*, i32 } undef, i8* %exn__ZNSt3__1L20__throw_length_errorEPKc, 0
  %lpad.val1__ZNSt3__1L20__throw_length_errorEPKc = insertvalue { i8*, i32 } %lpad.val__ZNSt3__1L20__throw_length_errorEPKc, i32 %sel__ZNSt3__1L20__throw_length_errorEPKc, 1
  resume { i8*, i32 } %lpad.val1__ZNSt3__1L20__throw_length_errorEPKc
}

; Function Attrs: noinline optnone ssp uwtable
define internal i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %__size, i64 %__align) #2 {
entry:
  %__size.addr__ZNSt3__1L17__libcpp_allocateEmm = alloca i64, align 8
  %__align.addr__ZNSt3__1L17__libcpp_allocateEmm = alloca i64, align 8
  store i64 %__size, i64* %__size.addr__ZNSt3__1L17__libcpp_allocateEmm, align 8
  store i64 %__align, i64* %__align.addr__ZNSt3__1L17__libcpp_allocateEmm, align 8
  %tmp__ZNSt3__1L17__libcpp_allocateEmm = load i64, i64* %__size.addr__ZNSt3__1L17__libcpp_allocateEmm, align 8
  %call__ZNSt3__1L17__libcpp_allocateEmm = call i8* @_Znwm(i64 %tmp__ZNSt3__1L17__libcpp_allocateEmm) #14
  ret i8* %call__ZNSt3__1L17__libcpp_allocateEmm
}

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt12length_errorC1EPKc(%"class.std::length_error"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt12length_errorC1EPKc = alloca %"class.std::length_error"*, align 8
  %__s.addr__ZNSt12length_errorC1EPKc = alloca i8*, align 8
  store %"class.std::length_error"* %this, %"class.std::length_error"** %this.addr__ZNSt12length_errorC1EPKc, align 8
  store i8* %__s, i8** %__s.addr__ZNSt12length_errorC1EPKc, align 8
  %this1__ZNSt12length_errorC1EPKc = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr__ZNSt12length_errorC1EPKc, align 8
  %tmp__ZNSt12length_errorC1EPKc = load i8*, i8** %__s.addr__ZNSt12length_errorC1EPKc, align 8
  call void @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* %this1__ZNSt12length_errorC1EPKc, i8* %tmp__ZNSt12length_errorC1EPKc)
  ret void
}

declare void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(%"class.std::length_error"*) unnamed_addr #6

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr__ZNSt12length_errorC2EPKc = alloca %"class.std::length_error"*, align 8
  %__s.addr__ZNSt12length_errorC2EPKc = alloca i8*, align 8
  store %"class.std::length_error"* %this, %"class.std::length_error"** %this.addr__ZNSt12length_errorC2EPKc, align 8
  store i8* %__s, i8** %__s.addr__ZNSt12length_errorC2EPKc, align 8
  %this1__ZNSt12length_errorC2EPKc = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr__ZNSt12length_errorC2EPKc, align 8
  %tmp__ZNSt12length_errorC2EPKc = bitcast %"class.std::length_error"* %this1__ZNSt12length_errorC2EPKc to %"class.std::logic_error"*
  %tmp__ZNSt12length_errorC2EPKc1 = load i8*, i8** %__s.addr__ZNSt12length_errorC2EPKc, align 8
  call void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %tmp__ZNSt12length_errorC2EPKc, i8* %tmp__ZNSt12length_errorC2EPKc1)
  %tmp__ZNSt12length_errorC2EPKc2 = bitcast %"class.std::length_error"* %this1__ZNSt12length_errorC2EPKc to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %tmp__ZNSt12length_errorC2EPKc2, align 8
  ret void
}

declare void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"*, i8*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv, align 8
  %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv, align 8
  %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = bitcast %"class.std::__1::__compressed_pair"* %this1__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv to %"struct.std::__1::__compressed_pair_elem.1"*
  %call__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %tmp__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv) #15
  ret %"class.std::__1::allocator"* %call__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %this) #5 align 2 {
entry:
  %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv, align 8
  %this1__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv, align 8
  %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %tmp__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_(%"class.std::__1::basic_string"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ = alloca %"class.std::__1::basic_string"*, align 8
  %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ = alloca %"struct.std::__1::__second_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_, align 8
  %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_, align 8
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ = bitcast %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ to %"class.std::__1::__basic_string_common"*
  %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_, i32 0, i32 0
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_, align 8
  invoke void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %__r___ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_, %"class.std::__1::allocator"* dereferenceable(1) %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %this1__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_) #15
  ret void

terminate.lpad:                                   ; preds = %entry
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_2 = landingpad { i8*, i32 }
          catch i8* null
  %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_3 = extractvalue { i8*, i32 } %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_2, 0
  call void @__clang_call_terminate(i8* %tmp__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_3) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringstream"* %this, i8** %vtt) unnamed_addr #5 align 2 {
entry:
  %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = alloca %"class.std::__1::basic_stringstream"*, align 8
  %vtt.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = alloca i8**, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  store i8** %vtt, i8*** %vtt.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %vtt2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = load i8**, i8*** %vtt.addr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = load i8*, i8** %vtt2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev1 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i32 (...)***
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev2 = bitcast i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev2, i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev1, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev3 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, i64 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev4 = load i8*, i8** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev3, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev5 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i8**
  %vtable__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = load i8*, i8** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev5, align 8
  %vbase.offset.ptr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = getelementptr i8, i8* %vtable__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, i64 -24
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev6 = bitcast i8* %vbase.offset.ptr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i64*
  %vbase.offset__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = load i64, i64* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev6, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev7 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i8*
  %add.ptr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev7, i64 %vbase.offset__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev8 = bitcast i8* %add.ptr__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i32 (...)***
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev9 = bitcast i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev4 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev9, i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev8, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev10 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, i64 9
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev11 = load i8*, i8** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev10, align 8
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev12 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i8*
  %add.ptr3__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = getelementptr inbounds i8, i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev12, i64 16
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev13 = bitcast i8* %add.ptr3__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to i32 (...)***
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev14 = bitcast i8* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev11 to i32 (...)**
  store i32 (...)** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev14, i32 (...)*** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev13, align 8
  %__sb___ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, i32 0, i32 1
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %__sb___ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev) #15
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev15 = bitcast %"class.std::__1::basic_stringstream"* %this1__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev to %"class.std::__1::basic_iostream"*
  %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev16 = getelementptr inbounds i8*, i8** %vtt2__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev, i64 1
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev15, i8** %tmp__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev16) #15
  ret void
}

; Function Attrs: noinline ssp uwtable
define internal void @_GLOBAL__sub_I_test.cpp() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
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
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline noreturn optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { builtin }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
