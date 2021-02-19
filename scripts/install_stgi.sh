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
	if [ ! -v $1 ]; then
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
	sudo -E make install
}

install_stg_llvm_pass()
{
	echo "Installing STGI LLVM pass"
	TEMPDIR=/tmp/tmp.build.stgi.$$
	cd $STGI_HOME/pass/STGInstrumenter/fromllvminstall
	cmake .
	make
       	sudo -E make install

	#
	# Verify installation
	#
	if [ ! -f /usr/local/lib/stgi/stg.bc ]; then
		echo "STGi instrumentation bitcode failed to install"
		exit 1
	fi

	if [ ! /usr/local/lib/stgi/libSTGInstrumenter.so ]; then
		echo "STG LLVM pass failed to install"
		exit 1
	fi

	if [ ! -f /usr/local/include/stgi/stg.h ]; then
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

cd $STGI_HOME/scripts
./distclean.sh

install_stg_lib
install_stg_llvm_pass
