; ModuleID = '../test/mission_feasibility_test.cpp'
source_filename = "../test/mission_feasibility_test.cpp"
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
%class.MissionCheck_CheckCombined_Test = type { %"class.testing::Test" }
%"class.testing::Test" = type { i32 (...)**, %"class.std::__1::unique_ptr.17" }
%"class.std::__1::unique_ptr.17" = type { %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.18" = type { %"struct.std::__1::__compressed_pair_elem.19" }
%"struct.std::__1::__compressed_pair_elem.19" = type { %"class.testing::internal::GTestFlagSaver"* }
%"class.testing::internal::GTestFlagSaver" = type opaque
%struct.mission_s = type { [20 x %struct.mission_item_s], i32 }
%struct.mission_item_s = type { double, double, float, i32, i8 }
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
%"class.testing::internal::TestFactoryImpl.35" = type { %"class.testing::internal::TestFactoryBase" }
%class.MissionCommandCheck_ValidCommand_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.36" = type { %"class.testing::internal::TestFactoryBase" }
%class.MissionCommandCheck_InValidCommand_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.37" = type { %"class.testing::internal::TestFactoryBase" }
%class.MissionCommandCheck_InValidWaypoint_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.38" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckGeofence_InsideInclu_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.39" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckGeofence_OutsideInclu_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.40" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckGeofence_OutsideExc_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.41" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckGeofence_InsideExc_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.42" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckGeofence_InsideTooHigh__Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.43" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckGeofence_InsideTooHigh_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.44" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckWayPoints_CloseWaypoints_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.45" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckWayPoints_TooCloseWaypoints_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.46" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckWayPoints_AltituteBreaker_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.47" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckAltitute_ValidMission_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.48" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckAltitute_InvalidMission_Test = type { %"class.testing::Test" }
%"class.testing::internal::TestFactoryImpl.49" = type { %"class.testing::internal::TestFactoryBase" }
%class.CheckAltitute_InvalidMission2pointbelowhome_Test = type { %"class.testing::Test" }
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
@_ZN31MissionCheck_CheckCombined_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"MissionCheck\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"CheckCombined\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"../test/mission_feasibility_test.cpp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LAT0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LON0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ALT0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LAT1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LON1\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ALT1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LAT2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LON2\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ALT2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HLAT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"LLAT\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HLON\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"LLON\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"MAX_DIS\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"HOME_LAT\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"isFeasibleMission\00", align 1
@_ZN37MissionCommandCheck_ValidCommand_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"MissionCommandCheck\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"ValidCommand\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"checkMissionItemValidity(mission)\00", align 1
@_ZN39MissionCommandCheck_InValidCommand_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"InValidCommand\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZN40MissionCommandCheck_InValidWaypoint_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"InValidWaypoint\00", align 1
@_ZN30CheckGeofence_InsideInclu_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.31 = private unnamed_addr constant [14 x i8] c"CheckGeofence\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"InsideInclu\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"checkGeofence(mission,true, high_lat, low_lat, high_lon, low_lon)\00", align 1
@_ZN31CheckGeofence_OutsideInclu_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.35 = private unnamed_addr constant [13 x i8] c"OutsideInclu\00", align 1
@_ZN29CheckGeofence_OutsideExc_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"OutsideExc\00", align 1
@.str.38 = private unnamed_addr constant [66 x i8] c"checkGeofence(mission,false,high_lat, low_lat, high_lon, low_lon)\00", align 1
@_ZN28CheckGeofence_InsideExc_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.40 = private unnamed_addr constant [10 x i8] c"InsideExc\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"checkGeofence(mission,false, high_lat, low_lat, high_lon, low_lon)\00", align 1
@_ZN33CheckGeofence_InsideTooHigh__Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.43 = private unnamed_addr constant [15 x i8] c"InsideTooHigh_\00", align 1
@_ZN32CheckGeofence_InsideTooHigh_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.45 = private unnamed_addr constant [14 x i8] c"InsideTooHigh\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"isGeofenced\00", align 1
@_ZN34CheckWayPoints_CloseWaypoints_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"CheckWayPoints\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"CloseWaypoints\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"isValid\00", align 1
@_ZN37CheckWayPoints_TooCloseWaypoints_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.55 = private unnamed_addr constant [18 x i8] c"TooCloseWaypoints\00", align 1
@_ZN35CheckWayPoints_AltituteBreaker_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.57 = private unnamed_addr constant [16 x i8] c"AltituteBreaker\00", align 1
@_ZN31CheckAltitute_ValidMission_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.59 = private unnamed_addr constant [14 x i8] c"CheckAltitute\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"ValidMission\00", align 1
@_ZN33CheckAltitute_InvalidMission_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.62 = private unnamed_addr constant [15 x i8] c"InvalidMission\00", align 1
@_ZN48CheckAltitute_InvalidMission2pointbelowhome_Test10test_info_E = global %"class.testing::TestInfo"* null, align 8
@.str.64 = private unnamed_addr constant [30 x i8] c"InvalidMission2pointbelowhome\00", align 1
@_ZTV31MissionCheck_CheckCombined_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI31MissionCheck_CheckCombined_Test to i8*), i8* bitcast (void (%class.MissionCheck_CheckCombined_Test*)* @_ZN31MissionCheck_CheckCombined_TestD1Ev to i8*), i8* bitcast (void (%class.MissionCheck_CheckCombined_Test*)* @_ZN31MissionCheck_CheckCombined_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.MissionCheck_CheckCombined_Test*)* @_ZN31MissionCheck_CheckCombined_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS31MissionCheck_CheckCombined_Test = constant [34 x i8] c"31MissionCheck_CheckCombined_Test\00"
@_ZTIN7testing4TestE = external constant i8*
@_ZTI31MissionCheck_CheckCombined_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @_ZTS31MissionCheck_CheckCombined_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV37MissionCommandCheck_ValidCommand_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI37MissionCommandCheck_ValidCommand_Test to i8*), i8* bitcast (void (%class.MissionCommandCheck_ValidCommand_Test*)* @_ZN37MissionCommandCheck_ValidCommand_TestD1Ev to i8*), i8* bitcast (void (%class.MissionCommandCheck_ValidCommand_Test*)* @_ZN37MissionCommandCheck_ValidCommand_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.MissionCommandCheck_ValidCommand_Test*)* @_ZN37MissionCommandCheck_ValidCommand_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS37MissionCommandCheck_ValidCommand_Test = constant [40 x i8] c"37MissionCommandCheck_ValidCommand_Test\00"
@_ZTI37MissionCommandCheck_ValidCommand_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTS37MissionCommandCheck_ValidCommand_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV39MissionCommandCheck_InValidCommand_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI39MissionCommandCheck_InValidCommand_Test to i8*), i8* bitcast (void (%class.MissionCommandCheck_InValidCommand_Test*)* @_ZN39MissionCommandCheck_InValidCommand_TestD1Ev to i8*), i8* bitcast (void (%class.MissionCommandCheck_InValidCommand_Test*)* @_ZN39MissionCommandCheck_InValidCommand_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.MissionCommandCheck_InValidCommand_Test*)* @_ZN39MissionCommandCheck_InValidCommand_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS39MissionCommandCheck_InValidCommand_Test = constant [42 x i8] c"39MissionCommandCheck_InValidCommand_Test\00"
@_ZTI39MissionCommandCheck_InValidCommand_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @_ZTS39MissionCommandCheck_InValidCommand_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV40MissionCommandCheck_InValidWaypoint_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI40MissionCommandCheck_InValidWaypoint_Test to i8*), i8* bitcast (void (%class.MissionCommandCheck_InValidWaypoint_Test*)* @_ZN40MissionCommandCheck_InValidWaypoint_TestD1Ev to i8*), i8* bitcast (void (%class.MissionCommandCheck_InValidWaypoint_Test*)* @_ZN40MissionCommandCheck_InValidWaypoint_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.MissionCommandCheck_InValidWaypoint_Test*)* @_ZN40MissionCommandCheck_InValidWaypoint_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS40MissionCommandCheck_InValidWaypoint_Test = constant [43 x i8] c"40MissionCommandCheck_InValidWaypoint_Test\00"
@_ZTI40MissionCommandCheck_InValidWaypoint_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @_ZTS40MissionCommandCheck_InValidWaypoint_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV30CheckGeofence_InsideInclu_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI30CheckGeofence_InsideInclu_Test to i8*), i8* bitcast (void (%class.CheckGeofence_InsideInclu_Test*)* @_ZN30CheckGeofence_InsideInclu_TestD1Ev to i8*), i8* bitcast (void (%class.CheckGeofence_InsideInclu_Test*)* @_ZN30CheckGeofence_InsideInclu_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckGeofence_InsideInclu_Test*)* @_ZN30CheckGeofence_InsideInclu_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS30CheckGeofence_InsideInclu_Test = constant [33 x i8] c"30CheckGeofence_InsideInclu_Test\00"
@_ZTI30CheckGeofence_InsideInclu_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @_ZTS30CheckGeofence_InsideInclu_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV31CheckGeofence_OutsideInclu_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI31CheckGeofence_OutsideInclu_Test to i8*), i8* bitcast (void (%class.CheckGeofence_OutsideInclu_Test*)* @_ZN31CheckGeofence_OutsideInclu_TestD1Ev to i8*), i8* bitcast (void (%class.CheckGeofence_OutsideInclu_Test*)* @_ZN31CheckGeofence_OutsideInclu_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckGeofence_OutsideInclu_Test*)* @_ZN31CheckGeofence_OutsideInclu_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS31CheckGeofence_OutsideInclu_Test = constant [34 x i8] c"31CheckGeofence_OutsideInclu_Test\00"
@_ZTI31CheckGeofence_OutsideInclu_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @_ZTS31CheckGeofence_OutsideInclu_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV29CheckGeofence_OutsideExc_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI29CheckGeofence_OutsideExc_Test to i8*), i8* bitcast (void (%class.CheckGeofence_OutsideExc_Test*)* @_ZN29CheckGeofence_OutsideExc_TestD1Ev to i8*), i8* bitcast (void (%class.CheckGeofence_OutsideExc_Test*)* @_ZN29CheckGeofence_OutsideExc_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckGeofence_OutsideExc_Test*)* @_ZN29CheckGeofence_OutsideExc_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS29CheckGeofence_OutsideExc_Test = constant [32 x i8] c"29CheckGeofence_OutsideExc_Test\00"
@_ZTI29CheckGeofence_OutsideExc_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTS29CheckGeofence_OutsideExc_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV28CheckGeofence_InsideExc_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI28CheckGeofence_InsideExc_Test to i8*), i8* bitcast (void (%class.CheckGeofence_InsideExc_Test*)* @_ZN28CheckGeofence_InsideExc_TestD1Ev to i8*), i8* bitcast (void (%class.CheckGeofence_InsideExc_Test*)* @_ZN28CheckGeofence_InsideExc_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckGeofence_InsideExc_Test*)* @_ZN28CheckGeofence_InsideExc_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS28CheckGeofence_InsideExc_Test = constant [31 x i8] c"28CheckGeofence_InsideExc_Test\00"
@_ZTI28CheckGeofence_InsideExc_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @_ZTS28CheckGeofence_InsideExc_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV33CheckGeofence_InsideTooHigh__Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI33CheckGeofence_InsideTooHigh__Test to i8*), i8* bitcast (void (%class.CheckGeofence_InsideTooHigh__Test*)* @_ZN33CheckGeofence_InsideTooHigh__TestD1Ev to i8*), i8* bitcast (void (%class.CheckGeofence_InsideTooHigh__Test*)* @_ZN33CheckGeofence_InsideTooHigh__TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckGeofence_InsideTooHigh__Test*)* @_ZN33CheckGeofence_InsideTooHigh__Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS33CheckGeofence_InsideTooHigh__Test = constant [36 x i8] c"33CheckGeofence_InsideTooHigh__Test\00"
@_ZTI33CheckGeofence_InsideTooHigh__Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @_ZTS33CheckGeofence_InsideTooHigh__Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV32CheckGeofence_InsideTooHigh_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI32CheckGeofence_InsideTooHigh_Test to i8*), i8* bitcast (void (%class.CheckGeofence_InsideTooHigh_Test*)* @_ZN32CheckGeofence_InsideTooHigh_TestD1Ev to i8*), i8* bitcast (void (%class.CheckGeofence_InsideTooHigh_Test*)* @_ZN32CheckGeofence_InsideTooHigh_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckGeofence_InsideTooHigh_Test*)* @_ZN32CheckGeofence_InsideTooHigh_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS32CheckGeofence_InsideTooHigh_Test = constant [35 x i8] c"32CheckGeofence_InsideTooHigh_Test\00"
@_ZTI32CheckGeofence_InsideTooHigh_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTS32CheckGeofence_InsideTooHigh_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV34CheckWayPoints_CloseWaypoints_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI34CheckWayPoints_CloseWaypoints_Test to i8*), i8* bitcast (void (%class.CheckWayPoints_CloseWaypoints_Test*)* @_ZN34CheckWayPoints_CloseWaypoints_TestD1Ev to i8*), i8* bitcast (void (%class.CheckWayPoints_CloseWaypoints_Test*)* @_ZN34CheckWayPoints_CloseWaypoints_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckWayPoints_CloseWaypoints_Test*)* @_ZN34CheckWayPoints_CloseWaypoints_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS34CheckWayPoints_CloseWaypoints_Test = constant [37 x i8] c"34CheckWayPoints_CloseWaypoints_Test\00"
@_ZTI34CheckWayPoints_CloseWaypoints_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_ZTS34CheckWayPoints_CloseWaypoints_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV37CheckWayPoints_TooCloseWaypoints_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI37CheckWayPoints_TooCloseWaypoints_Test to i8*), i8* bitcast (void (%class.CheckWayPoints_TooCloseWaypoints_Test*)* @_ZN37CheckWayPoints_TooCloseWaypoints_TestD1Ev to i8*), i8* bitcast (void (%class.CheckWayPoints_TooCloseWaypoints_Test*)* @_ZN37CheckWayPoints_TooCloseWaypoints_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckWayPoints_TooCloseWaypoints_Test*)* @_ZN37CheckWayPoints_TooCloseWaypoints_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS37CheckWayPoints_TooCloseWaypoints_Test = constant [40 x i8] c"37CheckWayPoints_TooCloseWaypoints_Test\00"
@_ZTI37CheckWayPoints_TooCloseWaypoints_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTS37CheckWayPoints_TooCloseWaypoints_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV35CheckWayPoints_AltituteBreaker_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI35CheckWayPoints_AltituteBreaker_Test to i8*), i8* bitcast (void (%class.CheckWayPoints_AltituteBreaker_Test*)* @_ZN35CheckWayPoints_AltituteBreaker_TestD1Ev to i8*), i8* bitcast (void (%class.CheckWayPoints_AltituteBreaker_Test*)* @_ZN35CheckWayPoints_AltituteBreaker_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckWayPoints_AltituteBreaker_Test*)* @_ZN35CheckWayPoints_AltituteBreaker_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS35CheckWayPoints_AltituteBreaker_Test = constant [38 x i8] c"35CheckWayPoints_AltituteBreaker_Test\00"
@_ZTI35CheckWayPoints_AltituteBreaker_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @_ZTS35CheckWayPoints_AltituteBreaker_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV31CheckAltitute_ValidMission_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI31CheckAltitute_ValidMission_Test to i8*), i8* bitcast (void (%class.CheckAltitute_ValidMission_Test*)* @_ZN31CheckAltitute_ValidMission_TestD1Ev to i8*), i8* bitcast (void (%class.CheckAltitute_ValidMission_Test*)* @_ZN31CheckAltitute_ValidMission_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckAltitute_ValidMission_Test*)* @_ZN31CheckAltitute_ValidMission_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS31CheckAltitute_ValidMission_Test = constant [34 x i8] c"31CheckAltitute_ValidMission_Test\00"
@_ZTI31CheckAltitute_ValidMission_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @_ZTS31CheckAltitute_ValidMission_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV33CheckAltitute_InvalidMission_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI33CheckAltitute_InvalidMission_Test to i8*), i8* bitcast (void (%class.CheckAltitute_InvalidMission_Test*)* @_ZN33CheckAltitute_InvalidMission_TestD1Ev to i8*), i8* bitcast (void (%class.CheckAltitute_InvalidMission_Test*)* @_ZN33CheckAltitute_InvalidMission_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckAltitute_InvalidMission_Test*)* @_ZN33CheckAltitute_InvalidMission_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS33CheckAltitute_InvalidMission_Test = constant [36 x i8] c"33CheckAltitute_InvalidMission_Test\00"
@_ZTI33CheckAltitute_InvalidMission_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @_ZTS33CheckAltitute_InvalidMission_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTV48CheckAltitute_InvalidMission2pointbelowhome_Test = unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI48CheckAltitute_InvalidMission2pointbelowhome_Test to i8*), i8* bitcast (void (%class.CheckAltitute_InvalidMission2pointbelowhome_Test*)* @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD1Ev to i8*), i8* bitcast (void (%class.CheckAltitute_InvalidMission2pointbelowhome_Test*)* @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD0Ev to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test5SetUpEv to i8*), i8* bitcast (void (%"class.testing::Test"*)* @_ZN7testing4Test8TearDownEv to i8*), i8* bitcast (void (%class.CheckAltitute_InvalidMission2pointbelowhome_Test*)* @_ZN48CheckAltitute_InvalidMission2pointbelowhome_Test8TestBodyEv to i8*), i8* bitcast (%"struct.testing::Test::Setup_should_be_spelled_SetUp"* (%"class.testing::Test"*)* @_ZN7testing4Test5SetupEv to i8*)] }, align 8
@_ZTS48CheckAltitute_InvalidMission2pointbelowhome_Test = constant [51 x i8] c"48CheckAltitute_InvalidMission2pointbelowhome_Test\00"
@_ZTI48CheckAltitute_InvalidMission2pointbelowhome_Test = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @_ZTS48CheckAltitute_InvalidMission2pointbelowhome_Test, i32 0, i32 0), i8* bitcast (i8** @_ZTIN7testing4TestE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl"*)* @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE = linkonce_odr constant [72 x i8] c"N7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00"
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @_ZTSN7testing8internal15TestFactoryBaseE, i32 0, i32 0) }
@_ZTIN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @_ZTSN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryBaseE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryBase"*)* @_ZN7testing8internal15TestFactoryBaseD1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryBase"*)* @_ZN7testing8internal15TestFactoryBaseD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, align 8
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.35"*)* @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.35"*)* @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.35"*)* @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE = linkonce_odr constant [78 x i8] c"N7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @_ZTSN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.36"*)* @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.36"*)* @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.36"*)* @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE = linkonce_odr constant [80 x i8] c"N7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @_ZTSN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.37"*)* @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.37"*)* @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.37"*)* @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE = linkonce_odr constant [81 x i8] c"N7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @_ZTSN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.38"*)* @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.38"*)* @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.38"*)* @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE = linkonce_odr constant [71 x i8] c"N7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @_ZTSN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.39"*)* @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.39"*)* @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.39"*)* @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE = linkonce_odr constant [72 x i8] c"N7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @_ZTSN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.40"*)* @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.40"*)* @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.40"*)* @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE = linkonce_odr constant [70 x i8] c"N7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @_ZTSN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.41"*)* @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.41"*)* @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.41"*)* @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE = linkonce_odr constant [69 x i8] c"N7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @_ZTSN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.42"*)* @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.42"*)* @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.42"*)* @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE = linkonce_odr constant [74 x i8] c"N7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @_ZTSN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.43"*)* @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.43"*)* @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.43"*)* @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE = linkonce_odr constant [73 x i8] c"N7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @_ZTSN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.44"*)* @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.44"*)* @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.44"*)* @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE = linkonce_odr constant [75 x i8] c"N7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @_ZTSN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.45"*)* @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.45"*)* @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.45"*)* @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE = linkonce_odr constant [78 x i8] c"N7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @_ZTSN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.46"*)* @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.46"*)* @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.46"*)* @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE = linkonce_odr constant [76 x i8] c"N7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @_ZTSN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.47"*)* @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.47"*)* @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.47"*)* @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE = linkonce_odr constant [72 x i8] c"N7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @_ZTSN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.48"*)* @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.48"*)* @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.48"*)* @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE = linkonce_odr constant [74 x i8] c"N7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @_ZTSN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@_ZTVN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.49"*)* @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED1Ev to i8*), i8* bitcast (void (%"class.testing::internal::TestFactoryImpl.49"*)* @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED0Ev to i8*), i8* bitcast (%"class.testing::Test"* (%"class.testing::internal::TestFactoryImpl.49"*)* @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestE10CreateTestEv to i8*)] }, align 8
@_ZTSN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE = linkonce_odr constant [89 x i8] c"N7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE\00"
@_ZTIN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @_ZTSN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN7testing8internal15TestFactoryBaseE to i8*) }
@.str.66 = private unnamed_addr constant [51 x i8] c"/usr/local/include/gtest/internal/gtest-internal.h\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.68 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@_ZNSt3__14cerrE = external global %"class.std::__1::basic_ostream", align 8
@.str.70 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
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
@.str.71 = private unnamed_addr constant [68 x i8] c"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00", align 1
@_ZTISt12length_error = external constant i8*
@_ZTVSt12length_error = external unnamed_addr constant { [5 x i8*] }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_mission_feasibility_test.cpp, i8* null }]

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 11)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 11)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 11)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl"*
  invoke void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEC1Ev(%"class.testing::internal::TestFactoryImpl"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN31MissionCheck_CheckCombined_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
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
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"* %ref.tmp, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i32 0, i32 0), i32 516)
  %call4 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.68, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %3 = load i8*, i8** %filename.addr, align 8
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8, i8* %3)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0))
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %4 = load i32, i32* %line_num.addr, align 4
  %call14 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call12, i32 %4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #14
  br label %if.end

lpad:                                             ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont5, %invoke.cont, %if.else
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #14
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
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(%"class.testing::internal::GTestLog"* %ref.tmp, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i32 0, i32 0), i32 531)
  %call4 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN7testing8internal8GTestLog9GetStreamEv(%"class.testing::internal::GTestLog"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %call6 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0))
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call8 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call6, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.70, i32 0, i32 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %3 = load i8*, i8** %filename.addr, align 8
  %call10 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call8, i8* %3)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %call10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0))
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %4 = load i32, i32* %line_num.addr, align 4
  %call14 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call12, i32 %4)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #14
  br label %if.end

lpad:                                             ; preds = %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont5, %invoke.cont, %if.else
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal8GTestLogD1Ev(%"class.testing::internal::GTestLog"* %ref.tmp) #14
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
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEC1Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEC2Ev(%"class.testing::internal::TestFactoryImpl"* %this1)
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
  call void @_ZN7testing8internal12CodeLocationD2Ev(%"struct.testing::internal::CodeLocation"* %this1) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN31MissionCheck_CheckCombined_Test8TestBodyEv(%class.MissionCheck_CheckCombined_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.MissionCheck_CheckCombined_Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %max_dis = alloca float, align 4
  %home_lat = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isFeasibleMission = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp60 = alloca %"class.testing::Message", align 8
  %ref.tmp62 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.MissionCheck_CheckCombined_Test* %this, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %this1 = load %class.MissionCheck_CheckCombined_Test*, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  store float 4.000000e+02, float* %max_dis, align 4
  store float 1.000000e+01, float* %home_lat, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  %items8 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items8, i64 0, i64 1
  %lat10 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx9, i32 0, i32 0
  store double 5.100000e+01, double* %lat10, align 8
  %items11 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items11, i64 0, i64 1
  %lon13 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12, i32 0, i32 1
  store double 5.100000e+01, double* %lon13, align 8
  %items14 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items14, i64 0, i64 1
  %altitude16 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx15, i32 0, i32 2
  store float 5.100000e+02, float* %altitude16, align 8
  %items17 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items17, i64 0, i64 1
  %altitude_is_relative19 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx18, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative19, align 8
  %items20 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items20, i64 0, i64 2
  %lat22 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx21, i32 0, i32 0
  store double 5.200000e+01, double* %lat22, align 8
  %items23 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items23, i64 0, i64 2
  %lon25 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx24, i32 0, i32 1
  store double 5.200000e+01, double* %lon25, align 8
  %items26 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items26, i64 0, i64 2
  %altitude28 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx27, i32 0, i32 2
  store float 5.200000e+02, float* %altitude28, align 8
  %items29 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items29, i64 0, i64 2
  %altitude_is_relative31 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx30, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative31, align 8
  call void @stg_begin_test()
  %items32 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items32, i64 0, i64 0
  %lat34 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx33, i32 0, i32 0
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items35 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items35, i64 0, i64 0
  %lon37 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx36, i32 0, i32 1
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items38 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items38, i64 0, i64 0
  %altitude40 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx39, i32 0, i32 2
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items41 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items41, i64 0, i64 1
  %lat43 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx42, i32 0, i32 0
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %items44 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items44, i64 0, i64 1
  %lon46 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx45, i32 0, i32 1
  %4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %4, double 0.000000e+00, double 0.000000e+00)
  %items47 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items47, i64 0, i64 1
  %altitude49 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx48, i32 0, i32 2
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %items50 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items50, i64 0, i64 2
  %lat52 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx51, i32 0, i32 0
  %6 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %6, double 0.000000e+00, double 0.000000e+00)
  %items53 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items53, i64 0, i64 2
  %lon55 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx54, i32 0, i32 1
  %7 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %7, double 0.000000e+00, double 0.000000e+00)
  %items56 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items56, i64 0, i64 2
  %altitude58 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx57, i32 0, i32 2
  %8 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %8, double 0.000000e+00, double 0.000000e+00)
  %9 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %high_lat, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %9, double 0.000000e+00, double 0.000000e+00)
  %10 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %low_lat, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %10, double 0.000000e+00, double 0.000000e+00)
  %11 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %high_lon, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %11, double 0.000000e+00, double 0.000000e+00)
  %12 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %low_lon, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %12, double 0.000000e+00, double 0.000000e+00)
  %13 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %max_dis, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %13, double 0.000000e+00, double 0.000000e+00)
  %14 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %home_lat, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %14, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %max_dis, i1 zeroext true, float* dereferenceable(4) %home_lat, i1 zeroext true, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isFeasibleMission, align 1
  call void @stg_end_test()
  %15 = load i8, i8* %isFeasibleMission, align 1
  %tobool = trunc i8 %15 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 1
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 1, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isFeasibleMission)
  %call59 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call59, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  br label %ehcleanup69

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp60)
          to label %invoke.cont61 unwind label %lpad

invoke.cont61:                                    ; preds = %if.else
  %call65 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont64 unwind label %lpad63

invoke.cont64:                                    ; preds = %invoke.cont61
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp62, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 73, i8* %call65)
          to label %invoke.cont66 unwind label %lpad63

invoke.cont66:                                    ; preds = %invoke.cont64
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp62, %"class.testing::Message"* dereferenceable(8) %ref.tmp60)
          to label %invoke.cont68 unwind label %lpad67

invoke.cont68:                                    ; preds = %invoke.cont66
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp62) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp60) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad63:                                           ; preds = %invoke.cont64, %invoke.cont61
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad67:                                           ; preds = %invoke.cont66
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp62) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad67, %lpad63
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp60) #14
  br label %ehcleanup69

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont68
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup69:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup69
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val70 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val70

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_double(double*, i8*, double, double, i8*, double, double) #1

declare void @stg_symbolic_variable_float(float*, i8*, double, double, i8*, double, double) #1

declare void @stg_symbolic_variable_int(i32*, i8*, double, double, i8*, double, double) #1

declare zeroext i1 @_Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_(%struct.mission_s* dereferenceable(648), float* dereferenceable(4), i1 zeroext, float* dereferenceable(4), i1 zeroext, i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4)) #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* noalias sret %agg.result, i8* %lhs_expression, i8* %rhs_expression, i8* dereferenceable(1) %lhs, i8* dereferenceable(1) %rhs) #2 align 2 {
entry:
  %lhs_expression.addr = alloca i8*, align 8
  %rhs_expression.addr = alloca i8*, align 8
  %lhs.addr = alloca i8*, align 8
  %rhs.addr = alloca i8*, align 8
  store i8* %lhs_expression, i8** %lhs_expression.addr, align 8
  store i8* %rhs_expression, i8** %rhs_expression.addr, align 8
  store i8* %lhs, i8** %lhs.addr, align 8
  store i8* %rhs, i8** %rhs.addr, align 8
  %0 = load i8*, i8** %lhs_expression.addr, align 8
  %1 = load i8*, i8** %rhs_expression.addr, align 8
  %2 = load i8*, i8** %lhs.addr, align 8
  %3 = load i8*, i8** %rhs.addr, align 8
  call void @_ZN7testing8internal11CmpHelperEQIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* sret %agg.result, i8* %0, i8* %1, i8* dereferenceable(1) %2, i8* dereferenceable(1) %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr, align 8
  %this1 = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr, align 8
  %success_ = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1, i32 0, i32 0
  %0 = load i8, i8* %success_, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

declare void @_ZN7testing7MessageC1Ev(%"class.testing::Message"*) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr, align 8
  %this1 = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr, align 8
  %call = call i8* @_ZNK7testing15AssertionResult7messageEv(%"class.testing::AssertionResult"* %this1)
  ret i8* %call
}

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"*, i32, i8*, i32, i8*) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"*, %"class.testing::Message"* dereferenceable(8)) #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::Message"*, align 8
  store %"class.testing::Message"* %this, %"class.testing::Message"** %this.addr, align 8
  %this1 = load %"class.testing::Message"*, %"class.testing::Message"** %this.addr, align 8
  call void @_ZN7testing7MessageD2Ev(%"class.testing::Message"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr, align 8
  %this1 = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr, align 8
  call void @_ZN7testing15AssertionResultD2Ev(%"class.testing::AssertionResult"* %this1) #14
  ret void
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.21() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 81)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 81)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 81)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.35"*
  invoke void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.35"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.35"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN37MissionCommandCheck_ValidCommand_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.35"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.35"*, align 8
  store %"class.testing::internal::TestFactoryImpl.35"* %this, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.35"*, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.35"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN37MissionCommandCheck_ValidCommand_Test8TestBodyEv(%class.MissionCommandCheck_ValidCommand_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.MissionCommandCheck_ValidCommand_Test*, align 8
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.MissionCommandCheck_ValidCommand_Test* %this, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_ValidCommand_Test*, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %nav_cmd = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 3
  store i32 201, i32* %nav_cmd, align 4
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 1
  %nav_cmd4 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 3
  store i32 21, i32* %nav_cmd4, align 4
  %items5 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items5, i64 0, i64 2
  %nav_cmd7 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx6, i32 0, i32 3
  store i32 0, i32* %nav_cmd7, align 4
  store i8 1, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z24checkMissionItemValidityRK9mission_s(%struct.mission_s* dereferenceable(648) %mission)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 90, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare zeroext i1 @_Z24checkMissionItemValidityRK9mission_s(%struct.mission_s* dereferenceable(648)) #1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.25() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 94)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 94)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 94)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.36"*
  invoke void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.36"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.36"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN39MissionCommandCheck_InValidCommand_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.36"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.36"*, align 8
  store %"class.testing::internal::TestFactoryImpl.36"* %this, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.36"*, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.36"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN39MissionCommandCheck_InValidCommand_Test8TestBodyEv(%class.MissionCommandCheck_InValidCommand_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidCommand_Test*, align 8
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.MissionCommandCheck_InValidCommand_Test* %this, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidCommand_Test*, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %nav_cmd = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 3
  store i32 201, i32* %nav_cmd, align 4
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 1
  %nav_cmd4 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 3
  store i32 200, i32* %nav_cmd4, align 4
  %items5 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items5, i64 0, i64 2
  %nav_cmd7 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx6, i32 0, i32 3
  store i32 298, i32* %nav_cmd7, align 4
  store i8 0, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z24checkMissionItemValidityRK9mission_s(%struct.mission_s* dereferenceable(648) %mission)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 102, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.28() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 106)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 106)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 106)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.37"*
  invoke void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.37"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.37"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN40MissionCommandCheck_InValidWaypoint_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.37"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.37"*, align 8
  store %"class.testing::internal::TestFactoryImpl.37"* %this, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.37"*, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.37"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN40MissionCommandCheck_InValidWaypoint_Test8TestBodyEv(%class.MissionCommandCheck_InValidWaypoint_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidWaypoint_Test*, align 8
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp2 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp4 = alloca %"class.testing::Message", align 8
  %ref.tmp6 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.MissionCommandCheck_InValidWaypoint_Test* %this, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidWaypoint_Test*, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %nav_cmd = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 3
  store i32 21, i32* %nav_cmd, align 4
  store i8 0, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z24checkMissionItemValidityRK9mission_s(%struct.mission_s* dereferenceable(648) %mission)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp2, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp2)
  %call3 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup13

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %if.else
  %call9 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont5
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp6, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 112, i8* %call9)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp6, %"class.testing::Message"* dereferenceable(8) %ref.tmp4)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp6) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp4) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad7:                                            ; preds = %invoke.cont8, %invoke.cont5
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad11:                                           ; preds = %invoke.cont10
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp6) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad11, %lpad7
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp4) #14
  br label %ehcleanup13

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont12
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.30() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 118)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 118)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 118)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.38"*
  invoke void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.38"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.38"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN30CheckGeofence_InsideInclu_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.38"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.38"*, align 8
  store %"class.testing::internal::TestFactoryImpl.38"* %this, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.38"*, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.38"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN30CheckGeofence_InsideInclu_Test8TestBodyEv(%class.CheckGeofence_InsideInclu_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideInclu_Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckGeofence_InsideInclu_Test* %this, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideInclu_Test*, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 3.800000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 7.800000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 1.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  store i8 1, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext true, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648), i1 zeroext, i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4)) #1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.34() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 134)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 134)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 134)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.39"*
  invoke void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.39"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.39"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN31CheckGeofence_OutsideInclu_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.39"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.39"*, align 8
  store %"class.testing::internal::TestFactoryImpl.39"* %this, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.39"*, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.39"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN31CheckGeofence_OutsideInclu_Test8TestBodyEv(%class.CheckGeofence_OutsideInclu_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideInclu_Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckGeofence_OutsideInclu_Test* %this, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideInclu_Test*, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 3.800000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 1.000000e+02, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 1.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  store i8 0, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext true, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 144, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.36() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 148)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 148)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 148)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.40"*
  invoke void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.40"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.40"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN29CheckGeofence_OutsideExc_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.40"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.40"*, align 8
  store %"class.testing::internal::TestFactoryImpl.40"* %this, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.40"*, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.40"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN29CheckGeofence_OutsideExc_Test8TestBodyEv(%class.CheckGeofence_OutsideExc_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideExc_Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckGeofence_OutsideExc_Test* %this, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideExc_Test*, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 3.800000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 1.000000e+02, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 1.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  store i8 1, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext false, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.38, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 158, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.39() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 162)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 162)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 162)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.41"*
  invoke void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.41"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.41"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN28CheckGeofence_InsideExc_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.41"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.41"*, align 8
  store %"class.testing::internal::TestFactoryImpl.41"* %this, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.41"*, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.41"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN28CheckGeofence_InsideExc_Test8TestBodyEv(%class.CheckGeofence_InsideExc_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideExc_Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckGeofence_InsideExc_Test* %this, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideExc_Test*, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 3.800000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 7.800000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 1.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  store i8 0, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext false, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 173, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.42() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 177)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 177)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 177)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.42"*
  invoke void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEC1Ev(%"class.testing::internal::TestFactoryImpl.42"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.42"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN33CheckGeofence_InsideTooHigh__Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEC1Ev(%"class.testing::internal::TestFactoryImpl.42"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.42"*, align 8
  store %"class.testing::internal::TestFactoryImpl.42"* %this, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.42"*, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEC2Ev(%"class.testing::internal::TestFactoryImpl.42"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN33CheckGeofence_InsideTooHigh__Test8TestBodyEv(%class.CheckGeofence_InsideTooHigh__Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh__Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %mission = alloca %struct.mission_s, align 8
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp8 = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %"class.testing::Message", align 8
  %ref.tmp12 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckGeofence_InsideTooHigh__Test* %this, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh__Test*, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 3.800000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 7.800000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 1.000000e+03, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  store i8 0, i8* %ref.tmp, align 1
  %call = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext false, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %ref.tmp8, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %ref.tmp8)
  %call9 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call9, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup19

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.else
  %call15 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont11
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp12, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 189, i8* %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp12, %"class.testing::Message"* dereferenceable(8) %ref.tmp10)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad13:                                           ; preds = %invoke.cont14, %invoke.cont11
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont16
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp12) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad17, %lpad13
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp10) #14
  br label %ehcleanup19

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont18
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup19:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup19
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.44() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 195)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 195)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 195)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.43"*
  invoke void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.43"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.43"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN32CheckGeofence_InsideTooHigh_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.43"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.43"*, align 8
  store %"class.testing::internal::TestFactoryImpl.43"* %this, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.43"*, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.43"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN32CheckGeofence_InsideTooHigh_Test8TestBodyEv(%class.CheckGeofence_InsideTooHigh_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh_Test*, align 8
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %mission = alloca %struct.mission_s, align 8
  %isGeofenced = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp18 = alloca %"class.testing::Message", align 8
  %ref.tmp20 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckGeofence_InsideTooHigh_Test* %this, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh_Test*, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  store i32 79, i32* %high_lat, align 4
  store i32 35, i32* %low_lat, align 4
  store i32 85, i32* %high_lon, align 4
  store i32 35, i32* %low_lon, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 1, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 3.800000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 7.800000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 1.000000e+03, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  call void @stg_begin_test()
  %items8 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items8, i64 0, i64 0
  %lat10 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx9, i32 0, i32 0
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items11 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items11, i64 0, i64 0
  %lon13 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12, i32 0, i32 1
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items14 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items14, i64 0, i64 0
  %altitude16 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx15, i32 0, i32 2
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %high_lat, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %low_lat, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %4, double 0.000000e+00, double 0.000000e+00)
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %high_lon, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %6 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_int(i32* %low_lon, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %6, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext true, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isGeofenced, align 1
  call void @stg_end_test()
  %7 = load i8, i8* %isGeofenced, align 1
  %tobool = trunc i8 %7 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  store i8 0, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isGeofenced)
  %call17 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call17, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup27

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp18)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %if.else
  %call23 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont19
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp20, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 220, i8* %call23)
          to label %invoke.cont24 unwind label %lpad21

invoke.cont24:                                    ; preds = %invoke.cont22
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp20, %"class.testing::Message"* dereferenceable(8) %ref.tmp18)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp20) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp18) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad21:                                           ; preds = %invoke.cont22, %invoke.cont19
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad25:                                           ; preds = %invoke.cont24
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp20) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad25, %lpad21
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp18) #14
  br label %ehcleanup27

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont26
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup27:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup27
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val28 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val28

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.50() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 227)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 227)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 227)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.44"*
  invoke void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.44"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.44"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN34CheckWayPoints_CloseWaypoints_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.44"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.44"*, align 8
  store %"class.testing::internal::TestFactoryImpl.44"* %this, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.44"*, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.44"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN34CheckWayPoints_CloseWaypoints_Test8TestBodyEv(%class.CheckWayPoints_CloseWaypoints_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckWayPoints_CloseWaypoints_Test*, align 8
  %max_dis = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isValid = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp52 = alloca %"class.testing::Message", align 8
  %ref.tmp54 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckWayPoints_CloseWaypoints_Test* %this, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_CloseWaypoints_Test*, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  store float 4.000000e+02, float* %max_dis, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 1
  %lat8 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 0
  store double 5.100000e+01, double* %lat8, align 8
  %items9 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items9, i64 0, i64 1
  %lon11 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx10, i32 0, i32 1
  store double 5.100000e+01, double* %lon11, align 8
  %items12 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items12, i64 0, i64 1
  %altitude14 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx13, i32 0, i32 2
  store float 5.100000e+02, float* %altitude14, align 8
  %items15 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items15, i64 0, i64 2
  %lat17 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx16, i32 0, i32 0
  store double 5.200000e+01, double* %lat17, align 8
  %items18 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items18, i64 0, i64 2
  %lon20 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx19, i32 0, i32 1
  store double 5.200000e+01, double* %lon20, align 8
  %items21 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items21, i64 0, i64 2
  %altitude23 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx22, i32 0, i32 2
  store float 5.200000e+02, float* %altitude23, align 8
  call void @stg_begin_test()
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %max_dis, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items24 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items24, i64 0, i64 0
  %lat26 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx25, i32 0, i32 0
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items27 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items27, i64 0, i64 0
  %lon29 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx28, i32 0, i32 1
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items30 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items30, i64 0, i64 0
  %altitude32 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx31, i32 0, i32 2
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %items33 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items33, i64 0, i64 1
  %lat35 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx34, i32 0, i32 0
  %4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %4, double 0.000000e+00, double 0.000000e+00)
  %items36 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items36, i64 0, i64 1
  %lon38 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx37, i32 0, i32 1
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %items39 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items39, i64 0, i64 1
  %altitude41 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx40, i32 0, i32 2
  %6 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %6, double 0.000000e+00, double 0.000000e+00)
  %items42 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items42, i64 0, i64 2
  %lat44 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx43, i32 0, i32 0
  %7 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %7, double 0.000000e+00, double 0.000000e+00)
  %items45 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items45, i64 0, i64 2
  %lon47 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx46, i32 0, i32 1
  %8 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %8, double 0.000000e+00, double 0.000000e+00)
  %items48 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items48, i64 0, i64 2
  %altitude50 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx49, i32 0, i32 2
  %9 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %9, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sRf(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %max_dis)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isValid, align 1
  call void @stg_end_test()
  %10 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %10 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 1
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 1, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isValid)
  %call51 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call51, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %ehcleanup61

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp52)
          to label %invoke.cont53 unwind label %lpad

invoke.cont53:                                    ; preds = %if.else
  %call57 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont56 unwind label %lpad55

invoke.cont56:                                    ; preds = %invoke.cont53
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp54, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 263, i8* %call57)
          to label %invoke.cont58 unwind label %lpad55

invoke.cont58:                                    ; preds = %invoke.cont56
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp54, %"class.testing::Message"* dereferenceable(8) %ref.tmp52)
          to label %invoke.cont60 unwind label %lpad59

invoke.cont60:                                    ; preds = %invoke.cont58
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp54) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp52) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad55:                                           ; preds = %invoke.cont56, %invoke.cont53
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad59:                                           ; preds = %invoke.cont58
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp54) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad59, %lpad55
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp52) #14
  br label %ehcleanup61

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont60
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup61:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup61
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val62 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val62

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sRf(%struct.mission_s* dereferenceable(648), float* dereferenceable(4)) #1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.54() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 272)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 272)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 272)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.45"*
  invoke void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.45"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.45"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN37CheckWayPoints_TooCloseWaypoints_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.45"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.45"*, align 8
  store %"class.testing::internal::TestFactoryImpl.45"* %this, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.45"*, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.45"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN37CheckWayPoints_TooCloseWaypoints_Test8TestBodyEv(%class.CheckWayPoints_TooCloseWaypoints_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckWayPoints_TooCloseWaypoints_Test*, align 8
  %max_dis = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isValid = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp34 = alloca %"class.testing::Message", align 8
  %ref.tmp36 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckWayPoints_TooCloseWaypoints_Test* %this, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_TooCloseWaypoints_Test*, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  store float 4.000000e+02, float* %max_dis, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 1
  %lat8 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 0
  store double 5.000000e+01, double* %lat8, align 8
  %items9 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items9, i64 0, i64 1
  %lon11 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx10, i32 0, i32 1
  store double 5.000000e+01, double* %lon11, align 8
  %items12 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items12, i64 0, i64 1
  %altitude14 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx13, i32 0, i32 2
  store float 5.000000e+02, float* %altitude14, align 8
  call void @stg_begin_test()
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %max_dis, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items15 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items15, i64 0, i64 0
  %lat17 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx16, i32 0, i32 0
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items18 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items18, i64 0, i64 0
  %lon20 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx19, i32 0, i32 1
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items21 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items21, i64 0, i64 0
  %altitude23 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx22, i32 0, i32 2
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %items24 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items24, i64 0, i64 1
  %lat26 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx25, i32 0, i32 0
  %4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %4, double 0.000000e+00, double 0.000000e+00)
  %items27 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items27, i64 0, i64 1
  %lon29 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx28, i32 0, i32 1
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %items30 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items30, i64 0, i64 1
  %altitude32 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx31, i32 0, i32 2
  %6 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %6, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sRf(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %max_dis)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isValid, align 1
  call void @stg_end_test()
  %7 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 0, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isValid)
  %call33 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call33, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup43

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp34)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %if.else
  %call39 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont38 unwind label %lpad37

invoke.cont38:                                    ; preds = %invoke.cont35
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp36, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 300, i8* %call39)
          to label %invoke.cont40 unwind label %lpad37

invoke.cont40:                                    ; preds = %invoke.cont38
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp36, %"class.testing::Message"* dereferenceable(8) %ref.tmp34)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %invoke.cont40
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp36) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp34) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad37:                                           ; preds = %invoke.cont38, %invoke.cont35
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad41:                                           ; preds = %invoke.cont40
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp36) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad41, %lpad37
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp34) #14
  br label %ehcleanup43

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont42
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup43:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup43
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val44 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val44

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.56() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 307)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 307)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 307)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.46"*
  invoke void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.46"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.46"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN35CheckWayPoints_AltituteBreaker_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.46"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.46"*, align 8
  store %"class.testing::internal::TestFactoryImpl.46"* %this, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.46"*, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.46"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN35CheckWayPoints_AltituteBreaker_Test8TestBodyEv(%class.CheckWayPoints_AltituteBreaker_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckWayPoints_AltituteBreaker_Test*, align 8
  %max_dis = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isValid = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp34 = alloca %"class.testing::Message", align 8
  %ref.tmp36 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckWayPoints_AltituteBreaker_Test* %this, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_AltituteBreaker_Test*, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  store float 4.000000e+02, float* %max_dis, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 1
  %lat8 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 0
  store double 5.100000e+01, double* %lat8, align 8
  %items9 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items9, i64 0, i64 1
  %lon11 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx10, i32 0, i32 1
  store double 5.100000e+01, double* %lon11, align 8
  %items12 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items12, i64 0, i64 1
  %altitude14 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx13, i32 0, i32 2
  store float 1.000000e+04, float* %altitude14, align 8
  call void @stg_begin_test()
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %max_dis, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items15 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items15, i64 0, i64 0
  %lat17 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx16, i32 0, i32 0
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items18 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items18, i64 0, i64 0
  %lon20 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx19, i32 0, i32 1
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items21 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items21, i64 0, i64 0
  %altitude23 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx22, i32 0, i32 2
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %items24 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items24, i64 0, i64 1
  %lat26 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx25, i32 0, i32 0
  %4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lat26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %4, double 0.000000e+00, double 0.000000e+00)
  %items27 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items27, i64 0, i64 1
  %lon29 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx28, i32 0, i32 1
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_double(double* %lon29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %items30 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items30, i64 0, i64 1
  %altitude32 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx31, i32 0, i32 2
  %6 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %6, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sRf(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %max_dis)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isValid, align 1
  call void @stg_end_test()
  %7 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 0, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isValid)
  %call33 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call33, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup43

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp34)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %if.else
  %call39 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont38 unwind label %lpad37

invoke.cont38:                                    ; preds = %invoke.cont35
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp36, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 337, i8* %call39)
          to label %invoke.cont40 unwind label %lpad37

invoke.cont40:                                    ; preds = %invoke.cont38
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp36, %"class.testing::Message"* dereferenceable(8) %ref.tmp34)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %invoke.cont40
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp36) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp34) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad37:                                           ; preds = %invoke.cont38, %invoke.cont35
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad41:                                           ; preds = %invoke.cont40
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp36) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad41, %lpad37
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp34) #14
  br label %ehcleanup43

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont42
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup43:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup43
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val44 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val44

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.58() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 346)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 346)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 346)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.47"*
  invoke void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.47"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.47"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN31CheckAltitute_ValidMission_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.47"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.47"*, align 8
  store %"class.testing::internal::TestFactoryImpl.47"* %this, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.47"*, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.47"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN31CheckAltitute_ValidMission_Test8TestBodyEv(%class.CheckAltitute_ValidMission_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckAltitute_ValidMission_Test*, align 8
  %home_lat = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isValid = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp42 = alloca %"class.testing::Message", align 8
  %ref.tmp44 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckAltitute_ValidMission_Test* %this, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_ValidMission_Test*, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  store float 2.000000e+01, float* %home_lat, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  %items8 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items8, i64 0, i64 1
  %lat10 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx9, i32 0, i32 0
  store double 5.100000e+01, double* %lat10, align 8
  %items11 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items11, i64 0, i64 1
  %lon13 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12, i32 0, i32 1
  store double 5.100000e+01, double* %lon13, align 8
  %items14 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items14, i64 0, i64 1
  %altitude16 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx15, i32 0, i32 2
  store float 5.100000e+02, float* %altitude16, align 8
  %items17 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items17, i64 0, i64 1
  %altitude_is_relative19 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx18, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative19, align 8
  %items20 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items20, i64 0, i64 2
  %lat22 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx21, i32 0, i32 0
  store double 5.200000e+01, double* %lat22, align 8
  %items23 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items23, i64 0, i64 2
  %lon25 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx24, i32 0, i32 1
  store double 5.200000e+01, double* %lon25, align 8
  %items26 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items26, i64 0, i64 2
  %altitude28 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx27, i32 0, i32 2
  store float 5.200000e+02, float* %altitude28, align 8
  %items29 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items29, i64 0, i64 2
  %altitude_is_relative31 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx30, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative31, align 8
  call void @stg_begin_test()
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %home_lat, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items32 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items32, i64 0, i64 0
  %altitude34 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx33, i32 0, i32 2
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items35 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items35, i64 0, i64 1
  %altitude37 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx36, i32 0, i32 2
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items38 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items38, i64 0, i64 2
  %altitude40 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx39, i32 0, i32 2
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sRfb(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %home_lat, i1 zeroext true)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isValid, align 1
  call void @stg_end_test()
  %4 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %4 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 1
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 1, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isValid)
  %call41 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call41, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup51

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp42)
          to label %invoke.cont43 unwind label %lpad

invoke.cont43:                                    ; preds = %if.else
  %call47 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont43
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp44, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 377, i8* %call47)
          to label %invoke.cont48 unwind label %lpad45

invoke.cont48:                                    ; preds = %invoke.cont46
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp44, %"class.testing::Message"* dereferenceable(8) %ref.tmp42)
          to label %invoke.cont50 unwind label %lpad49

invoke.cont50:                                    ; preds = %invoke.cont48
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp44) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp42) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad45:                                           ; preds = %invoke.cont46, %invoke.cont43
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad49:                                           ; preds = %invoke.cont48
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp44) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad49, %lpad45
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp42) #14
  br label %ehcleanup51

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont50
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup51:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup51
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val52 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val52

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sRfb(%struct.mission_s* dereferenceable(648), float* dereferenceable(4), i1 zeroext) #1

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.61() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 387)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 387)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 387)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.48"*
  invoke void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.48"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.48"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN33CheckAltitute_InvalidMission_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.48"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.48"*, align 8
  store %"class.testing::internal::TestFactoryImpl.48"* %this, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.48"*, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.48"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN33CheckAltitute_InvalidMission_Test8TestBodyEv(%class.CheckAltitute_InvalidMission_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission_Test*, align 8
  %home_lat = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isValid = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp42 = alloca %"class.testing::Message", align 8
  %ref.tmp44 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckAltitute_InvalidMission_Test* %this, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission_Test*, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  store float 2.000000e+01, float* %home_lat, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  %items8 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items8, i64 0, i64 1
  %lat10 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx9, i32 0, i32 0
  store double 5.100000e+01, double* %lat10, align 8
  %items11 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items11, i64 0, i64 1
  %lon13 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12, i32 0, i32 1
  store double 5.100000e+01, double* %lon13, align 8
  %items14 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items14, i64 0, i64 1
  %altitude16 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx15, i32 0, i32 2
  store float 5.100000e+02, float* %altitude16, align 8
  %items17 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items17, i64 0, i64 1
  %altitude_is_relative19 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx18, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative19, align 8
  %items20 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items20, i64 0, i64 2
  %lat22 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx21, i32 0, i32 0
  store double 5.200000e+01, double* %lat22, align 8
  %items23 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items23, i64 0, i64 2
  %lon25 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx24, i32 0, i32 1
  store double 5.200000e+01, double* %lon25, align 8
  %items26 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items26, i64 0, i64 2
  %altitude28 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx27, i32 0, i32 2
  store float 5.200000e+02, float* %altitude28, align 8
  %items29 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items29, i64 0, i64 2
  %altitude_is_relative31 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx30, i32 0, i32 4
  store i8 1, i8* %altitude_is_relative31, align 8
  call void @stg_begin_test()
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %home_lat, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items32 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items32, i64 0, i64 0
  %altitude34 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx33, i32 0, i32 2
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items35 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items35, i64 0, i64 1
  %altitude37 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx36, i32 0, i32 2
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items38 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items38, i64 0, i64 2
  %altitude40 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx39, i32 0, i32 2
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sRfb(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %home_lat, i1 zeroext false)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isValid, align 1
  call void @stg_end_test()
  %4 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %4 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 0, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isValid)
  %call41 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call41, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup51

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp42)
          to label %invoke.cont43 unwind label %lpad

invoke.cont43:                                    ; preds = %if.else
  %call47 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont43
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp44, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 420, i8* %call47)
          to label %invoke.cont48 unwind label %lpad45

invoke.cont48:                                    ; preds = %invoke.cont46
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp44, %"class.testing::Message"* dereferenceable(8) %ref.tmp42)
          to label %invoke.cont50 unwind label %lpad49

invoke.cont50:                                    ; preds = %invoke.cont48
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp44) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp42) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad45:                                           ; preds = %invoke.cont46, %invoke.cont43
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad49:                                           ; preds = %invoke.cont48
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp44) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad49, %lpad45
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp42) #14
  br label %ehcleanup51

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont50
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup51:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup51
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val52 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val52

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.63() #0 section "__TEXT,__StaticInit,regular,pure_instructions" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.testing::internal::CodeLocation", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  invoke void @_ZN7testing8internal12CodeLocationC1ERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEi(%"struct.testing::internal::CodeLocation"* %agg.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, i32 428)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i8* @_ZN7testing8internal13GetTestTypeIdEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 428)
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %invoke.cont2
  %call6 = invoke void ()* @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 428)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke i8* @_Znwm(i64 8) #13
          to label %invoke.cont7 unwind label %lpad1

invoke.cont7:                                     ; preds = %invoke.cont5
  %0 = bitcast i8* %call8 to %"class.testing::internal::TestFactoryImpl.49"*
  invoke void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.49"* %0)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.49"* %0 to %"class.testing::internal::TestFactoryBase"*
  %call12 = invoke %"class.testing::TestInfo"* @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null, %"struct.testing::internal::CodeLocation"* %agg.tmp, i8* %call, void ()* %call4, void ()* %call6, %"class.testing::internal::TestFactoryBase"* %1)
          to label %invoke.cont11 unwind label %lpad1

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  store %"class.testing::TestInfo"* %call12, %"class.testing::TestInfo"** @_ZN48CheckAltitute_InvalidMission2pointbelowhome_Test10test_info_E, align 8
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
  call void @_ZdlPv(i8* %call8) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad1
  call void @_ZN7testing8internal12CodeLocationD1Ev(%"struct.testing::internal::CodeLocation"* %agg.tmp) #14
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup13
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEC1Ev(%"class.testing::internal::TestFactoryImpl.49"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.49"*, align 8
  store %"class.testing::internal::TestFactoryImpl.49"* %this, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.49"*, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.49"* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_Test8TestBodyEv(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, align 8
  %home_lat = alloca float, align 4
  %mission = alloca %struct.mission_s, align 8
  %isValid = alloca i8, align 1
  %gtest_ar = alloca %"class.testing::AssertionResult", align 8
  %ref.tmp = alloca i8, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp42 = alloca %"class.testing::Message", align 8
  %ref.tmp44 = alloca %"class.testing::internal::AssertHelper", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  store float 2.000000e+01, float* %home_lat, align 4
  %count = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 1
  store i32 3, i32* %count, align 8
  %items = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items, i64 0, i64 0
  %lat = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx, i32 0, i32 0
  store double 5.000000e+01, double* %lat, align 8
  %items2 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2, i64 0, i64 0
  %lon = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx3, i32 0, i32 1
  store double 5.000000e+01, double* %lon, align 8
  %items4 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4, i64 0, i64 0
  %altitude = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5, i32 0, i32 2
  store float 5.000000e+02, float* %altitude, align 8
  %items6 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items6, i64 0, i64 0
  %altitude_is_relative = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative, align 8
  %items8 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items8, i64 0, i64 1
  %lat10 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx9, i32 0, i32 0
  store double 5.100000e+01, double* %lat10, align 8
  %items11 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items11, i64 0, i64 1
  %lon13 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12, i32 0, i32 1
  store double 5.100000e+01, double* %lon13, align 8
  %items14 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items14, i64 0, i64 1
  %altitude16 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx15, i32 0, i32 2
  store float 1.000000e+01, float* %altitude16, align 8
  %items17 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items17, i64 0, i64 1
  %altitude_is_relative19 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx18, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative19, align 8
  %items20 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items20, i64 0, i64 2
  %lat22 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx21, i32 0, i32 0
  store double 5.200000e+01, double* %lat22, align 8
  %items23 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items23, i64 0, i64 2
  %lon25 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx24, i32 0, i32 1
  store double 5.200000e+01, double* %lon25, align 8
  %items26 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items26, i64 0, i64 2
  %altitude28 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx27, i32 0, i32 2
  store float 5.200000e+02, float* %altitude28, align 8
  %items29 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items29, i64 0, i64 2
  %altitude_is_relative31 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx30, i32 0, i32 4
  store i8 0, i8* %altitude_is_relative31, align 8
  call void @stg_begin_test()
  %0 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %home_lat, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %0, double 0.000000e+00, double 0.000000e+00)
  %items32 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items32, i64 0, i64 0
  %altitude34 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx33, i32 0, i32 2
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %items35 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items35, i64 0, i64 1
  %altitude37 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx36, i32 0, i32 2
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %items38 = getelementptr inbounds %struct.mission_s, %struct.mission_s* %mission, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items38, i64 0, i64 2
  %altitude40 = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx39, i32 0, i32 2
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable_float(float* %altitude40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %call = call zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sRfb(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %home_lat, i1 zeroext true)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isValid, align 1
  call void @stg_end_test()
  %4 = load i8, i8* %isValid, align 1
  %tobool = trunc i8 %4 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  call void @stg_record_test(i1 zeroext %cmp)
  store i8 0, i8* %ref.tmp, align 1
  call void @_ZN7testing8internal8EqHelper7CompareIbbLPv0EEENS_15AssertionResultEPKcS6_RKT_RKT0_(%"class.testing::AssertionResult"* sret %gtest_ar, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* dereferenceable(1) %ref.tmp, i8* dereferenceable(1) %isValid)
  %call41 = invoke zeroext i1 @_ZNK7testing15AssertionResultcvbEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call41, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  br label %if.end

lpad:                                             ; preds = %if.else, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup51

if.else:                                          ; preds = %invoke.cont
  invoke void @_ZN7testing7MessageC1Ev(%"class.testing::Message"* %ref.tmp42)
          to label %invoke.cont43 unwind label %lpad

invoke.cont43:                                    ; preds = %if.else
  %call47 = invoke i8* @_ZNK7testing15AssertionResult15failure_messageEv(%"class.testing::AssertionResult"* %gtest_ar)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont43
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(%"class.testing::internal::AssertHelper"* %ref.tmp44, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 461, i8* %call47)
          to label %invoke.cont48 unwind label %lpad45

invoke.cont48:                                    ; preds = %invoke.cont46
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(%"class.testing::internal::AssertHelper"* %ref.tmp44, %"class.testing::Message"* dereferenceable(8) %ref.tmp42)
          to label %invoke.cont50 unwind label %lpad49

invoke.cont50:                                    ; preds = %invoke.cont48
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp44) #14
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp42) #14
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad45:                                           ; preds = %invoke.cont46, %invoke.cont43
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad49:                                           ; preds = %invoke.cont48
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZN7testing8internal12AssertHelperD1Ev(%"class.testing::internal::AssertHelper"* %ref.tmp44) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad49, %lpad45
  call void @_ZN7testing7MessageD1Ev(%"class.testing::Message"* %ref.tmp42) #14
  br label %ehcleanup51

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %invoke.cont50
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

ehcleanup51:                                      ; preds = %ehcleanup, %lpad
  call void @_ZN7testing15AssertionResultD1Ev(%"class.testing::AssertionResult"* %gtest_ar) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup51
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val52 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val52

unreachable:                                      ; preds = %cleanup
  unreachable
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
define linkonce_odr void @_ZN31MissionCheck_CheckCombined_TestD1Ev(%class.MissionCheck_CheckCombined_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCheck_CheckCombined_Test*, align 8
  store %class.MissionCheck_CheckCombined_Test* %this, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %this1 = load %class.MissionCheck_CheckCombined_Test*, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  call void @_ZN31MissionCheck_CheckCombined_TestD2Ev(%class.MissionCheck_CheckCombined_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31MissionCheck_CheckCombined_TestD0Ev(%class.MissionCheck_CheckCombined_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCheck_CheckCombined_Test*, align 8
  store %class.MissionCheck_CheckCombined_Test* %this, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %this1 = load %class.MissionCheck_CheckCombined_Test*, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  call void @_ZN31MissionCheck_CheckCombined_TestD1Ev(%class.MissionCheck_CheckCombined_Test* %this1) #14
  %0 = bitcast %class.MissionCheck_CheckCombined_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
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
define linkonce_odr void @_ZN37MissionCommandCheck_ValidCommand_TestD1Ev(%class.MissionCommandCheck_ValidCommand_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_ValidCommand_Test*, align 8
  store %class.MissionCommandCheck_ValidCommand_Test* %this, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_ValidCommand_Test*, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  call void @_ZN37MissionCommandCheck_ValidCommand_TestD2Ev(%class.MissionCommandCheck_ValidCommand_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN37MissionCommandCheck_ValidCommand_TestD0Ev(%class.MissionCommandCheck_ValidCommand_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_ValidCommand_Test*, align 8
  store %class.MissionCommandCheck_ValidCommand_Test* %this, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_ValidCommand_Test*, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  call void @_ZN37MissionCommandCheck_ValidCommand_TestD1Ev(%class.MissionCommandCheck_ValidCommand_Test* %this1) #14
  %0 = bitcast %class.MissionCommandCheck_ValidCommand_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN39MissionCommandCheck_InValidCommand_TestD1Ev(%class.MissionCommandCheck_InValidCommand_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidCommand_Test*, align 8
  store %class.MissionCommandCheck_InValidCommand_Test* %this, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidCommand_Test*, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  call void @_ZN39MissionCommandCheck_InValidCommand_TestD2Ev(%class.MissionCommandCheck_InValidCommand_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN39MissionCommandCheck_InValidCommand_TestD0Ev(%class.MissionCommandCheck_InValidCommand_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidCommand_Test*, align 8
  store %class.MissionCommandCheck_InValidCommand_Test* %this, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidCommand_Test*, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  call void @_ZN39MissionCommandCheck_InValidCommand_TestD1Ev(%class.MissionCommandCheck_InValidCommand_Test* %this1) #14
  %0 = bitcast %class.MissionCommandCheck_InValidCommand_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN40MissionCommandCheck_InValidWaypoint_TestD1Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidWaypoint_Test*, align 8
  store %class.MissionCommandCheck_InValidWaypoint_Test* %this, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidWaypoint_Test*, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  call void @_ZN40MissionCommandCheck_InValidWaypoint_TestD2Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN40MissionCommandCheck_InValidWaypoint_TestD0Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidWaypoint_Test*, align 8
  store %class.MissionCommandCheck_InValidWaypoint_Test* %this, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidWaypoint_Test*, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  call void @_ZN40MissionCommandCheck_InValidWaypoint_TestD1Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this1) #14
  %0 = bitcast %class.MissionCommandCheck_InValidWaypoint_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN30CheckGeofence_InsideInclu_TestD1Ev(%class.CheckGeofence_InsideInclu_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideInclu_Test*, align 8
  store %class.CheckGeofence_InsideInclu_Test* %this, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideInclu_Test*, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  call void @_ZN30CheckGeofence_InsideInclu_TestD2Ev(%class.CheckGeofence_InsideInclu_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN30CheckGeofence_InsideInclu_TestD0Ev(%class.CheckGeofence_InsideInclu_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideInclu_Test*, align 8
  store %class.CheckGeofence_InsideInclu_Test* %this, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideInclu_Test*, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  call void @_ZN30CheckGeofence_InsideInclu_TestD1Ev(%class.CheckGeofence_InsideInclu_Test* %this1) #14
  %0 = bitcast %class.CheckGeofence_InsideInclu_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31CheckGeofence_OutsideInclu_TestD1Ev(%class.CheckGeofence_OutsideInclu_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideInclu_Test*, align 8
  store %class.CheckGeofence_OutsideInclu_Test* %this, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideInclu_Test*, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  call void @_ZN31CheckGeofence_OutsideInclu_TestD2Ev(%class.CheckGeofence_OutsideInclu_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31CheckGeofence_OutsideInclu_TestD0Ev(%class.CheckGeofence_OutsideInclu_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideInclu_Test*, align 8
  store %class.CheckGeofence_OutsideInclu_Test* %this, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideInclu_Test*, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  call void @_ZN31CheckGeofence_OutsideInclu_TestD1Ev(%class.CheckGeofence_OutsideInclu_Test* %this1) #14
  %0 = bitcast %class.CheckGeofence_OutsideInclu_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN29CheckGeofence_OutsideExc_TestD1Ev(%class.CheckGeofence_OutsideExc_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideExc_Test*, align 8
  store %class.CheckGeofence_OutsideExc_Test* %this, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideExc_Test*, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  call void @_ZN29CheckGeofence_OutsideExc_TestD2Ev(%class.CheckGeofence_OutsideExc_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN29CheckGeofence_OutsideExc_TestD0Ev(%class.CheckGeofence_OutsideExc_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideExc_Test*, align 8
  store %class.CheckGeofence_OutsideExc_Test* %this, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideExc_Test*, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  call void @_ZN29CheckGeofence_OutsideExc_TestD1Ev(%class.CheckGeofence_OutsideExc_Test* %this1) #14
  %0 = bitcast %class.CheckGeofence_OutsideExc_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN28CheckGeofence_InsideExc_TestD1Ev(%class.CheckGeofence_InsideExc_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideExc_Test*, align 8
  store %class.CheckGeofence_InsideExc_Test* %this, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideExc_Test*, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  call void @_ZN28CheckGeofence_InsideExc_TestD2Ev(%class.CheckGeofence_InsideExc_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN28CheckGeofence_InsideExc_TestD0Ev(%class.CheckGeofence_InsideExc_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideExc_Test*, align 8
  store %class.CheckGeofence_InsideExc_Test* %this, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideExc_Test*, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  call void @_ZN28CheckGeofence_InsideExc_TestD1Ev(%class.CheckGeofence_InsideExc_Test* %this1) #14
  %0 = bitcast %class.CheckGeofence_InsideExc_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33CheckGeofence_InsideTooHigh__TestD1Ev(%class.CheckGeofence_InsideTooHigh__Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh__Test*, align 8
  store %class.CheckGeofence_InsideTooHigh__Test* %this, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh__Test*, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  call void @_ZN33CheckGeofence_InsideTooHigh__TestD2Ev(%class.CheckGeofence_InsideTooHigh__Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33CheckGeofence_InsideTooHigh__TestD0Ev(%class.CheckGeofence_InsideTooHigh__Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh__Test*, align 8
  store %class.CheckGeofence_InsideTooHigh__Test* %this, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh__Test*, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  call void @_ZN33CheckGeofence_InsideTooHigh__TestD1Ev(%class.CheckGeofence_InsideTooHigh__Test* %this1) #14
  %0 = bitcast %class.CheckGeofence_InsideTooHigh__Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN32CheckGeofence_InsideTooHigh_TestD1Ev(%class.CheckGeofence_InsideTooHigh_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh_Test*, align 8
  store %class.CheckGeofence_InsideTooHigh_Test* %this, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh_Test*, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  call void @_ZN32CheckGeofence_InsideTooHigh_TestD2Ev(%class.CheckGeofence_InsideTooHigh_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN32CheckGeofence_InsideTooHigh_TestD0Ev(%class.CheckGeofence_InsideTooHigh_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh_Test*, align 8
  store %class.CheckGeofence_InsideTooHigh_Test* %this, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh_Test*, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  call void @_ZN32CheckGeofence_InsideTooHigh_TestD1Ev(%class.CheckGeofence_InsideTooHigh_Test* %this1) #14
  %0 = bitcast %class.CheckGeofence_InsideTooHigh_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN34CheckWayPoints_CloseWaypoints_TestD1Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_CloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_CloseWaypoints_Test* %this, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_CloseWaypoints_Test*, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  call void @_ZN34CheckWayPoints_CloseWaypoints_TestD2Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN34CheckWayPoints_CloseWaypoints_TestD0Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_CloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_CloseWaypoints_Test* %this, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_CloseWaypoints_Test*, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  call void @_ZN34CheckWayPoints_CloseWaypoints_TestD1Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this1) #14
  %0 = bitcast %class.CheckWayPoints_CloseWaypoints_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN37CheckWayPoints_TooCloseWaypoints_TestD1Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_TooCloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_TooCloseWaypoints_Test* %this, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_TooCloseWaypoints_Test*, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  call void @_ZN37CheckWayPoints_TooCloseWaypoints_TestD2Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN37CheckWayPoints_TooCloseWaypoints_TestD0Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_TooCloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_TooCloseWaypoints_Test* %this, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_TooCloseWaypoints_Test*, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  call void @_ZN37CheckWayPoints_TooCloseWaypoints_TestD1Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this1) #14
  %0 = bitcast %class.CheckWayPoints_TooCloseWaypoints_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN35CheckWayPoints_AltituteBreaker_TestD1Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_AltituteBreaker_Test*, align 8
  store %class.CheckWayPoints_AltituteBreaker_Test* %this, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_AltituteBreaker_Test*, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  call void @_ZN35CheckWayPoints_AltituteBreaker_TestD2Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN35CheckWayPoints_AltituteBreaker_TestD0Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_AltituteBreaker_Test*, align 8
  store %class.CheckWayPoints_AltituteBreaker_Test* %this, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_AltituteBreaker_Test*, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  call void @_ZN35CheckWayPoints_AltituteBreaker_TestD1Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this1) #14
  %0 = bitcast %class.CheckWayPoints_AltituteBreaker_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31CheckAltitute_ValidMission_TestD1Ev(%class.CheckAltitute_ValidMission_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_ValidMission_Test*, align 8
  store %class.CheckAltitute_ValidMission_Test* %this, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_ValidMission_Test*, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  call void @_ZN31CheckAltitute_ValidMission_TestD2Ev(%class.CheckAltitute_ValidMission_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31CheckAltitute_ValidMission_TestD0Ev(%class.CheckAltitute_ValidMission_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_ValidMission_Test*, align 8
  store %class.CheckAltitute_ValidMission_Test* %this, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_ValidMission_Test*, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  call void @_ZN31CheckAltitute_ValidMission_TestD1Ev(%class.CheckAltitute_ValidMission_Test* %this1) #14
  %0 = bitcast %class.CheckAltitute_ValidMission_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33CheckAltitute_InvalidMission_TestD1Ev(%class.CheckAltitute_InvalidMission_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission_Test*, align 8
  store %class.CheckAltitute_InvalidMission_Test* %this, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission_Test*, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  call void @_ZN33CheckAltitute_InvalidMission_TestD2Ev(%class.CheckAltitute_InvalidMission_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33CheckAltitute_InvalidMission_TestD0Ev(%class.CheckAltitute_InvalidMission_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission_Test*, align 8
  store %class.CheckAltitute_InvalidMission_Test* %this, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission_Test*, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  call void @_ZN33CheckAltitute_InvalidMission_TestD1Ev(%class.CheckAltitute_InvalidMission_Test* %this1) #14
  %0 = bitcast %class.CheckAltitute_InvalidMission_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD1Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, align 8
  store %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  call void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD2Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD0Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, align 8
  store %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  call void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD1Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1) #14
  %0 = bitcast %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
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
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEC2Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
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
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED1Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED2Ev(%"class.testing::internal::TestFactoryImpl"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED0Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED1Ev(%"class.testing::internal::TestFactoryImpl"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.MissionCheck_CheckCombined_Test*
  invoke void @_ZN31MissionCheck_CheckCombined_TestC1Ev(%class.MissionCheck_CheckCombined_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.MissionCheck_CheckCombined_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
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
  call void @llvm.trap() #16
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
  call void @llvm.trap() #16
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #8

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31MissionCheck_CheckCombined_TestED2Ev(%"class.testing::internal::TestFactoryImpl"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl"*, align 8
  store %"class.testing::internal::TestFactoryImpl"* %this, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl"*, %"class.testing::internal::TestFactoryImpl"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
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
define linkonce_odr void @_ZN31MissionCheck_CheckCombined_TestC1Ev(%class.MissionCheck_CheckCombined_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCheck_CheckCombined_Test*, align 8
  store %class.MissionCheck_CheckCombined_Test* %this, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %this1 = load %class.MissionCheck_CheckCombined_Test*, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  call void @_ZN31MissionCheck_CheckCombined_TestC2Ev(%class.MissionCheck_CheckCombined_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN31MissionCheck_CheckCombined_TestC2Ev(%class.MissionCheck_CheckCombined_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCheck_CheckCombined_Test*, align 8
  store %class.MissionCheck_CheckCombined_Test* %this, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %this1 = load %class.MissionCheck_CheckCombined_Test*, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCheck_CheckCombined_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.MissionCheck_CheckCombined_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV31MissionCheck_CheckCombined_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
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
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %file) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i8* @_ZNK7testing15AssertionResult7messageEv(%"class.testing::AssertionResult"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr, align 8
  %this1 = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr, align 8
  %message_ = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1, i32 0, i32 1
  %call = call %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv(%"class.std::__1::unique_ptr.23"* %message_) #14
  %cmp = icmp ne %"class.std::__1::basic_string"* %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %message_2 = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1, i32 0, i32 1
  %call3 = call %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv(%"class.std::__1::unique_ptr.23"* %message_2) #14
  %call4 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %call3) #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE3getEv(%"class.std::__1::unique_ptr.23"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr_) #14
  %0 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %call, align 8
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %"class.std::__1::basic_string"* @_ZNKSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEEptEv(%"class.std::__1::unique_ptr.23"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr_) #14
  %0 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %call, align 8
  ret %"class.std::__1::basic_string"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %this1) #14
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.24"*, align 8
  store %"class.std::__1::__compressed_pair.24"* %this, %"class.std::__1::__compressed_pair.24"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.24"*, %"class.std::__1::__compressed_pair.24"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.24"* %this1 to %"struct.std::__1::__compressed_pair_elem.25"*
  %call = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %0) #14
  ret %"class.std::__1::basic_string"** %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %this, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.25", %"struct.std::__1::__compressed_pair_elem.25"* %this1, i32 0, i32 0
  ret %"class.std::__1::basic_string"** %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv(%"class.std::__1::basic_string"* %this1) #14
  %call2 = call i8* @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_(i8* %call) #14
  ret i8* %call2
}

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
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #14
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv(%"class.std::__1::basic_string"* %this1) #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1) #14
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
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
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
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
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
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s, i32 0, i32 1
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_(i8* dereferenceable(1) %arrayidx) #14
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #14
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
  %call = call i8* @_ZNSt3__1L9addressofIKcEEPT_RS2_(i8* dereferenceable(1) %0) #14
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
define linkonce_odr void @_ZN7testing7MessageD2Ev(%"class.testing::Message"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::Message"*, align 8
  store %"class.testing::Message"* %this, %"class.testing::Message"** %this.addr, align 8
  %this1 = load %"class.testing::Message"*, %"class.testing::Message"** %this.addr, align 8
  %ss_ = getelementptr inbounds %"class.testing::Message", %"class.testing::Message"* %this1, i32 0, i32 0
  call void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.29"* %ss_) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.29"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.29"*, align 8
  store %"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::unique_ptr.29"** %this.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.29"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.29"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.29"*, align 8
  store %"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::unique_ptr.29"** %this.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.29"* %this1, %"class.std::__1::basic_stringstream"* null) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::basic_stringstream"* %__p) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.29"*, align 8
  %__p.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  %__tmp = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::unique_ptr.29"* %this, %"class.std::__1::unique_ptr.29"** %this.addr, align 8
  store %"class.std::__1::basic_stringstream"* %__p, %"class.std::__1::basic_stringstream"** %__p.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.29"*, %"class.std::__1::unique_ptr.29"** %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.30"* %__ptr_) #14
  %0 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %call, align 8
  store %"class.std::__1::basic_stringstream"* %0, %"class.std::__1::basic_stringstream"** %__tmp, align 8
  %1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1, i32 0, i32 0
  %call3 = call dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.30"* %__ptr_2) #14
  store %"class.std::__1::basic_stringstream"* %1, %"class.std::__1::basic_stringstream"** %call3, align 8
  %2 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__tmp, align 8
  %tobool = icmp ne %"class.std::__1::basic_stringstream"* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr.29", %"class.std::__1::unique_ptr.29"* %this1, i32 0, i32 0
  %call5 = call dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.30"* %__ptr_4) #14
  %3 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__tmp, align 8
  call void @_ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.33"* %call5, %"class.std::__1::basic_stringstream"* %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.30"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  store %"class.std::__1::__compressed_pair.30"* %this, %"class.std::__1::__compressed_pair.30"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.30"* %this1 to %"struct.std::__1::__compressed_pair_elem.31"*
  %call = call dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %0) #14
  ret %"class.std::__1::basic_stringstream"** %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__117__compressed_pairIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.30"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.30"*, align 8
  store %"class.std::__1::__compressed_pair.30"* %this, %"class.std::__1::__compressed_pair.30"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.30"*, %"class.std::__1::__compressed_pair.30"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.30"* %this1 to %"struct.std::__1::__compressed_pair_elem.32"*
  %call = call dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.32"* %0) #14
  ret %"struct.std::__1::default_delete.33"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNKSt3__114default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.33"* %this, %"class.std::__1::basic_stringstream"* %__ptr) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::default_delete.33"*, align 8
  %__ptr.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"struct.std::__1::default_delete.33"* %this, %"struct.std::__1::default_delete.33"** %this.addr, align 8
  store %"class.std::__1::basic_stringstream"* %__ptr, %"class.std::__1::basic_stringstream"** %__ptr.addr, align 8
  %this1 = load %"struct.std::__1::default_delete.33"*, %"struct.std::__1::default_delete.33"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %__ptr.addr, align 8
  %isnull = icmp eq %"class.std::__1::basic_stringstream"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"class.std::__1::basic_stringstream"* %0 to void (%"class.std::__1::basic_stringstream"*)***
  %vtable = load void (%"class.std::__1::basic_stringstream"*)**, void (%"class.std::__1::basic_stringstream"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.std::__1::basic_stringstream"*)*, void (%"class.std::__1::basic_stringstream"*)** %vtable, i64 1
  %2 = load void (%"class.std::__1::basic_stringstream"*)*, void (%"class.std::__1::basic_stringstream"*)** %vfn, align 8
  call void %2(%"class.std::__1::basic_stringstream"* %0) #14
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_stringstream"** @_ZNSt3__122__compressed_pair_elemIPNS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.31"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.31"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.31"* %this, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.31"*, %"struct.std::__1::__compressed_pair_elem.31"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.31", %"struct.std::__1::__compressed_pair_elem.31"* %this1, i32 0, i32 0
  ret %"class.std::__1::basic_stringstream"** %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.33"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.32"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.32"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.32"* %this, %"struct.std::__1::__compressed_pair_elem.32"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.32"*, %"struct.std::__1::__compressed_pair_elem.32"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.32"* %this1 to %"struct.std::__1::default_delete.33"*
  ret %"struct.std::__1::default_delete.33"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing15AssertionResultD2Ev(%"class.testing::AssertionResult"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::AssertionResult"*, align 8
  store %"class.testing::AssertionResult"* %this, %"class.testing::AssertionResult"** %this.addr, align 8
  %this1 = load %"class.testing::AssertionResult"*, %"class.testing::AssertionResult"** %this.addr, align 8
  %message_ = getelementptr inbounds %"class.testing::AssertionResult", %"class.testing::AssertionResult"* %this1, i32 0, i32 1
  call void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.23"* %message_) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED1Ev(%"class.std::__1::unique_ptr.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.23"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEED2Ev(%"class.std::__1::unique_ptr.23"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.23"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.23"* %this1, %"class.std::__1::basic_string"* null) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__110unique_ptrINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5resetEPS6_(%"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::basic_string"* %__p) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::unique_ptr.23"*, align 8
  %__p.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__tmp = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::unique_ptr.23"* %this, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  store %"class.std::__1::basic_string"* %__p, %"class.std::__1::basic_string"** %__p.addr, align 8
  %this1 = load %"class.std::__1::unique_ptr.23"*, %"class.std::__1::unique_ptr.23"** %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr_) #14
  %0 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %call, align 8
  store %"class.std::__1::basic_string"* %0, %"class.std::__1::basic_string"** %__tmp, align 8
  %1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1, i32 0, i32 0
  %call3 = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %__ptr_2) #14
  store %"class.std::__1::basic_string"* %1, %"class.std::__1::basic_string"** %call3, align 8
  %2 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__tmp, align 8
  %tobool = icmp ne %"class.std::__1::basic_string"* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr.23", %"class.std::__1::unique_ptr.23"* %this1, i32 0, i32 0
  %call5 = call dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.24"* %__ptr_4) #14
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__tmp, align 8
  call void @_ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.27"* %call5, %"class.std::__1::basic_string"* %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE5firstEv(%"class.std::__1::__compressed_pair.24"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.24"*, align 8
  store %"class.std::__1::__compressed_pair.24"* %this, %"class.std::__1::__compressed_pair.24"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.24"*, %"class.std::__1::__compressed_pair.24"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.24"* %this1 to %"struct.std::__1::__compressed_pair_elem.25"*
  %call = call dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %0) #14
  ret %"class.std::__1::basic_string"** %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_14default_deleteIS6_EEE6secondEv(%"class.std::__1::__compressed_pair.24"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair.24"*, align 8
  store %"class.std::__1::__compressed_pair.24"* %this, %"class.std::__1::__compressed_pair.24"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair.24"*, %"class.std::__1::__compressed_pair.24"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair.24"* %this1 to %"struct.std::__1::__compressed_pair_elem.26"*
  %call = call dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.26"* %0) #14
  ret %"struct.std::__1::default_delete.27"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNKSt3__114default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclEPS6_(%"struct.std::__1::default_delete.27"* %this, %"class.std::__1::basic_string"* %__ptr) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::default_delete.27"*, align 8
  %__ptr.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"struct.std::__1::default_delete.27"* %this, %"struct.std::__1::default_delete.27"** %this.addr, align 8
  store %"class.std::__1::basic_string"* %__ptr, %"class.std::__1::basic_string"** %__ptr.addr, align 8
  %this1 = load %"struct.std::__1::default_delete.27"*, %"struct.std::__1::default_delete.27"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %__ptr.addr, align 8
  %isnull = icmp eq %"class.std::__1::basic_string"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %0) #14
  %1 = bitcast %"class.std::__1::basic_string"* %0 to i8*
  call void @_ZdlPv(i8* %1) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(8) %"class.std::__1::basic_string"** @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %this, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.25", %"struct.std::__1::__compressed_pair_elem.25"* %this1, i32 0, i32 0
  ret %"class.std::__1::basic_string"** %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"struct.std::__1::default_delete.27"* @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.26"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.26"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.26"* %this, %"struct.std::__1::__compressed_pair_elem.26"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.26"*, %"struct.std::__1::__compressed_pair_elem.26"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.26"* %this1 to %"struct.std::__1::default_delete.27"*
  ret %"struct.std::__1::default_delete.27"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.35"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.35"*, align 8
  store %"class.testing::internal::TestFactoryImpl.35"* %this, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.35"*, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.35"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.35"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED1Ev(%"class.testing::internal::TestFactoryImpl.35"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.35"*, align 8
  store %"class.testing::internal::TestFactoryImpl.35"* %this, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.35"*, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED2Ev(%"class.testing::internal::TestFactoryImpl.35"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED0Ev(%"class.testing::internal::TestFactoryImpl.35"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.35"*, align 8
  store %"class.testing::internal::TestFactoryImpl.35"* %this, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.35"*, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED1Ev(%"class.testing::internal::TestFactoryImpl.35"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.35"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.35"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.35"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.35"* %this, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.35"*, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.MissionCommandCheck_ValidCommand_Test*
  invoke void @_ZN37MissionCommandCheck_ValidCommand_TestC1Ev(%class.MissionCommandCheck_ValidCommand_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.MissionCommandCheck_ValidCommand_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37MissionCommandCheck_ValidCommand_TestED2Ev(%"class.testing::internal::TestFactoryImpl.35"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.35"*, align 8
  store %"class.testing::internal::TestFactoryImpl.35"* %this, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.35"*, %"class.testing::internal::TestFactoryImpl.35"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.35"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN37MissionCommandCheck_ValidCommand_TestC1Ev(%class.MissionCommandCheck_ValidCommand_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_ValidCommand_Test*, align 8
  store %class.MissionCommandCheck_ValidCommand_Test* %this, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_ValidCommand_Test*, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  call void @_ZN37MissionCommandCheck_ValidCommand_TestC2Ev(%class.MissionCommandCheck_ValidCommand_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN37MissionCommandCheck_ValidCommand_TestC2Ev(%class.MissionCommandCheck_ValidCommand_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_ValidCommand_Test*, align 8
  store %class.MissionCommandCheck_ValidCommand_Test* %this, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_ValidCommand_Test*, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCommandCheck_ValidCommand_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.MissionCommandCheck_ValidCommand_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV37MissionCommandCheck_ValidCommand_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.36"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.36"*, align 8
  store %"class.testing::internal::TestFactoryImpl.36"* %this, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.36"*, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.36"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.36"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED1Ev(%"class.testing::internal::TestFactoryImpl.36"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.36"*, align 8
  store %"class.testing::internal::TestFactoryImpl.36"* %this, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.36"*, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED2Ev(%"class.testing::internal::TestFactoryImpl.36"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED0Ev(%"class.testing::internal::TestFactoryImpl.36"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.36"*, align 8
  store %"class.testing::internal::TestFactoryImpl.36"* %this, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.36"*, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED1Ev(%"class.testing::internal::TestFactoryImpl.36"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.36"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.36"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.36"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.36"* %this, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.36"*, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.MissionCommandCheck_InValidCommand_Test*
  invoke void @_ZN39MissionCommandCheck_InValidCommand_TestC1Ev(%class.MissionCommandCheck_InValidCommand_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.MissionCommandCheck_InValidCommand_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI39MissionCommandCheck_InValidCommand_TestED2Ev(%"class.testing::internal::TestFactoryImpl.36"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.36"*, align 8
  store %"class.testing::internal::TestFactoryImpl.36"* %this, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.36"*, %"class.testing::internal::TestFactoryImpl.36"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.36"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN39MissionCommandCheck_InValidCommand_TestC1Ev(%class.MissionCommandCheck_InValidCommand_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidCommand_Test*, align 8
  store %class.MissionCommandCheck_InValidCommand_Test* %this, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidCommand_Test*, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  call void @_ZN39MissionCommandCheck_InValidCommand_TestC2Ev(%class.MissionCommandCheck_InValidCommand_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN39MissionCommandCheck_InValidCommand_TestC2Ev(%class.MissionCommandCheck_InValidCommand_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidCommand_Test*, align 8
  store %class.MissionCommandCheck_InValidCommand_Test* %this, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidCommand_Test*, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCommandCheck_InValidCommand_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.MissionCommandCheck_InValidCommand_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV39MissionCommandCheck_InValidCommand_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.37"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.37"*, align 8
  store %"class.testing::internal::TestFactoryImpl.37"* %this, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.37"*, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.37"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.37"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED1Ev(%"class.testing::internal::TestFactoryImpl.37"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.37"*, align 8
  store %"class.testing::internal::TestFactoryImpl.37"* %this, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.37"*, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED2Ev(%"class.testing::internal::TestFactoryImpl.37"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED0Ev(%"class.testing::internal::TestFactoryImpl.37"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.37"*, align 8
  store %"class.testing::internal::TestFactoryImpl.37"* %this, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.37"*, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED1Ev(%"class.testing::internal::TestFactoryImpl.37"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.37"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.37"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.37"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.37"* %this, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.37"*, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.MissionCommandCheck_InValidWaypoint_Test*
  invoke void @_ZN40MissionCommandCheck_InValidWaypoint_TestC1Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.MissionCommandCheck_InValidWaypoint_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI40MissionCommandCheck_InValidWaypoint_TestED2Ev(%"class.testing::internal::TestFactoryImpl.37"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.37"*, align 8
  store %"class.testing::internal::TestFactoryImpl.37"* %this, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.37"*, %"class.testing::internal::TestFactoryImpl.37"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.37"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN40MissionCommandCheck_InValidWaypoint_TestC1Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidWaypoint_Test*, align 8
  store %class.MissionCommandCheck_InValidWaypoint_Test* %this, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidWaypoint_Test*, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  call void @_ZN40MissionCommandCheck_InValidWaypoint_TestC2Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN40MissionCommandCheck_InValidWaypoint_TestC2Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidWaypoint_Test*, align 8
  store %class.MissionCommandCheck_InValidWaypoint_Test* %this, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidWaypoint_Test*, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCommandCheck_InValidWaypoint_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.MissionCommandCheck_InValidWaypoint_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV40MissionCommandCheck_InValidWaypoint_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.38"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.38"*, align 8
  store %"class.testing::internal::TestFactoryImpl.38"* %this, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.38"*, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.38"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.38"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED1Ev(%"class.testing::internal::TestFactoryImpl.38"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.38"*, align 8
  store %"class.testing::internal::TestFactoryImpl.38"* %this, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.38"*, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED2Ev(%"class.testing::internal::TestFactoryImpl.38"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED0Ev(%"class.testing::internal::TestFactoryImpl.38"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.38"*, align 8
  store %"class.testing::internal::TestFactoryImpl.38"* %this, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.38"*, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED1Ev(%"class.testing::internal::TestFactoryImpl.38"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.38"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.38"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.38"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.38"* %this, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.38"*, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckGeofence_InsideInclu_Test*
  invoke void @_ZN30CheckGeofence_InsideInclu_TestC1Ev(%class.CheckGeofence_InsideInclu_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckGeofence_InsideInclu_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI30CheckGeofence_InsideInclu_TestED2Ev(%"class.testing::internal::TestFactoryImpl.38"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.38"*, align 8
  store %"class.testing::internal::TestFactoryImpl.38"* %this, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.38"*, %"class.testing::internal::TestFactoryImpl.38"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.38"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN30CheckGeofence_InsideInclu_TestC1Ev(%class.CheckGeofence_InsideInclu_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideInclu_Test*, align 8
  store %class.CheckGeofence_InsideInclu_Test* %this, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideInclu_Test*, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  call void @_ZN30CheckGeofence_InsideInclu_TestC2Ev(%class.CheckGeofence_InsideInclu_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN30CheckGeofence_InsideInclu_TestC2Ev(%class.CheckGeofence_InsideInclu_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideInclu_Test*, align 8
  store %class.CheckGeofence_InsideInclu_Test* %this, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideInclu_Test*, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideInclu_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckGeofence_InsideInclu_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV30CheckGeofence_InsideInclu_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.39"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.39"*, align 8
  store %"class.testing::internal::TestFactoryImpl.39"* %this, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.39"*, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.39"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.39"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED1Ev(%"class.testing::internal::TestFactoryImpl.39"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.39"*, align 8
  store %"class.testing::internal::TestFactoryImpl.39"* %this, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.39"*, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED2Ev(%"class.testing::internal::TestFactoryImpl.39"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED0Ev(%"class.testing::internal::TestFactoryImpl.39"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.39"*, align 8
  store %"class.testing::internal::TestFactoryImpl.39"* %this, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.39"*, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED1Ev(%"class.testing::internal::TestFactoryImpl.39"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.39"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.39"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.39"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.39"* %this, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.39"*, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckGeofence_OutsideInclu_Test*
  invoke void @_ZN31CheckGeofence_OutsideInclu_TestC1Ev(%class.CheckGeofence_OutsideInclu_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckGeofence_OutsideInclu_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckGeofence_OutsideInclu_TestED2Ev(%"class.testing::internal::TestFactoryImpl.39"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.39"*, align 8
  store %"class.testing::internal::TestFactoryImpl.39"* %this, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.39"*, %"class.testing::internal::TestFactoryImpl.39"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.39"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN31CheckGeofence_OutsideInclu_TestC1Ev(%class.CheckGeofence_OutsideInclu_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideInclu_Test*, align 8
  store %class.CheckGeofence_OutsideInclu_Test* %this, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideInclu_Test*, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  call void @_ZN31CheckGeofence_OutsideInclu_TestC2Ev(%class.CheckGeofence_OutsideInclu_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN31CheckGeofence_OutsideInclu_TestC2Ev(%class.CheckGeofence_OutsideInclu_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideInclu_Test*, align 8
  store %class.CheckGeofence_OutsideInclu_Test* %this, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideInclu_Test*, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_OutsideInclu_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckGeofence_OutsideInclu_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV31CheckGeofence_OutsideInclu_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.40"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.40"*, align 8
  store %"class.testing::internal::TestFactoryImpl.40"* %this, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.40"*, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.40"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.40"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED1Ev(%"class.testing::internal::TestFactoryImpl.40"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.40"*, align 8
  store %"class.testing::internal::TestFactoryImpl.40"* %this, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.40"*, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED2Ev(%"class.testing::internal::TestFactoryImpl.40"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED0Ev(%"class.testing::internal::TestFactoryImpl.40"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.40"*, align 8
  store %"class.testing::internal::TestFactoryImpl.40"* %this, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.40"*, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED1Ev(%"class.testing::internal::TestFactoryImpl.40"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.40"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.40"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.40"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.40"* %this, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.40"*, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckGeofence_OutsideExc_Test*
  invoke void @_ZN29CheckGeofence_OutsideExc_TestC1Ev(%class.CheckGeofence_OutsideExc_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckGeofence_OutsideExc_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI29CheckGeofence_OutsideExc_TestED2Ev(%"class.testing::internal::TestFactoryImpl.40"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.40"*, align 8
  store %"class.testing::internal::TestFactoryImpl.40"* %this, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.40"*, %"class.testing::internal::TestFactoryImpl.40"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.40"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN29CheckGeofence_OutsideExc_TestC1Ev(%class.CheckGeofence_OutsideExc_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideExc_Test*, align 8
  store %class.CheckGeofence_OutsideExc_Test* %this, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideExc_Test*, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  call void @_ZN29CheckGeofence_OutsideExc_TestC2Ev(%class.CheckGeofence_OutsideExc_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN29CheckGeofence_OutsideExc_TestC2Ev(%class.CheckGeofence_OutsideExc_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideExc_Test*, align 8
  store %class.CheckGeofence_OutsideExc_Test* %this, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideExc_Test*, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_OutsideExc_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckGeofence_OutsideExc_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV29CheckGeofence_OutsideExc_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.41"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.41"*, align 8
  store %"class.testing::internal::TestFactoryImpl.41"* %this, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.41"*, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.41"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.41"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED1Ev(%"class.testing::internal::TestFactoryImpl.41"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.41"*, align 8
  store %"class.testing::internal::TestFactoryImpl.41"* %this, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.41"*, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED2Ev(%"class.testing::internal::TestFactoryImpl.41"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED0Ev(%"class.testing::internal::TestFactoryImpl.41"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.41"*, align 8
  store %"class.testing::internal::TestFactoryImpl.41"* %this, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.41"*, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED1Ev(%"class.testing::internal::TestFactoryImpl.41"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.41"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.41"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.41"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.41"* %this, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.41"*, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckGeofence_InsideExc_Test*
  invoke void @_ZN28CheckGeofence_InsideExc_TestC1Ev(%class.CheckGeofence_InsideExc_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckGeofence_InsideExc_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI28CheckGeofence_InsideExc_TestED2Ev(%"class.testing::internal::TestFactoryImpl.41"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.41"*, align 8
  store %"class.testing::internal::TestFactoryImpl.41"* %this, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.41"*, %"class.testing::internal::TestFactoryImpl.41"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.41"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN28CheckGeofence_InsideExc_TestC1Ev(%class.CheckGeofence_InsideExc_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideExc_Test*, align 8
  store %class.CheckGeofence_InsideExc_Test* %this, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideExc_Test*, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  call void @_ZN28CheckGeofence_InsideExc_TestC2Ev(%class.CheckGeofence_InsideExc_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN28CheckGeofence_InsideExc_TestC2Ev(%class.CheckGeofence_InsideExc_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideExc_Test*, align 8
  store %class.CheckGeofence_InsideExc_Test* %this, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideExc_Test*, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideExc_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckGeofence_InsideExc_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV28CheckGeofence_InsideExc_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEC2Ev(%"class.testing::internal::TestFactoryImpl.42"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.42"*, align 8
  store %"class.testing::internal::TestFactoryImpl.42"* %this, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.42"*, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.42"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.42"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED1Ev(%"class.testing::internal::TestFactoryImpl.42"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.42"*, align 8
  store %"class.testing::internal::TestFactoryImpl.42"* %this, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.42"*, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED2Ev(%"class.testing::internal::TestFactoryImpl.42"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED0Ev(%"class.testing::internal::TestFactoryImpl.42"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.42"*, align 8
  store %"class.testing::internal::TestFactoryImpl.42"* %this, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.42"*, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED1Ev(%"class.testing::internal::TestFactoryImpl.42"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.42"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.42"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.42"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.42"* %this, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.42"*, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckGeofence_InsideTooHigh__Test*
  invoke void @_ZN33CheckGeofence_InsideTooHigh__TestC1Ev(%class.CheckGeofence_InsideTooHigh__Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckGeofence_InsideTooHigh__Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckGeofence_InsideTooHigh__TestED2Ev(%"class.testing::internal::TestFactoryImpl.42"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.42"*, align 8
  store %"class.testing::internal::TestFactoryImpl.42"* %this, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.42"*, %"class.testing::internal::TestFactoryImpl.42"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.42"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN33CheckGeofence_InsideTooHigh__TestC1Ev(%class.CheckGeofence_InsideTooHigh__Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh__Test*, align 8
  store %class.CheckGeofence_InsideTooHigh__Test* %this, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh__Test*, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  call void @_ZN33CheckGeofence_InsideTooHigh__TestC2Ev(%class.CheckGeofence_InsideTooHigh__Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN33CheckGeofence_InsideTooHigh__TestC2Ev(%class.CheckGeofence_InsideTooHigh__Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh__Test*, align 8
  store %class.CheckGeofence_InsideTooHigh__Test* %this, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh__Test*, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideTooHigh__Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckGeofence_InsideTooHigh__Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV33CheckGeofence_InsideTooHigh__Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.43"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.43"*, align 8
  store %"class.testing::internal::TestFactoryImpl.43"* %this, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.43"*, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.43"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.43"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED1Ev(%"class.testing::internal::TestFactoryImpl.43"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.43"*, align 8
  store %"class.testing::internal::TestFactoryImpl.43"* %this, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.43"*, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED2Ev(%"class.testing::internal::TestFactoryImpl.43"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED0Ev(%"class.testing::internal::TestFactoryImpl.43"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.43"*, align 8
  store %"class.testing::internal::TestFactoryImpl.43"* %this, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.43"*, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED1Ev(%"class.testing::internal::TestFactoryImpl.43"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.43"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.43"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.43"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.43"* %this, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.43"*, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckGeofence_InsideTooHigh_Test*
  invoke void @_ZN32CheckGeofence_InsideTooHigh_TestC1Ev(%class.CheckGeofence_InsideTooHigh_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckGeofence_InsideTooHigh_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI32CheckGeofence_InsideTooHigh_TestED2Ev(%"class.testing::internal::TestFactoryImpl.43"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.43"*, align 8
  store %"class.testing::internal::TestFactoryImpl.43"* %this, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.43"*, %"class.testing::internal::TestFactoryImpl.43"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.43"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN32CheckGeofence_InsideTooHigh_TestC1Ev(%class.CheckGeofence_InsideTooHigh_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh_Test*, align 8
  store %class.CheckGeofence_InsideTooHigh_Test* %this, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh_Test*, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  call void @_ZN32CheckGeofence_InsideTooHigh_TestC2Ev(%class.CheckGeofence_InsideTooHigh_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN32CheckGeofence_InsideTooHigh_TestC2Ev(%class.CheckGeofence_InsideTooHigh_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh_Test*, align 8
  store %class.CheckGeofence_InsideTooHigh_Test* %this, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh_Test*, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideTooHigh_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckGeofence_InsideTooHigh_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV32CheckGeofence_InsideTooHigh_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.44"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.44"*, align 8
  store %"class.testing::internal::TestFactoryImpl.44"* %this, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.44"*, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.44"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.44"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED1Ev(%"class.testing::internal::TestFactoryImpl.44"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.44"*, align 8
  store %"class.testing::internal::TestFactoryImpl.44"* %this, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.44"*, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED2Ev(%"class.testing::internal::TestFactoryImpl.44"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED0Ev(%"class.testing::internal::TestFactoryImpl.44"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.44"*, align 8
  store %"class.testing::internal::TestFactoryImpl.44"* %this, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.44"*, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED1Ev(%"class.testing::internal::TestFactoryImpl.44"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.44"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.44"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.44"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.44"* %this, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.44"*, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckWayPoints_CloseWaypoints_Test*
  invoke void @_ZN34CheckWayPoints_CloseWaypoints_TestC1Ev(%class.CheckWayPoints_CloseWaypoints_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckWayPoints_CloseWaypoints_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI34CheckWayPoints_CloseWaypoints_TestED2Ev(%"class.testing::internal::TestFactoryImpl.44"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.44"*, align 8
  store %"class.testing::internal::TestFactoryImpl.44"* %this, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.44"*, %"class.testing::internal::TestFactoryImpl.44"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.44"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN34CheckWayPoints_CloseWaypoints_TestC1Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_CloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_CloseWaypoints_Test* %this, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_CloseWaypoints_Test*, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  call void @_ZN34CheckWayPoints_CloseWaypoints_TestC2Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN34CheckWayPoints_CloseWaypoints_TestC2Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_CloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_CloseWaypoints_Test* %this, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_CloseWaypoints_Test*, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %0 = bitcast %class.CheckWayPoints_CloseWaypoints_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckWayPoints_CloseWaypoints_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV34CheckWayPoints_CloseWaypoints_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.45"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.45"*, align 8
  store %"class.testing::internal::TestFactoryImpl.45"* %this, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.45"*, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.45"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.45"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED1Ev(%"class.testing::internal::TestFactoryImpl.45"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.45"*, align 8
  store %"class.testing::internal::TestFactoryImpl.45"* %this, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.45"*, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED2Ev(%"class.testing::internal::TestFactoryImpl.45"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED0Ev(%"class.testing::internal::TestFactoryImpl.45"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.45"*, align 8
  store %"class.testing::internal::TestFactoryImpl.45"* %this, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.45"*, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED1Ev(%"class.testing::internal::TestFactoryImpl.45"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.45"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.45"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.45"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.45"* %this, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.45"*, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckWayPoints_TooCloseWaypoints_Test*
  invoke void @_ZN37CheckWayPoints_TooCloseWaypoints_TestC1Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckWayPoints_TooCloseWaypoints_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI37CheckWayPoints_TooCloseWaypoints_TestED2Ev(%"class.testing::internal::TestFactoryImpl.45"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.45"*, align 8
  store %"class.testing::internal::TestFactoryImpl.45"* %this, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.45"*, %"class.testing::internal::TestFactoryImpl.45"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.45"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN37CheckWayPoints_TooCloseWaypoints_TestC1Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_TooCloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_TooCloseWaypoints_Test* %this, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_TooCloseWaypoints_Test*, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  call void @_ZN37CheckWayPoints_TooCloseWaypoints_TestC2Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN37CheckWayPoints_TooCloseWaypoints_TestC2Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_TooCloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_TooCloseWaypoints_Test* %this, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_TooCloseWaypoints_Test*, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %0 = bitcast %class.CheckWayPoints_TooCloseWaypoints_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckWayPoints_TooCloseWaypoints_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV37CheckWayPoints_TooCloseWaypoints_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.46"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.46"*, align 8
  store %"class.testing::internal::TestFactoryImpl.46"* %this, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.46"*, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.46"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.46"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED1Ev(%"class.testing::internal::TestFactoryImpl.46"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.46"*, align 8
  store %"class.testing::internal::TestFactoryImpl.46"* %this, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.46"*, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED2Ev(%"class.testing::internal::TestFactoryImpl.46"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED0Ev(%"class.testing::internal::TestFactoryImpl.46"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.46"*, align 8
  store %"class.testing::internal::TestFactoryImpl.46"* %this, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.46"*, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED1Ev(%"class.testing::internal::TestFactoryImpl.46"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.46"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.46"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.46"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.46"* %this, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.46"*, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckWayPoints_AltituteBreaker_Test*
  invoke void @_ZN35CheckWayPoints_AltituteBreaker_TestC1Ev(%class.CheckWayPoints_AltituteBreaker_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckWayPoints_AltituteBreaker_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI35CheckWayPoints_AltituteBreaker_TestED2Ev(%"class.testing::internal::TestFactoryImpl.46"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.46"*, align 8
  store %"class.testing::internal::TestFactoryImpl.46"* %this, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.46"*, %"class.testing::internal::TestFactoryImpl.46"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.46"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN35CheckWayPoints_AltituteBreaker_TestC1Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_AltituteBreaker_Test*, align 8
  store %class.CheckWayPoints_AltituteBreaker_Test* %this, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_AltituteBreaker_Test*, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  call void @_ZN35CheckWayPoints_AltituteBreaker_TestC2Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN35CheckWayPoints_AltituteBreaker_TestC2Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_AltituteBreaker_Test*, align 8
  store %class.CheckWayPoints_AltituteBreaker_Test* %this, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_AltituteBreaker_Test*, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %0 = bitcast %class.CheckWayPoints_AltituteBreaker_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckWayPoints_AltituteBreaker_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV35CheckWayPoints_AltituteBreaker_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.47"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.47"*, align 8
  store %"class.testing::internal::TestFactoryImpl.47"* %this, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.47"*, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.47"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.47"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED1Ev(%"class.testing::internal::TestFactoryImpl.47"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.47"*, align 8
  store %"class.testing::internal::TestFactoryImpl.47"* %this, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.47"*, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED2Ev(%"class.testing::internal::TestFactoryImpl.47"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED0Ev(%"class.testing::internal::TestFactoryImpl.47"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.47"*, align 8
  store %"class.testing::internal::TestFactoryImpl.47"* %this, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.47"*, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED1Ev(%"class.testing::internal::TestFactoryImpl.47"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.47"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.47"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.47"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.47"* %this, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.47"*, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckAltitute_ValidMission_Test*
  invoke void @_ZN31CheckAltitute_ValidMission_TestC1Ev(%class.CheckAltitute_ValidMission_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckAltitute_ValidMission_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI31CheckAltitute_ValidMission_TestED2Ev(%"class.testing::internal::TestFactoryImpl.47"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.47"*, align 8
  store %"class.testing::internal::TestFactoryImpl.47"* %this, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.47"*, %"class.testing::internal::TestFactoryImpl.47"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.47"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN31CheckAltitute_ValidMission_TestC1Ev(%class.CheckAltitute_ValidMission_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_ValidMission_Test*, align 8
  store %class.CheckAltitute_ValidMission_Test* %this, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_ValidMission_Test*, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  call void @_ZN31CheckAltitute_ValidMission_TestC2Ev(%class.CheckAltitute_ValidMission_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN31CheckAltitute_ValidMission_TestC2Ev(%class.CheckAltitute_ValidMission_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_ValidMission_Test*, align 8
  store %class.CheckAltitute_ValidMission_Test* %this, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_ValidMission_Test*, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %0 = bitcast %class.CheckAltitute_ValidMission_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckAltitute_ValidMission_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV31CheckAltitute_ValidMission_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.48"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.48"*, align 8
  store %"class.testing::internal::TestFactoryImpl.48"* %this, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.48"*, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.48"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.48"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED1Ev(%"class.testing::internal::TestFactoryImpl.48"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.48"*, align 8
  store %"class.testing::internal::TestFactoryImpl.48"* %this, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.48"*, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED2Ev(%"class.testing::internal::TestFactoryImpl.48"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED0Ev(%"class.testing::internal::TestFactoryImpl.48"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.48"*, align 8
  store %"class.testing::internal::TestFactoryImpl.48"* %this, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.48"*, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED1Ev(%"class.testing::internal::TestFactoryImpl.48"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.48"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.48"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.48"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.48"* %this, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.48"*, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckAltitute_InvalidMission_Test*
  invoke void @_ZN33CheckAltitute_InvalidMission_TestC1Ev(%class.CheckAltitute_InvalidMission_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckAltitute_InvalidMission_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI33CheckAltitute_InvalidMission_TestED2Ev(%"class.testing::internal::TestFactoryImpl.48"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.48"*, align 8
  store %"class.testing::internal::TestFactoryImpl.48"* %this, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.48"*, %"class.testing::internal::TestFactoryImpl.48"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.48"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN33CheckAltitute_InvalidMission_TestC1Ev(%class.CheckAltitute_InvalidMission_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission_Test*, align 8
  store %class.CheckAltitute_InvalidMission_Test* %this, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission_Test*, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  call void @_ZN33CheckAltitute_InvalidMission_TestC2Ev(%class.CheckAltitute_InvalidMission_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN33CheckAltitute_InvalidMission_TestC2Ev(%class.CheckAltitute_InvalidMission_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission_Test*, align 8
  store %class.CheckAltitute_InvalidMission_Test* %this, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission_Test*, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %0 = bitcast %class.CheckAltitute_InvalidMission_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckAltitute_InvalidMission_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV33CheckAltitute_InvalidMission_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEC2Ev(%"class.testing::internal::TestFactoryImpl.49"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.49"*, align 8
  store %"class.testing::internal::TestFactoryImpl.49"* %this, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.49"*, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.49"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseC2Ev(%"class.testing::internal::TestFactoryBase"* %0)
  %1 = bitcast %"class.testing::internal::TestFactoryImpl.49"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED1Ev(%"class.testing::internal::TestFactoryImpl.49"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.49"*, align 8
  store %"class.testing::internal::TestFactoryImpl.49"* %this, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.49"*, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED2Ev(%"class.testing::internal::TestFactoryImpl.49"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED0Ev(%"class.testing::internal::TestFactoryImpl.49"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.49"*, align 8
  store %"class.testing::internal::TestFactoryImpl.49"* %this, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.49"*, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  call void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED1Ev(%"class.testing::internal::TestFactoryImpl.49"* %this1) #14
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.49"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.testing::Test"* @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestE10CreateTestEv(%"class.testing::internal::TestFactoryImpl.49"* %this) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.49"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.testing::internal::TestFactoryImpl.49"* %this, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.49"*, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %call = call i8* @_Znwm(i64 16) #13
  %0 = bitcast i8* %call to %class.CheckAltitute_InvalidMission2pointbelowhome_Test*
  invoke void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestC1Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %0 to %"class.testing::Test"*
  ret %"class.testing::Test"* %1

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal15TestFactoryImplI48CheckAltitute_InvalidMission2pointbelowhome_TestED2Ev(%"class.testing::internal::TestFactoryImpl.49"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.testing::internal::TestFactoryImpl.49"*, align 8
  store %"class.testing::internal::TestFactoryImpl.49"* %this, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %this1 = load %"class.testing::internal::TestFactoryImpl.49"*, %"class.testing::internal::TestFactoryImpl.49"** %this.addr, align 8
  %0 = bitcast %"class.testing::internal::TestFactoryImpl.49"* %this1 to %"class.testing::internal::TestFactoryBase"*
  call void @_ZN7testing8internal15TestFactoryBaseD2Ev(%"class.testing::internal::TestFactoryBase"* %0) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestC1Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, align 8
  store %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  call void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestC2Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestC2Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, align 8
  store %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %0 = bitcast %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestC2Ev(%"class.testing::Test"* %0)
  %1 = bitcast %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV48CheckAltitute_InvalidMission2pointbelowhome_Test, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

declare %"class.testing::UnitTest"* @_ZN7testing8UnitTest11GetInstanceEv() #1

declare i32 @_ZN7testing8UnitTest3RunEv(%"class.testing::UnitTest"*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31MissionCheck_CheckCombined_TestD2Ev(%class.MissionCheck_CheckCombined_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCheck_CheckCombined_Test*, align 8
  store %class.MissionCheck_CheckCombined_Test* %this, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %this1 = load %class.MissionCheck_CheckCombined_Test*, %class.MissionCheck_CheckCombined_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCheck_CheckCombined_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(%"class.testing::Test"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN37MissionCommandCheck_ValidCommand_TestD2Ev(%class.MissionCommandCheck_ValidCommand_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_ValidCommand_Test*, align 8
  store %class.MissionCommandCheck_ValidCommand_Test* %this, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_ValidCommand_Test*, %class.MissionCommandCheck_ValidCommand_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCommandCheck_ValidCommand_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN39MissionCommandCheck_InValidCommand_TestD2Ev(%class.MissionCommandCheck_InValidCommand_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidCommand_Test*, align 8
  store %class.MissionCommandCheck_InValidCommand_Test* %this, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidCommand_Test*, %class.MissionCommandCheck_InValidCommand_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCommandCheck_InValidCommand_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN40MissionCommandCheck_InValidWaypoint_TestD2Ev(%class.MissionCommandCheck_InValidWaypoint_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.MissionCommandCheck_InValidWaypoint_Test*, align 8
  store %class.MissionCommandCheck_InValidWaypoint_Test* %this, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %this1 = load %class.MissionCommandCheck_InValidWaypoint_Test*, %class.MissionCommandCheck_InValidWaypoint_Test** %this.addr, align 8
  %0 = bitcast %class.MissionCommandCheck_InValidWaypoint_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN30CheckGeofence_InsideInclu_TestD2Ev(%class.CheckGeofence_InsideInclu_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideInclu_Test*, align 8
  store %class.CheckGeofence_InsideInclu_Test* %this, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideInclu_Test*, %class.CheckGeofence_InsideInclu_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideInclu_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31CheckGeofence_OutsideInclu_TestD2Ev(%class.CheckGeofence_OutsideInclu_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideInclu_Test*, align 8
  store %class.CheckGeofence_OutsideInclu_Test* %this, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideInclu_Test*, %class.CheckGeofence_OutsideInclu_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_OutsideInclu_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN29CheckGeofence_OutsideExc_TestD2Ev(%class.CheckGeofence_OutsideExc_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_OutsideExc_Test*, align 8
  store %class.CheckGeofence_OutsideExc_Test* %this, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_OutsideExc_Test*, %class.CheckGeofence_OutsideExc_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_OutsideExc_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN28CheckGeofence_InsideExc_TestD2Ev(%class.CheckGeofence_InsideExc_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideExc_Test*, align 8
  store %class.CheckGeofence_InsideExc_Test* %this, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideExc_Test*, %class.CheckGeofence_InsideExc_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideExc_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33CheckGeofence_InsideTooHigh__TestD2Ev(%class.CheckGeofence_InsideTooHigh__Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh__Test*, align 8
  store %class.CheckGeofence_InsideTooHigh__Test* %this, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh__Test*, %class.CheckGeofence_InsideTooHigh__Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideTooHigh__Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN32CheckGeofence_InsideTooHigh_TestD2Ev(%class.CheckGeofence_InsideTooHigh_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckGeofence_InsideTooHigh_Test*, align 8
  store %class.CheckGeofence_InsideTooHigh_Test* %this, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %this1 = load %class.CheckGeofence_InsideTooHigh_Test*, %class.CheckGeofence_InsideTooHigh_Test** %this.addr, align 8
  %0 = bitcast %class.CheckGeofence_InsideTooHigh_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN34CheckWayPoints_CloseWaypoints_TestD2Ev(%class.CheckWayPoints_CloseWaypoints_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_CloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_CloseWaypoints_Test* %this, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_CloseWaypoints_Test*, %class.CheckWayPoints_CloseWaypoints_Test** %this.addr, align 8
  %0 = bitcast %class.CheckWayPoints_CloseWaypoints_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN37CheckWayPoints_TooCloseWaypoints_TestD2Ev(%class.CheckWayPoints_TooCloseWaypoints_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_TooCloseWaypoints_Test*, align 8
  store %class.CheckWayPoints_TooCloseWaypoints_Test* %this, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_TooCloseWaypoints_Test*, %class.CheckWayPoints_TooCloseWaypoints_Test** %this.addr, align 8
  %0 = bitcast %class.CheckWayPoints_TooCloseWaypoints_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN35CheckWayPoints_AltituteBreaker_TestD2Ev(%class.CheckWayPoints_AltituteBreaker_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckWayPoints_AltituteBreaker_Test*, align 8
  store %class.CheckWayPoints_AltituteBreaker_Test* %this, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %this1 = load %class.CheckWayPoints_AltituteBreaker_Test*, %class.CheckWayPoints_AltituteBreaker_Test** %this.addr, align 8
  %0 = bitcast %class.CheckWayPoints_AltituteBreaker_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN31CheckAltitute_ValidMission_TestD2Ev(%class.CheckAltitute_ValidMission_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_ValidMission_Test*, align 8
  store %class.CheckAltitute_ValidMission_Test* %this, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_ValidMission_Test*, %class.CheckAltitute_ValidMission_Test** %this.addr, align 8
  %0 = bitcast %class.CheckAltitute_ValidMission_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN33CheckAltitute_InvalidMission_TestD2Ev(%class.CheckAltitute_InvalidMission_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission_Test*, align 8
  store %class.CheckAltitute_InvalidMission_Test* %this, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission_Test*, %class.CheckAltitute_InvalidMission_Test** %this.addr, align 8
  %0 = bitcast %class.CheckAltitute_InvalidMission_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN48CheckAltitute_InvalidMission2pointbelowhome_TestD2Ev(%class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, align 8
  store %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %this1 = load %class.CheckAltitute_InvalidMission2pointbelowhome_Test*, %class.CheckAltitute_InvalidMission2pointbelowhome_Test** %this.addr, align 8
  %0 = bitcast %class.CheckAltitute_InvalidMission2pointbelowhome_Test* %this1 to %"class.testing::Test"*
  call void @_ZN7testing4TestD2Ev(%"class.testing::Test"* %0) #14
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
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #14
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
  %call = call i64 @strlen(i8* %0) #14
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
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev(%"struct.std::__1::__compressed_pair_elem.1"* %1) #14
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
  call void @_ZNSt3__19allocatorIcEC2Ev(%"class.std::__1::allocator"* %0) #14
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #9

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
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #14
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
  call void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::basic_ostream"* dereferenceable(160) %1) #14
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
  %call20 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv(%"class.std::__1::ostreambuf_iterator"* %ref.tmp) #14
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
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #14
  br label %catch

catch:                                            ; preds = %lpad1, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %35 = call i8* @__cxa_begin_catch(i8* %exn) #14
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

try.cont:                                         ; preds = %invoke.cont33, %if.end27
  %41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  ret %"class.std::__1::basic_ostream"* %41

if.end:                                           ; preds = %invoke.cont26, %invoke.cont17
  br label %if.end27

if.end27:                                         ; preds = %if.end, %invoke.cont2
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s) #14
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
  call void @__clang_call_terminate(i8* %46) #16
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
  %call19 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__sp) #14
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
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #14
  br label %eh.resume

if.end24:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp) #14
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
  call void @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1, %"class.std::__1::basic_ostream"* dereferenceable(160) %0) #14
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
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %0 = load i32, i32* %__fill_, align 8
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call, i32 %0) #14
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
define linkonce_odr hidden void @__clang_call_terminate(i8*) #10 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #14
  call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #9

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
  call void @__clang_call_terminate(i8* %7) #16
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
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp) #14
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp) #14
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

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal11CmpHelperEQIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* noalias sret %agg.result, i8* %lhs_expression, i8* %rhs_expression, i8* dereferenceable(1) %lhs, i8* dereferenceable(1) %rhs) #2 {
entry:
  %lhs_expression.addr = alloca i8*, align 8
  %rhs_expression.addr = alloca i8*, align 8
  %lhs.addr = alloca i8*, align 8
  %rhs.addr = alloca i8*, align 8
  store i8* %lhs_expression, i8** %lhs_expression.addr, align 8
  store i8* %rhs_expression, i8** %rhs_expression.addr, align 8
  store i8* %lhs, i8** %lhs.addr, align 8
  store i8* %rhs, i8** %rhs.addr, align 8
  %0 = load i8*, i8** %lhs.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i32
  %2 = load i8*, i8** %rhs.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = trunc i8 %3 to i1
  %conv2 = zext i1 %tobool1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN7testing16AssertionSuccessEv(%"class.testing::AssertionResult"* sret %agg.result)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %lhs_expression.addr, align 8
  %5 = load i8*, i8** %rhs_expression.addr, align 8
  %6 = load i8*, i8** %lhs.addr, align 8
  %7 = load i8*, i8** %rhs.addr, align 8
  call void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* sret %agg.result, i8* %4, i8* %5, i8* dereferenceable(1) %6, i8* dereferenceable(1) %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(%"class.testing::AssertionResult"* sret) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(%"class.testing::AssertionResult"* noalias sret %agg.result, i8* %lhs_expression, i8* %rhs_expression, i8* dereferenceable(1) %lhs, i8* dereferenceable(1) %rhs) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %lhs_expression.addr = alloca i8*, align 8
  %rhs_expression.addr = alloca i8*, align 8
  %lhs.addr = alloca i8*, align 8
  %rhs.addr = alloca i8*, align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %lhs_expression, i8** %lhs_expression.addr, align 8
  store i8* %rhs_expression, i8** %rhs_expression.addr, align 8
  store i8* %lhs, i8** %lhs.addr, align 8
  store i8* %rhs, i8** %rhs.addr, align 8
  %0 = load i8*, i8** %lhs_expression.addr, align 8
  %1 = load i8*, i8** %rhs_expression.addr, align 8
  %2 = load i8*, i8** %lhs.addr, align 8
  %3 = load i8*, i8** %rhs.addr, align 8
  call void @_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_(%"class.std::__1::basic_string"* sret %ref.tmp, i8* dereferenceable(1) %2, i8* dereferenceable(1) %3)
  %4 = load i8*, i8** %rhs.addr, align 8
  %5 = load i8*, i8** %lhs.addr, align 8
  invoke void @_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_(%"class.std::__1::basic_string"* sret %ref.tmp1, i8* dereferenceable(1) %4, i8* dereferenceable(1) %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEESB_b(%"class.testing::AssertionResult"* sret %agg.result, i8* %0, i8* %1, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp, %"class.std::__1::basic_string"* dereferenceable(24) %ref.tmp1, i1 zeroext false)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp1) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp1) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad2, %lpad
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEESB_b(%"class.testing::AssertionResult"* sret, i8*, i8*, %"class.std::__1::basic_string"* dereferenceable(24), %"class.std::__1::basic_string"* dereferenceable(24), i1 zeroext) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKT_RKT0_(%"class.std::__1::basic_string"* noalias sret %agg.result, i8* dereferenceable(1) %value, i8* dereferenceable(1)) #2 {
entry:
  %value.addr = alloca i8*, align 8
  %.addr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8*, i8** %value.addr, align 8
  call void @_ZN7testing8internal19FormatForComparisonIbbE6FormatERKb(%"class.std::__1::basic_string"* sret %agg.result, i8* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal19FormatForComparisonIbbE6FormatERKb(%"class.std::__1::basic_string"* noalias sret %agg.result, i8* dereferenceable(1) %value) #2 align 2 {
entry:
  %value.addr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  call void @_ZN7testing13PrintToStringIbEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_(%"class.std::__1::basic_string"* sret %agg.result, i8* dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing13PrintToStringIbEENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKT_(%"class.std::__1::basic_string"* noalias sret %agg.result, i8* dereferenceable(1) %value) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %value.addr = alloca i8*, align 8
  %ss = alloca %"class.std::__1::basic_stringstream", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %value, i8** %value.addr, align 8
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringstream"* %ss, i32 24)
  %0 = load i8*, i8** %value.addr, align 8
  %1 = icmp eq %"class.std::__1::basic_stringstream"* %ss, null
  br i1 %1, label %cast.end, label %cast.notnull

cast.notnull:                                     ; preds = %entry
  %2 = bitcast %"class.std::__1::basic_stringstream"* %ss to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 16
  %3 = bitcast i8* %add.ptr to %"class.std::__1::basic_ostream"*
  br label %cast.end

cast.end:                                         ; preds = %cast.notnull, %entry
  %cast.result = phi %"class.std::__1::basic_ostream"* [ %3, %cast.notnull ], [ null, %entry ]
  invoke void @_ZN7testing8internal21UniversalTersePrinterIbE5PrintERKbPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i8* dereferenceable(1) %0, %"class.std::__1::basic_ostream"* %cast.result)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %cast.end
  invoke void @_ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* sret %agg.result, %"class.std::__1::basic_stringstream"* %ss)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %ss) #14
  ret void

lpad:                                             ; preds = %invoke.cont, %cast.end
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %ss) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringstream"* %this, i32 %__wch) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  %__wch.addr = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  store i32 %__wch, i32* %__wch.addr, align 4
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %1 = getelementptr inbounds i8, i8* %0, i64 128
  %2 = bitcast i8* %1 to %"class.std::__1::basic_ios"*
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ios"* %2)
  %3 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %3, align 8
  %4 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 128
  %5 = bitcast i8* %add.ptr to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 16
  %7 = bitcast i8* %add.ptr2 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = bitcast %"class.std::__1::basic_stringstream"* %this1 to %"class.std::__1::basic_iostream"*
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1, i32 0, i32 1
  %9 = bitcast %"class.std::__1::basic_stringbuf"* %__sb_ to %"class.std::__1::basic_streambuf"*
  invoke void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_iostream"* %8, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1), %"class.std::__1::basic_streambuf"* %9)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %10 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 128
  %12 = bitcast i8* %add.ptr3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i32 (...)**), i32 (...)*** %12, align 8
  %13 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 16
  %14 = bitcast i8* %add.ptr4 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i32 (...)**), i32 (...)*** %14, align 8
  %__sb_5 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1, i32 0, i32 1
  %15 = load i32, i32* %__wch.addr, align 4
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringbuf"* %__sb_5, i32 %15)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %entry
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  %22 = bitcast %"class.std::__1::basic_stringstream"* %this1 to %"class.std::__1::basic_iostream"*
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %22, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad
  %23 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 128
  %25 = bitcast i8* %24 to %"class.std::__1::basic_ios"*
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %25) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val8
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal21UniversalTersePrinterIbE5PrintERKbPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i8* dereferenceable(1) %value, %"class.std::__1::basic_ostream"* %os) #2 align 2 {
entry:
  %value.addr = alloca i8*, align 8
  %os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store i8* %value, i8** %value.addr, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr, align 8
  call void @_ZN7testing8internal14UniversalPrintIbEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i8* dereferenceable(1) %0, %"class.std::__1::basic_ostream"* %1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNKSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* noalias sret %agg.result, %"class.std::__1::basic_stringstream"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1, i32 0, i32 1
  call void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* sret %agg.result, %"class.std::__1::basic_stringbuf"* %__sb_)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringstream"* %this1, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 0)) #14
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %1 = getelementptr inbounds i8, i8* %0, i64 128
  %2 = bitcast i8* %1 to %"class.std::__1::basic_ios"*
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %2) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ios"* %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  call void @_ZNSt3__18ios_baseC2Ev(%"class.std::__1::ios_base"* %0)
  %1 = bitcast %"class.std::__1::basic_ios"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_iostream"* %this, i8** %vtt, %"class.std::__1::basic_streambuf"* %__sb) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_iostream"*, align 8
  %vtt.addr = alloca i8**, align 8
  %__sb.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__1::basic_iostream"* %this, %"class.std::__1::basic_iostream"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  store %"class.std::__1::basic_streambuf"* %__sb, %"class.std::__1::basic_streambuf"** %__sb.addr, align 8
  %this1 = load %"class.std::__1::basic_iostream"*, %"class.std::__1::basic_iostream"** %this.addr, align 8
  %vtt2 = load i8**, i8*** %vtt.addr, align 8
  %0 = bitcast %"class.std::__1::basic_iostream"* %this1 to %"class.std::__1::basic_istream"*
  %1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sb.addr, align 8
  %2 = getelementptr inbounds i8*, i8** %vtt2, i64 1
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_istream"* %0, i8** %2, %"class.std::__1::basic_streambuf"* %1)
  %3 = bitcast %"class.std::__1::basic_iostream"* %this1 to i8*
  %4 = getelementptr inbounds i8, i8* %3, i64 16
  %5 = bitcast i8* %4 to %"class.std::__1::basic_ostream"*
  %6 = getelementptr inbounds i8*, i8** %vtt2, i64 3
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ostream"* %5, i8** %6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %7 = load i8*, i8** %vtt2, align 8
  %8 = bitcast %"class.std::__1::basic_iostream"* %this1 to i32 (...)***
  %9 = bitcast i8* %7 to i32 (...)**
  store i32 (...)** %9, i32 (...)*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %vtt2, i64 5
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast %"class.std::__1::basic_iostream"* %this1 to i8**
  %vtable = load i8*, i8** %12, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %13 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %13, align 8
  %14 = bitcast %"class.std::__1::basic_iostream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %vbase.offset
  %15 = bitcast i8* %add.ptr to i32 (...)***
  %16 = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %16, i32 (...)*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %vtt2, i64 6
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast %"class.std::__1::basic_iostream"* %this1 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %19, i64 16
  %20 = bitcast i8* %add.ptr3 to i32 (...)***
  %21 = bitcast i8* %18 to i32 (...)**
  store i32 (...)** %21, i32 (...)*** %20, align 8
  ret void

lpad:                                             ; preds = %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  %25 = bitcast %"class.std::__1::basic_iostream"* %this1 to %"class.std::__1::basic_istream"*
  %26 = getelementptr inbounds i8*, i8** %vtt2, i64 1
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_istream"* %25, i8** %26) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej(%"class.std::__1::basic_stringbuf"* %this, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__wch.addr = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  store i32 %__wch, i32* %__wch.addr, align 4
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %0 = load i32, i32* %__wch.addr, align 4
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej(%"class.std::__1::basic_stringbuf"* %this1, i32 %0)
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
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this1) #14
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %1 = getelementptr inbounds i8, i8* %0, i64 -16
  %2 = bitcast i8* %1 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %2) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %1 = getelementptr inbounds i8, i8* %0, i64 -16
  %2 = bitcast i8* %1 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %2) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %7) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to %"class.std::__1::basic_stringstream"*
  tail call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %7) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__18ios_baseC2Ev(%"class.std::__1::ios_base"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::ios_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVNSt3__18ios_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_istream"* %this, i8** %vtt, %"class.std::__1::basic_streambuf"* %__sb) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_istream"*, align 8
  %vtt.addr = alloca i8**, align 8
  %__sb.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_istream"* %this, %"class.std::__1::basic_istream"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  store %"class.std::__1::basic_streambuf"* %__sb, %"class.std::__1::basic_streambuf"** %__sb.addr, align 8
  %this1 = load %"class.std::__1::basic_istream"*, %"class.std::__1::basic_istream"** %this.addr, align 8
  %vtt2 = load i8**, i8*** %vtt.addr, align 8
  %0 = load i8*, i8** %vtt2, align 8
  %1 = bitcast %"class.std::__1::basic_istream"* %this1 to i32 (...)***
  %2 = bitcast i8* %0 to i32 (...)**
  store i32 (...)** %2, i32 (...)*** %1, align 8
  %3 = getelementptr inbounds i8*, i8** %vtt2, i64 1
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast %"class.std::__1::basic_istream"* %this1 to i8**
  %vtable = load i8*, i8** %5, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %6 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %6, align 8
  %7 = bitcast %"class.std::__1::basic_istream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %vbase.offset
  %8 = bitcast i8* %add.ptr to i32 (...)***
  %9 = bitcast i8* %4 to i32 (...)**
  store i32 (...)** %9, i32 (...)*** %8, align 8
  %__gc_ = getelementptr inbounds %"class.std::__1::basic_istream", %"class.std::__1::basic_istream"* %this1, i32 0, i32 1
  store i64 0, i64* %__gc_, align 8
  %10 = bitcast %"class.std::__1::basic_istream"* %this1 to i8**
  %vtable3 = load i8*, i8** %10, align 8
  %vbase.offset.ptr4 = getelementptr i8, i8* %vtable3, i64 -24
  %11 = bitcast i8* %vbase.offset.ptr4 to i64*
  %vbase.offset5 = load i64, i64* %11, align 8
  %12 = bitcast %"class.std::__1::basic_istream"* %this1 to i8*
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %vbase.offset5
  %13 = bitcast i8* %add.ptr6 to %"class.std::__1::basic_ios"*
  %14 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sb.addr, align 8
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_ios"* %13, %"class.std::__1::basic_streambuf"* %14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_ostream"* %this, i8** %vtt) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %vtt.addr = alloca i8**, align 8
  store %"class.std::__1::basic_ostream"* %this, %"class.std::__1::basic_ostream"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  %this1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %this.addr, align 8
  %vtt2 = load i8**, i8*** %vtt.addr, align 8
  %0 = load i8*, i8** %vtt2, align 8
  %1 = bitcast %"class.std::__1::basic_ostream"* %this1 to i32 (...)***
  %2 = bitcast i8* %0 to i32 (...)**
  store i32 (...)** %2, i32 (...)*** %1, align 8
  %3 = getelementptr inbounds i8*, i8** %vtt2, i64 1
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast %"class.std::__1::basic_ostream"* %this1 to i8**
  %vtable = load i8*, i8** %5, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %6 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %6, align 8
  %7 = bitcast %"class.std::__1::basic_ostream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %vbase.offset
  %8 = bitcast i8* %add.ptr to i32 (...)***
  %9 = bitcast i8* %4 to i32 (...)**
  store i32 (...)** %9, i32 (...)*** %8, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_istream"*, i8**) unnamed_addr #6

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE(%"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_streambuf"* %__sb) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__sb.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store %"class.std::__1::basic_streambuf"* %__sb, %"class.std::__1::basic_streambuf"** %__sb.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sb.addr, align 8
  %2 = bitcast %"class.std::__1::basic_streambuf"* %1 to i8*
  call void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %0, i8* %2)
  %__tie_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_, align 8
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  store i32 %call, i32* %__fill_, align 8
  ret void
}

declare void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"*, i8*) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ej(%"class.std::__1::basic_stringbuf"* %this, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__wch.addr = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  store i32 %__wch, i32* %__wch.addr, align 4
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %0)
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* %__str_) #14
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* null, i8** %__hm_, align 8
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %2 = load i32, i32* %__wch.addr, align 4
  store i32 %2, i32* %__mode_, align 8
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev(%"class.std::__1::basic_string"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringbuf"* %this1) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %this1) #14
  %0 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"* dereferenceable(8)) unnamed_addr #1

declare %"class.std::__1::basic_streambuf"* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, i64 %__off, i32 %__way, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__off.addr = alloca i64, align 8
  %__way.addr = alloca i32, align 4
  %__wch.addr = alloca i32, align 4
  %__hm = alloca i64, align 8
  %__noff = alloca i64, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  store i64 %__off, i64* %__off.addr, align 8
  store i32 %__way, i32* %__way.addr, align 4
  store i32 %__wch, i32* %__wch.addr, align 4
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %1)
  %cmp = icmp ult i8* %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call2 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %2)
  %__hm_3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* %call2, i8** %__hm_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %__wch.addr, align 4
  %and = and i32 %3, 24
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %__wch.addr, align 4
  %and7 = and i32 %4, 24
  %cmp8 = icmp eq i32 %and7, 24
  br i1 %cmp8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %5 = load i32, i32* %__way.addr, align 4
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end6
  %__hm_12 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %6 = load i8*, i8** %__hm_12, align 8
  %cmp13 = icmp eq i8* %6, null
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %__hm_14 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %7 = load i8*, i8** %__hm_14, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  %call15 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__str_) #14
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  store i64 %cond, i64* %__hm, align 8
  %8 = load i32, i32* %__way.addr, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %cond.end
  store i64 0, i64* %__noff, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %cond.end
  %9 = load i32, i32* %__wch.addr, align 4
  %and17 = and i32 %9, 8
  %tobool = icmp ne i32 %and17, 0
  br i1 %tobool, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb16
  %10 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call19 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %10)
  %11 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call20 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %11)
  %sub.ptr.lhs.cast21 = ptrtoint i8* %call19 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %call20 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  store i64 %sub.ptr.sub23, i64* %__noff, align 8
  br label %if.end29

if.else:                                          ; preds = %sw.bb16
  %12 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call24 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %12)
  %13 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call25 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %13)
  %sub.ptr.lhs.cast26 = ptrtoint i8* %call24 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %call25 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  store i64 %sub.ptr.sub28, i64* %__noff, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then18
  br label %sw.epilog

sw.bb30:                                          ; preds = %cond.end
  %14 = load i64, i64* %__hm, align 8
  store i64 %14, i64* %__noff, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

sw.epilog:                                        ; preds = %sw.bb30, %if.end29, %sw.bb
  %15 = load i64, i64* %__off.addr, align 8
  %16 = load i64, i64* %__noff, align 8
  %add = add nsw i64 %16, %15
  store i64 %add, i64* %__noff, align 8
  %17 = load i64, i64* %__noff, align 8
  %cmp31 = icmp slt i64 %17, 0
  br i1 %cmp31, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %18 = load i64, i64* %__hm, align 8
  %19 = load i64, i64* %__noff, align 8
  %cmp32 = icmp slt i64 %18, %19
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %sw.epilog
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  %20 = load i64, i64* %__noff, align 8
  %cmp35 = icmp ne i64 %20, 0
  br i1 %cmp35, label %if.then36, label %if.end51

if.then36:                                        ; preds = %if.end34
  %21 = load i32, i32* %__wch.addr, align 4
  %and37 = and i32 %21, 8
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true39, label %if.end43

land.lhs.true39:                                  ; preds = %if.then36
  %22 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call40 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %22)
  %cmp41 = icmp eq i8* %call40, null
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true39
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end43:                                         ; preds = %land.lhs.true39, %if.then36
  %23 = load i32, i32* %__wch.addr, align 4
  %and44 = and i32 %23, 16
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true46, label %if.end50

land.lhs.true46:                                  ; preds = %if.end43
  %24 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call47 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %24)
  %cmp48 = icmp eq i8* %call47, null
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true46
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 -1)
  br label %return

if.end50:                                         ; preds = %land.lhs.true46, %if.end43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end34
  %25 = load i32, i32* %__wch.addr, align 4
  %and52 = and i32 %25, 8
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end51
  %26 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %27 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call55 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %27)
  %28 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call56 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %28)
  %29 = load i64, i64* %__noff, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call56, i64 %29
  %__hm_57 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %30 = load i8*, i8** %__hm_57, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %26, i8* %call55, i8* %add.ptr, i8* %30)
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51
  %31 = load i32, i32* %__wch.addr, align 4
  %and59 = and i32 %31, 16
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end58
  %32 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %33 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call62 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %33)
  %34 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call63 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv(%"class.std::__1::basic_streambuf"* %34)
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_(%"class.std::__1::basic_streambuf"* %32, i8* %call62, i8* %call63)
  %35 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %36 = load i64, i64* %__noff, align 8
  %conv = trunc i64 %36 to i32
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi(%"class.std::__1::basic_streambuf"* %35, i32 %conv)
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58
  %37 = load i64, i64* %__noff, align 8
  call void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %agg.result, i64 %37)
  br label %return

return:                                           ; preds = %if.end64, %if.then49, %if.then42, %if.then33, %sw.default, %if.then10, %if.then5
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::fpos"* byval align 8 %__sp, i32 %__wch) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__wch.addr = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  store i32 %__wch, i32* %__wch.addr, align 4
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %call = call i64 @_ZNKSt3__14fposI11__mbstate_tEcvxEv(%"class.std::__1::fpos"* %__sp)
  %0 = load i32, i32* %__wch.addr, align 4
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)***
  %vtable = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)**, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vtable, i64 4
  %2 = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vfn, align 8
  call void %2(%"class.std::__1::fpos"* sret %agg.result, %"class.std::__1::basic_stringbuf"* %this1, i64 %call, i32 0, i32 %0)
  ret void
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %1)
  %cmp = icmp ult i8* %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call2 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %2)
  %__hm_3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* %call2, i8** %__hm_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %3 = load i32, i32* %__mode_, align 8
  %and = and i32 %3, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.end
  %4 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call5 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %4)
  %__hm_6 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %5 = load i8*, i8** %__hm_6, align 8
  %cmp7 = icmp ult i8* %call5, %5
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  %6 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %7 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call9 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %7)
  %8 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call10 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %8)
  %__hm_11 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %9 = load i8*, i8** %__hm_11, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %6, i8* %call9, i8* %call10, i8* %9)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %10 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call13 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %10)
  %11 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call14 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %11)
  %cmp15 = icmp ult i8* %call13, %call14
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %12 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call17 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %12)
  %13 = load i8, i8* %call17, align 1
  %call18 = call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %13) #14
  store i32 %call18, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %call21 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  store i32 %call21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then16
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #5 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__c.addr = alloca i32, align 4
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  store i32 %__c, i32* %__c.addr, align 4
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %1)
  %cmp = icmp ult i8* %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call2 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %2)
  %__hm_3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* %call2, i8** %__hm_3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call4 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %3)
  %4 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call5 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %4)
  %cmp6 = icmp ult i8* %call4, %call5
  br i1 %cmp6, label %if.then7, label %if.end27

if.then7:                                         ; preds = %if.end
  %5 = load i32, i32* %__c.addr, align 4
  %call8 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  %call9 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %5, i32 %call8) #14
  br i1 %call9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then7
  %6 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %7 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call11 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %7)
  %8 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call12 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %8)
  %add.ptr = getelementptr inbounds i8, i8* %call12, i64 -1
  %__hm_13 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %9 = load i8*, i8** %__hm_13, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %6, i8* %call11, i8* %add.ptr, i8* %9)
  %10 = load i32, i32* %__c.addr, align 4
  %call14 = call i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 %10) #14
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then7
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %11 = load i32, i32* %__mode_, align 8
  %and = and i32 %11, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %12 = load i32, i32* %__c.addr, align 4
  %call16 = call signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 %12) #14
  %13 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call17 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %13)
  %arrayidx = getelementptr inbounds i8, i8* %call17, i64 -1
  %14 = load i8, i8* %arrayidx, align 1
  %call18 = call zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 signext %call16, i8 signext %14) #14
  br i1 %call18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %lor.lhs.false, %if.end15
  %15 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %16 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call20 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %16)
  %17 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call21 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %17)
  %add.ptr22 = getelementptr inbounds i8, i8* %call21, i64 -1
  %__hm_23 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %18 = load i8*, i8** %__hm_23, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %15, i8* %call20, i8* %add.ptr22, i8* %18)
  %19 = load i32, i32* %__c.addr, align 4
  %call24 = call signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 %19) #14
  %20 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call25 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %20)
  store i8 %call24, i8* %call25, align 1
  %21 = load i32, i32* %__c.addr, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %call28 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  store i32 %call28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then19, %if.then10
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #2 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %__c.addr = alloca i32, align 4
  %__ninp = alloca i64, align 8
  %__nout = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__hm = alloca i64, align 8
  %__p = alloca i8*, align 8
  %ref.tmp = alloca i8*, align 8
  %__p47 = alloca i8*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  store i32 %__c, i32* %__c.addr, align 4
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %0 = load i32, i32* %__c.addr, align 4
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %0, i32 %call) #14
  br i1 %call2, label %if.end54, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call3 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %1)
  %2 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call4 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %2)
  %sub.ptr.lhs.cast = ptrtoint i8* %call3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %__ninp, align 8
  %3 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call5 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %3)
  %4 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call6 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv(%"class.std::__1::basic_streambuf"* %4)
  %cmp = icmp eq i8* %call5, %call6
  br i1 %cmp, label %if.then7, label %if.end37

if.then7:                                         ; preds = %if.then
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %5 = load i32, i32* %__mode_, align 8
  %and = and i32 %5, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then7
  %call9 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  %6 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call10 = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %6)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %7 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call12 = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %7)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %sub.ptr.lhs.cast13 = ptrtoint i8* %call10 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %call12 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  store i64 %sub.ptr.sub15, i64* %__nout, align 8
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %8 = load i8*, i8** %__hm_, align 8
  %9 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call17 = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %9)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont11
  %sub.ptr.lhs.cast18 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %call17 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  store i64 %sub.ptr.sub20, i64* %__hm, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %__str_, i8 signext 0)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %invoke.cont16
  %__str_22 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  %__str_23 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  %call24 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv(%"class.std::__1::basic_string"* %__str_23) #14
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm(%"class.std::__1::basic_string"* %__str_22, i64 %call24)
          to label %invoke.cont25 unwind label %lpad

invoke.cont25:                                    ; preds = %invoke.cont21
  %__str_26 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  %call27 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__str_26) #14
  store i8* %call27, i8** %__p, align 8
  %10 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %11 = load i8*, i8** %__p, align 8
  %12 = load i8*, i8** %__p, align 8
  %__str_28 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  %call29 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %__str_28) #14
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call29
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_(%"class.std::__1::basic_streambuf"* %10, i8* %11, i8* %add.ptr)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont25
  %13 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %14 = load i64, i64* %__nout, align 8
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl(%"class.std::__1::basic_streambuf"* %13, i64 %14)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont30
  %15 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call33 = invoke i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %15)
          to label %invoke.cont32 unwind label %lpad

invoke.cont32:                                    ; preds = %invoke.cont31
  %16 = load i64, i64* %__hm, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %call33, i64 %16
  %__hm_35 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* %add.ptr34, i8** %__hm_35, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont31, %invoke.cont30, %invoke.cont25, %invoke.cont21, %invoke.cont16, %invoke.cont11, %invoke.cont, %if.end
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %20 = call i8* @__cxa_begin_catch(i8* %exn) #14
  %call36 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  store i32 %call36, i32* %retval, align 4
  call void @__cxa_end_catch()
  br label %return

try.cont:                                         ; preds = %invoke.cont32
  br label %if.end37

if.end37:                                         ; preds = %try.cont, %if.then
  %21 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call38 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %21)
  %add.ptr39 = getelementptr inbounds i8, i8* %call38, i64 1
  store i8* %add.ptr39, i8** %ref.tmp, align 8
  %__hm_40 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %call41 = call dereferenceable(8) i8** @_ZNSt3__1L3maxIPcEERKT_S4_S4_(i8** dereferenceable(8) %ref.tmp, i8** dereferenceable(8) %__hm_40)
  %22 = load i8*, i8** %call41, align 8
  %__hm_42 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* %22, i8** %__hm_42, align 8
  %__mode_43 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %23 = load i32, i32* %__mode_43, align 8
  %and44 = and i32 %23, 8
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.end52

if.then46:                                        ; preds = %if.end37
  %__str_48 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  %call49 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv(%"class.std::__1::basic_string"* %__str_48) #14
  store i8* %call49, i8** %__p47, align 8
  %24 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %25 = load i8*, i8** %__p47, align 8
  %26 = load i8*, i8** %__p47, align 8
  %27 = load i64, i64* %__ninp, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %26, i64 %27
  %__hm_51 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %28 = load i8*, i8** %__hm_51, align 8
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %24, i8* %25, i8* %add.ptr50, i8* %28)
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end37
  %29 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %30 = load i32, i32* %__c.addr, align 4
  %conv = trunc i32 %30 to i8
  %call53 = call i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc(%"class.std::__1::basic_streambuf"* %29, i8 signext %conv)
  store i32 %call53, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %entry
  %31 = load i32, i32* %__c.addr, align 4
  %call55 = call i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 %31) #14
  store i32 %call55, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.end52, %catch, %if.then8
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev(%"class.std::__1::basic_string"* %this) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  invoke void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv(%"class.std::__1::__compressed_pair"* %__r_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %this1) #14
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__a = alloca [3 x i64]*, align 8
  %__i = alloca i32, align 4
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__r = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw"*
  %__words = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__raw"* %__r, i32 0, i32 0
  store [3 x i64]* %__words, [3 x i64]** %__a, align 8
  store i32 0, i32* %__i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %__i, align 4
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load [3 x i64]*, [3 x i64]** %__a, align 8
  %3 = load i32, i32* %__i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %__i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %__i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %0) #14
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__str_) #14
  %1 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %1) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 6
  %0 = load i8*, i8** %__nout_, align 8
  ret i8* %0
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__14fposI11__mbstate_tEC1Ex(%"class.std::__1::fpos"* %this, i64 %__off) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::fpos"*, align 8
  %__off.addr = alloca i64, align 8
  store %"class.std::__1::fpos"* %this, %"class.std::__1::fpos"** %this.addr, align 8
  store i64 %__off, i64* %__off.addr, align 8
  %this1 = load %"class.std::__1::fpos"*, %"class.std::__1::fpos"** %this.addr, align 8
  %0 = load i64, i64* %__off.addr, align 8
  call void @_ZNSt3__14fposI11__mbstate_tEC2Ex(%"class.std::__1::fpos"* %this1, i64 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 3
  %0 = load i8*, i8** %__ninp_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__binp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 2
  %0 = load i8*, i8** %__binp_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 5
  %0 = load i8*, i8** %__bout_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_(%"class.std::__1::basic_streambuf"* %this, i8* %__gbeg, i8* %__gnext, i8* %__gend) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__gbeg.addr = alloca i8*, align 8
  %__gnext.addr = alloca i8*, align 8
  %__gend.addr = alloca i8*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i8* %__gbeg, i8** %__gbeg.addr, align 8
  store i8* %__gnext, i8** %__gnext.addr, align 8
  store i8* %__gend, i8** %__gend.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i8*, i8** %__gbeg.addr, align 8
  %__binp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 2
  store i8* %0, i8** %__binp_, align 8
  %1 = load i8*, i8** %__gnext.addr, align 8
  %__ninp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 3
  store i8* %1, i8** %__ninp_, align 8
  %2 = load i8*, i8** %__gend.addr, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 4
  store i8* %2, i8** %__einp_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_(%"class.std::__1::basic_streambuf"* %this, i8* %__pbeg, i8* %__pend) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__pbeg.addr = alloca i8*, align 8
  %__pend.addr = alloca i8*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i8* %__pbeg, i8** %__pbeg.addr, align 8
  store i8* %__pend, i8** %__pend.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i8*, i8** %__pbeg.addr, align 8
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 6
  store i8* %0, i8** %__nout_, align 8
  %__bout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 5
  store i8* %0, i8** %__bout_, align 8
  %1 = load i8*, i8** %__pend.addr, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 7
  store i8* %1, i8** %__eout_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 7
  %0 = load i8*, i8** %__eout_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi(%"class.std::__1::basic_streambuf"* %this, i32 %__n) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__n.addr = alloca i32, align 4
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i32 %__n, i32* %__n.addr, align 4
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i32, i32* %__n.addr, align 4
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 6
  %1 = load i8*, i8** %__nout_, align 8
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %__nout_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__14fposI11__mbstate_tEC2Ex(%"class.std::__1::fpos"* %this, i64 %__off) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::fpos"*, align 8
  %__off.addr = alloca i64, align 8
  store %"class.std::__1::fpos"* %this, %"class.std::__1::fpos"** %this.addr, align 8
  store i64 %__off, i64* %__off.addr, align 8
  %this1 = load %"class.std::__1::fpos"*, %"class.std::__1::fpos"** %this.addr, align 8
  %__st_ = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %this1, i32 0, i32 0
  %0 = bitcast %union.__mbstate_t* %__st_ to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 128, i1 false)
  %__off_ = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %this1, i32 0, i32 1
  %1 = load i64, i64* %__off.addr, align 8
  store i64 %1, i64* %__off_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__14fposI11__mbstate_tEcvxEv(%"class.std::__1::fpos"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::fpos"*, align 8
  store %"class.std::__1::fpos"* %this, %"class.std::__1::fpos"** %this.addr, align 8
  %this1 = load %"class.std::__1::fpos"*, %"class.std::__1::fpos"** %this.addr, align 8
  %__off_ = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %this1, i32 0, i32 1
  %0 = load i64, i64* %__off_, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__einp_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 4
  %0 = load i8*, i8** %__einp_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %__c) #5 align 2 {
entry:
  %__c.addr = alloca i8, align 1
  store i8 %__c, i8* %__c.addr, align 1
  %0 = load i8, i8* %__c.addr, align 1
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE7not_eofEi(i32 %__c) #5 align 2 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4
  %0 = load i32, i32* %__c.addr, align 4
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  %call1 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %0, i32 %call) #14
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #14
  %neg = xor i32 %call2, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ %1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE2eqEcc(i8 signext %__c1, i8 signext %__c2) #5 align 2 {
entry:
  %__c1.addr = alloca i8, align 1
  %__c2.addr = alloca i8, align 1
  store i8 %__c1, i8* %__c1.addr, align 1
  store i8 %__c2, i8* %__c2.addr, align 1
  %0 = load i8, i8* %__c1.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %__c2.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr signext i8 @_ZNSt3__111char_traitsIcE12to_char_typeEi(i32 %__c) #5 align 2 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4
  %0 = load i32, i32* %__c.addr, align 4
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) #1

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEm(%"class.std::__1::basic_string"* %this, i64 %__n) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #14
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv(%"class.std::__1::basic_string"* %this1) #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ 23, %cond.false ]
  %sub = sub i64 %cond, 1
  ret i64 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv(%"class.std::__1::basic_string"* %this1) #14
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this1) #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this1) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl(%"class.std::__1::basic_streambuf"* %this, i64 %__n) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 6
  %1 = load i8*, i8** %__nout_, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0
  store i8* %add.ptr, i8** %__nout_, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal dereferenceable(8) i8** @_ZNSt3__1L3maxIPcEERKT_S4_S4_(i8** dereferenceable(8) %__a, i8** dereferenceable(8) %__b) #2 {
entry:
  %__a.addr = alloca i8**, align 8
  %__b.addr = alloca i8**, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store i8** %__a, i8*** %__a.addr, align 8
  store i8** %__b, i8*** %__b.addr, align 8
  %0 = load i8**, i8*** %__a.addr, align 8
  %1 = load i8**, i8*** %__b.addr, align 8
  %call = call dereferenceable(8) i8** @_ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_(i8** dereferenceable(8) %0, i8** dereferenceable(8) %1)
  ret i8** %call
}

; Function Attrs: noinline optnone ssp uwtable
define internal i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcEc(%"class.std::__1::basic_streambuf"* %this, i8 signext %__c) #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %__nout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 6
  %0 = load i8*, i8** %__nout_, align 8
  %__eout_ = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 7
  %1 = load i8*, i8** %__eout_, align 8
  %cmp = icmp eq i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %__c.addr, align 1
  %call = call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %2) #14
  %3 = bitcast %"class.std::__1::basic_streambuf"* %this1 to i32 (%"class.std::__1::basic_streambuf"*, i32)***
  %vtable = load i32 (%"class.std::__1::basic_streambuf"*, i32)**, i32 (%"class.std::__1::basic_streambuf"*, i32)*** %3, align 8
  %vfn = getelementptr inbounds i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vtable, i64 13
  %4 = load i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vfn, align 8
  %call2 = call i32 %4(%"class.std::__1::basic_streambuf"* %this1, i32 %call)
  store i32 %call2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8, i8* %__c.addr, align 1
  %__nout_3 = getelementptr inbounds %"class.std::__1::basic_streambuf", %"class.std::__1::basic_streambuf"* %this1, i32 0, i32 6
  %6 = load i8*, i8** %__nout_3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %__nout_3, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8, i8* %__c.addr, align 1
  %call4 = call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %7) #14
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__cap_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l, i32 0, i32 0
  %1 = load i64, i64* %__cap_, align 8
  %and = and i64 %1, -2
  ret i64 %and
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l, i32 0, i32 1
  %1 = load i64, i64* %__size_, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s, i32 0, i32 0
  %__size_ = bitcast %union.anon.0* %1 to i8*
  %2 = load i8, i8* %__size_, align 8
  %conv = zext i8 %2 to i32
  %shr = ashr i32 %conv, 1
  %conv2 = sext i32 %shr to i64
  ret i64 %conv2
}

; Function Attrs: noinline optnone ssp uwtable
define internal dereferenceable(8) i8** @_ZNSt3__1L3maxIPcNS_6__lessIS1_S1_EEEERKT_S6_S6_T0_(i8** dereferenceable(8) %__a, i8** dereferenceable(8) %__b) #2 {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca i8**, align 8
  %__b.addr = alloca i8**, align 8
  store i8** %__a, i8*** %__a.addr, align 8
  store i8** %__b, i8*** %__b.addr, align 8
  %0 = load i8**, i8*** %__a.addr, align 8
  %1 = load i8**, i8*** %__b.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__16__lessIPcS1_EclERKS1_S4_(%"struct.std::__1::__less"* %__comp, i8** dereferenceable(8) %0, i8** dereferenceable(8) %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8**, i8*** %__b.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8**, i8*** %__a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi i8** [ %2, %cond.true ], [ %3, %cond.false ]
  ret i8** %cond-lvalue
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @_ZNKSt3__16__lessIPcS1_EclERKS1_S4_(%"struct.std::__1::__less"* %this, i8** dereferenceable(8) %__x, i8** dereferenceable(8) %__y) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__less"*, align 8
  %__x.addr = alloca i8**, align 8
  %__y.addr = alloca i8**, align 8
  store %"struct.std::__1::__less"* %this, %"struct.std::__1::__less"** %this.addr, align 8
  store i8** %__x, i8*** %__x.addr, align 8
  store i8** %__y, i8*** %__y.addr, align 8
  %this1 = load %"struct.std::__1::__less"*, %"struct.std::__1::__less"** %this.addr, align 8
  %0 = load i8**, i8*** %__x.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8**, i8*** %__y.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %cmp = icmp ult i8* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal14UniversalPrintIbEEvRKT_PNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i8* dereferenceable(1) %value, %"class.std::__1::basic_ostream"* %os) #2 {
entry:
  %value.addr = alloca i8*, align 8
  %os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store i8* %value, i8** %value.addr, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr, align 8
  call void @_ZN7testing8internal16UniversalPrinterIbE5PrintERKbPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i8* dereferenceable(1) %0, %"class.std::__1::basic_ostream"* %1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal16UniversalPrinterIbE5PrintERKbPNSt3__113basic_ostreamIcNS5_11char_traitsIcEEEE(i8* dereferenceable(1) %value, %"class.std::__1::basic_ostream"* %os) #2 align 2 {
entry:
  %value.addr = alloca i8*, align 8
  %os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store i8* %value, i8** %value.addr, align 8
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr, align 8
  call void @_ZN7testing8internal7PrintToEbPNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(i1 zeroext %tobool, %"class.std::__1::basic_ostream"* %2)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7testing8internal7PrintToEbPNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(i1 zeroext %x, %"class.std::__1::basic_ostream"* %os) #2 {
entry:
  %x.addr = alloca i8, align 1
  %os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %frombool = zext i1 %x to i8
  store i8 %frombool, i8* %x.addr, align 1
  store %"class.std::__1::basic_ostream"* %os, %"class.std::__1::basic_ostream"** %os.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %os.addr, align 8
  %1 = load i8, i8* %x.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)
  %call = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %0, i8* %cond)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringbuf"*, align 8
  %ref.tmp = alloca %"class.std::__1::allocator", align 1
  %undef.agg.tmp = alloca %"class.std::__1::allocator", align 1
  %ref.tmp13 = alloca %"class.std::__1::allocator", align 1
  %undef.agg.tmp15 = alloca %"class.std::__1::allocator", align 1
  %ref.tmp18 = alloca %"class.std::__1::allocator", align 1
  %undef.agg.tmp20 = alloca %"class.std::__1::allocator", align 1
  store %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_stringbuf"*, %"class.std::__1::basic_stringbuf"** %this.addr, align 8
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %0 = load i32, i32* %__mode_, align 8
  %and = and i32 %0, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %1 = load i8*, i8** %__hm_, align 8
  %2 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %2)
  %cmp = icmp ult i8* %1, %call
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call3 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv(%"class.std::__1::basic_streambuf"* %3)
  %__hm_4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  store i8* %call3, i8** %__hm_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call5 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv(%"class.std::__1::basic_streambuf"* %4)
  %__hm_6 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 2
  %5 = load i8*, i8** %__hm_6, align 8
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %__str_) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %agg.result, i8* %call5, i8* %5, %"class.std::__1::allocator"* dereferenceable(1) %ref.tmp)
  br label %return

if.else:                                          ; preds = %entry
  %__mode_7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 3
  %6 = load i32, i32* %__mode_7, align 8
  %and8 = and i32 %6, 8
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.else
  %7 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call11 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv(%"class.std::__1::basic_streambuf"* %7)
  %8 = bitcast %"class.std::__1::basic_stringbuf"* %this1 to %"class.std::__1::basic_streambuf"*
  %call12 = call i8* @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv(%"class.std::__1::basic_streambuf"* %8)
  %__str_14 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %__str_14) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %agg.result, i8* %call11, i8* %call12, %"class.std::__1::allocator"* dereferenceable(1) %ref.tmp13)
  br label %return

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %__str_19 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this1, i32 0, i32 1
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %__str_19) #14
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_(%"class.std::__1::basic_string"* %agg.result, %"class.std::__1::allocator"* dereferenceable(1) %ref.tmp18) #14
  br label %return

return:                                           ; preds = %if.end17, %if.then10, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %retval = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this1) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %this, i8* %__first, i8* %__last, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__first.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  %2 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %this1, i8* %0, i8* %1, %"class.std::__1::allocator"* dereferenceable(1) %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS4_(%"class.std::__1::basic_string"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_(%"class.std::__1::basic_string"* %this1, %"class.std::__1::allocator"* dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.1"*
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %0) #14
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %0
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IPcEET_S8_RKS4_(%"class.std::__1::basic_string"* %this, i8* %__first, i8* %__last, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::__1::__second_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %__r_, %"class.std::__1::allocator"* dereferenceable(1) %1)
  %2 = load i8*, i8** %__first.addr, align 8
  %3 = load i8*, i8** %__last.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_(%"class.std::__1::basic_string"* %this1, i8* %2, i8* %3)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__t) unnamed_addr #2 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__second_tag", align 1
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr, align 8
  call void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %this1, %"class.std::__1::allocator"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_(%"class.std::__1::basic_string"* %this, i8* %__first, i8* %__last) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %__sz = alloca i64, align 8
  %__p = alloca i8*, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__first.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  %call = call i64 @_ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_(i8* %0, i8* %1)
  store i64 %call, i64* %__sz, align 8
  %2 = load i64, i64* %__sz, align 8
  %call2 = call i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv(%"class.std::__1::basic_string"* %this1) #14
  %cmp = icmp ugt i64 %2, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*
  call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %3) #17
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %__sz, align 8
  %cmp3 = icmp ult i64 %4, 23
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %5 = load i64, i64* %__sz, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %this1, i64 %5) #14
  %call5 = call i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this1) #14
  store i8* %call5, i8** %__p, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %6 = load i64, i64* %__sz, align 8
  %call6 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %6) #14
  store i64 %call6, i64* %__cap, align 8
  %call7 = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this1) #14
  %7 = load i64, i64* %__cap, align 8
  %add = add i64 %7, 1
  %call8 = call i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(%"class.std::__1::allocator"* dereferenceable(1) %call7, i64 %add)
  store i8* %call8, i8** %__p, align 8
  %8 = load i8*, i8** %__p, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %this1, i8* %8) #14
  %9 = load i64, i64* %__cap, align 8
  %add9 = add i64 %9, 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %this1, i64 %add9) #14
  %10 = load i64, i64* %__sz, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %this1, i64 %10) #14
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %11 = load i8*, i8** %__first.addr, align 8
  %12 = load i8*, i8** %__last.addr, align 8
  %cmp11 = icmp ne i8* %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %__p, align 8
  %14 = load i8*, i8** %__first.addr, align 8
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %13, i8* dereferenceable(1) %14) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8*, i8** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %__first.addr, align 8
  %16 = load i8*, i8** %__p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr12, i8** %__p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %__p, align 8
  store i8 0, i8* %ref.tmp, align 1
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %17, i8* dereferenceable(1) %ref.tmp) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__t) unnamed_addr #2 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__second_tag", align 1
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %1 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  call void @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev(%"struct.std::__1::__compressed_pair_elem"* %1)
  %2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.1"*
  %3 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr, align 8
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator"* dereferenceable(1) %3) #14
  call void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.1"* %2, %"class.std::__1::allocator"* dereferenceable(1) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator"* dereferenceable(1) %__t) #5 {
entry:
  %__t.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__t, %"class.std::__1::allocator"** %__t.addr, align 8
  %0 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__t.addr, align 8
  ret %"class.std::__1::allocator"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2IRKS2_vEEOT_(%"struct.std::__1::__compressed_pair_elem.1"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__u) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  %__u.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__u, %"class.std::__1::allocator"** %__u.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"class.std::__1::allocator"*
  %1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__u.addr, align 8
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__1L7forwardIRKNS_9allocatorIcEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator"* dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define internal i64 @_ZNSt3__1L8distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #2 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  %0 = load i8*, i8** %__first.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  %call = call i64 @_ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE(i8* %0, i8* %1)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__m = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this1) #14
  %call2 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %call) #14
  store i64 %call2, i64* %__m, align 8
  %0 = load i64, i64* %__m, align 8
  %sub = sub i64 %0, 16
  ret i64 %sub
}

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) #11

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm(%"class.std::__1::basic_string"* %this, i64 %__s) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__s, i64* %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__s.addr, align 8
  %shl = shl i64 %0, 1
  %conv = trunc i64 %shl to i8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__s2 = bitcast %union.anon* %1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %2 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s2, i32 0, i32 0
  %__size_ = bitcast %union.anon.0* %2 to i8*
  store i8 %conv, i8* %__size_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s, i32 0, i32 1
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %arrayidx) #14
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm(i64 %__s) #5 align 2 {
entry:
  %retval = alloca i64, align 8
  %__s.addr = alloca i64, align 8
  %__guess = alloca i64, align 8
  store i64 %__s, i64* %__s.addr, align 8
  %0 = load i64, i64* %__s.addr, align 8
  %cmp = icmp ult i64 %0, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 22, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %__s.addr, align 8
  %add = add i64 %1, 1
  %call = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %add) #14
  %sub = sub i64 %call, 1
  store i64 %sub, i64* %__guess, align 8
  %2 = load i64, i64* %__guess, align 8
  %cmp1 = icmp eq i64 %2, 23
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %__guess, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %__guess, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %__guess, align 8
  store i64 %4, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8
  ret i64 %5
}

; Function Attrs: noinline optnone ssp uwtable
define internal i8* @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m(%"class.std::__1::allocator"* dereferenceable(1) %__a, i64 %__n) #2 align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i8* @_ZNSt3__19allocatorIcE8allocateEmPKv(%"class.std::__1::allocator"* %0, i64 %1, i8* null)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocEv(%"class.std::__1::basic_string"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc(%"class.std::__1::basic_string"* %this, i8* %__p) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__p.addr = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__p, i8** %__p.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l, i32 0, i32 2
  store i8* %0, i8** %__data_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm(%"class.std::__1::basic_string"* %this, i64 %__s) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__s, i64* %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__s.addr, align 8
  %or = or i64 1, %0
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__cap_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l, i32 0, i32 0
  store i64 %or, i64* %__cap_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm(%"class.std::__1::basic_string"* %this, i64 %__s) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i64, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__s, i64* %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__s.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call dereferenceable(24) %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv(%"class.std::__1::__compressed_pair"* %__r_) #14
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %__l, i32 0, i32 1
  store i64 %0, i64* %__size_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %__c1, i8* dereferenceable(1) %__c2) #5 align 2 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8
  store i8* %__c2, i8** %__c2.addr, align 8
  %0 = load i8*, i8** %__c2.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %__c1.addr, align 8
  store i8 %1, i8* %2, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__1L10__distanceIPcEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE(i8* %__first, i8* %__last) #5 {
entry:
  %0 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8
  store i8* %__last, i8** %__last.addr, align 8
  %1 = load i8*, i8** %__last.addr, align 8
  %2 = load i8*, i8** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %__a) #5 align 2 {
entry:
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp = alloca %"struct.std::__1::__has_max_size", align 1
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %0 = bitcast %"struct.std::__1::__has_max_size"* %ref.tmp to %"struct.std::__1::integral_constant"*
  %1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %call = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %1) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10__max_sizeENS_17integral_constantIbLb1EEERKS2_(%"class.std::__1::allocator"* dereferenceable(1) %__a) #5 align 2 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant", align 1
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  %call = call i64 @_ZNKSt3__19allocatorIcE8max_sizeEv(%"class.std::__1::allocator"* %1) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNKSt3__19allocatorIcE8max_sizeEv(%"class.std::__1::allocator"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  ret i64 -1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__114pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %__r) #5 align 2 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8
  %0 = load i8*, i8** %__r.addr, align 8
  %call = call i8* @_ZNSt3__1L9addressofIcEEPT_RS1_(i8* dereferenceable(1) %0) #14
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @_ZNSt3__1L9addressofIcEEPT_RS1_(i8* dereferenceable(1) %__x) #5 {
entry:
  %__x.addr = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr, align 8
  %0 = load i8*, i8** %__x.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm(i64 %__s) #5 align 2 {
entry:
  %__s.addr = alloca i64, align 8
  store i64 %__s, i64* %__s.addr, align 8
  %0 = load i64, i64* %__s.addr, align 8
  %add = add i64 %0, 15
  %and = and i64 %add, -16
  ret i64 %and
}

; Function Attrs: noinline optnone ssp uwtable
define internal i8* @_ZNSt3__19allocatorIcE8allocateEmPKv(%"class.std::__1::allocator"* %this, i64 %__n, i8*) #2 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNKSt3__19allocatorIcE8max_sizeEv(%"class.std::__1::allocator"* %this1) #14
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__1L20__throw_length_errorEPKc(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.71, i32 0, i32 0)) #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 1
  %call2 = call i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %mul, i64 1)
  ret i8* %call2
}

; Function Attrs: noinline noreturn optnone ssp uwtable
define internal void @_ZNSt3__1L20__throw_length_errorEPKc(i8* %__msg) #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__msg.addr = alloca i8*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %__msg, i8** %__msg.addr, align 8
  %exception = call i8* @__cxa_allocate_exception(i64 16) #14
  %0 = bitcast i8* %exception to %"class.std::length_error"*
  %1 = load i8*, i8** %__msg.addr, align 8
  invoke void @_ZNSt12length_errorC1EPKc(%"class.std::length_error"* %0, i8* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #17
  unreachable

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @__cxa_free_exception(i8* %exception) #14
  br label %eh.resume

return:                                           ; No predecessors!
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: noinline optnone ssp uwtable
define internal i8* @_ZNSt3__1L17__libcpp_allocateEmm(i64 %__size, i64 %__align) #2 {
entry:
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i64 %__size, i64* %__size.addr, align 8
  store i64 %__align, i64* %__align.addr, align 8
  %0 = load i64, i64* %__size.addr, align 8
  %call = call i8* @_Znwm(i64 %0) #13
  ret i8* %call
}

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt12length_errorC1EPKc(%"class.std::length_error"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::length_error"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::length_error"* %this, %"class.std::length_error"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  call void @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* %this1, i8* %0)
  ret void
}

declare void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(%"class.std::length_error"*) unnamed_addr #6

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: noinline optnone ssp uwtable
define internal void @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* %this, i8* %__s) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca %"class.std::length_error"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::length_error"* %this, %"class.std::length_error"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::length_error"*, %"class.std::length_error"** %this.addr, align 8
  %0 = bitcast %"class.std::length_error"* %this1 to %"class.std::logic_error"*
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %0, i8* %1)
  %2 = bitcast %"class.std::length_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8
  ret void
}

declare void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"*, i8*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondEv(%"class.std::__1::__compressed_pair"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.1"*
  %call = call dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %0) #14
  ret %"class.std::__1::allocator"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.1"* %this) #5 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.1"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.1"* %this, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.1"*, %"struct.std::__1::__compressed_pair_elem.1"** %this.addr, align 8
  %0 = bitcast %"struct.std::__1::__compressed_pair_elem.1"* %this1 to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS4_(%"class.std::__1::basic_string"* %this, %"class.std::__1::allocator"* dereferenceable(1) %__a) unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__a.addr = alloca %"class.std::__1::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::__1::__second_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store %"class.std::__1::allocator"* %__a, %"class.std::__1::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_string"* %this1 to %"class.std::__1::__basic_string_common"*
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %__a.addr, align 8
  invoke void @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1IRKS5_EENS_12__second_tagEOT_(%"class.std::__1::__compressed_pair"* %__r_, %"class.std::__1::allocator"* dereferenceable(1) %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv(%"class.std::__1::basic_string"* %this1) #14
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_stringstream"* %this, i8** %vtt) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_stringstream"*, align 8
  %vtt.addr = alloca i8**, align 8
  store %"class.std::__1::basic_stringstream"* %this, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  %this1 = load %"class.std::__1::basic_stringstream"*, %"class.std::__1::basic_stringstream"** %this.addr, align 8
  %vtt2 = load i8**, i8*** %vtt.addr, align 8
  %0 = load i8*, i8** %vtt2, align 8
  %1 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i32 (...)***
  %2 = bitcast i8* %0 to i32 (...)**
  store i32 (...)** %2, i32 (...)*** %1, align 8
  %3 = getelementptr inbounds i8*, i8** %vtt2, i64 8
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8**
  %vtable = load i8*, i8** %5, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %6 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %6, align 8
  %7 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %vbase.offset
  %8 = bitcast i8* %add.ptr to i32 (...)***
  %9 = bitcast i8* %4 to i32 (...)**
  store i32 (...)** %9, i32 (...)*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %vtt2, i64 9
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast %"class.std::__1::basic_stringstream"* %this1 to i8*
  %add.ptr3 = getelementptr inbounds i8, i8* %12, i64 16
  %13 = bitcast i8* %add.ptr3 to i32 (...)***
  %14 = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %14, i32 (...)*** %13, align 8
  %__sb_ = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this1, i32 0, i32 1
  call void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %__sb_) #14
  %15 = bitcast %"class.std::__1::basic_stringstream"* %this1 to %"class.std::__1::basic_iostream"*
  %16 = getelementptr inbounds i8*, i8** %vtt2, i64 1
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %15, i8** %16) #14
  ret void
}

; Function Attrs: noinline ssp uwtable
define internal void @_GLOBAL__sub_I_mission_feasibility_test.cpp() #0 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.21()
  call void @__cxx_global_var_init.25()
  call void @__cxx_global_var_init.28()
  call void @__cxx_global_var_init.30()
  call void @__cxx_global_var_init.34()
  call void @__cxx_global_var_init.36()
  call void @__cxx_global_var_init.39()
  call void @__cxx_global_var_init.42()
  call void @__cxx_global_var_init.44()
  call void @__cxx_global_var_init.50()
  call void @__cxx_global_var_init.54()
  call void @__cxx_global_var_init.56()
  call void @__cxx_global_var_init.58()
  call void @__cxx_global_var_init.61()
  call void @__cxx_global_var_init.63()
  ret void
}

attributes #0 = { noinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { builtin }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}