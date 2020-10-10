#
# Install STGInstrumenter LLVM pass
# for binary installation of LLVM
#
cmake_minimum_required(VERSION 3.00)
project(stgi)

#
# LLVM Configuration
#


list(APPEND CMAKE_PREFIX_PATH "${LLVM_DIR}/lib/cmake/llvm/")
find_package(LLVM 10 REQUIRED CONFIG)
include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})

# Use the same C++ standard as LLVM does
set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

add_library( STGInstrumenter SHARED ../STGInstrumenter.cpp )

# Allow undefined symbols in shared objects on Darwin (this is the default
# behaviour on Linux)
target_link_libraries(STGInstrumenter
  "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")

# For Unix 
install (TARGETS STGInstrumenter DESTINATION lib/stgi)
