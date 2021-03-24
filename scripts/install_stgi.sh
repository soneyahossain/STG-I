#!/bin/bash

usage()
{
	echo "Make sure to define the following environment variables:"
	echo " STGI_HOME    # this is the top-level directory for STGI"
	echo " LLVM_DIR     # installation directory for llvm"
	echo " STGI_LIB     # default path for STG library (e.g.: /usr/local/lib/stgi)"
	echo " STGI_INC     # default path for STG headers (e.g.: /usr/local/include/stgi)"
}

assert_env_var_defined()
{
	if [ ! -v "$1" ]; then
		echo "$1 must be defined"
		echo
		usage
		exit 1
	fi
}

install_stg_lib()
{
	echo "Installing STGI support library"
	pushd $STGI_HOME/lib
	make
	make install
	if [ ! $? -eq 0 ]; then
		sudo -E make install
	fi
}

install_stg_llvm_pass()
{
	echo "Installing STGI LLVM pass"
	cd "$STGI_HOME"/pass/STGInstrumenter/fromllvminstall || exit
	cmake .
	make
       	sudo -E make install

	#
	# Verify installation
	#
	if [ ! -f "$STGI_LIB"/stg.bc ]; then
		echo "STGi instrumentation bitcode failed to install"
		exit 1
	fi

	if [ ! -f "$STGI_LIB"/LLVMSTGInstrumenter.so ]; then
		echo "STG LLVM pass failed to install"
		exit 1
	fi

	if [ ! -f "$STGI_INC"/stg.h ]; then
		echo "STGi header definitions failed to install" 
		exit 1
	fi


	echo "===================================================="
	echo "STG-I has been successfully installed on your system"
	echo "===================================================="
}

assert_env_var_defined STGI_HOME
assert_env_var_defined LLVM_DIR
assert_env_var_defined STGI_LIB
assert_env_var_defined STGI_INC

if [ ! -d "$STGI_INC" ]; then
	mkdir -p "$STGI_INC"
	if [ ! -d "$STGI_INC" ]; then
		sudo mkdir -p "$STGI_INC"
	fi
fi

if [ ! -d "$STGI_LIB" ]; then
	mkdir -p "$STGI_LIB"
	if [ ! -d "$STGI_LIB" ]; then
		sudo mkdir -p "$STGI_LIB"
	fi
fi

cd "$STGI_HOME"/scripts || exit
./distclean.sh

install_stg_lib
install_stg_llvm_pass
