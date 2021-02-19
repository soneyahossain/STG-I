#!/bin/bash

remove_if_exists()
{
	to_remove=$1
	if [ -f $to_remove ]; then
		echo "Removing $to_remove"
#		sudo rm $to_remove
		rm $to_remove
	fi
}

if [ ! -z $STGI_HOME ]; then
	pushd $STGI_HOME/lib >/dev/null
	if [ -f Makefile ]; then
		make clean >/dev/null 2>&1
		sudo -E make distclean >/dev/null 2>&1
	fi
	popd >/dev/null

	pushd $STGI_HOME/pass/STGInstrumenter/fromllvminstall >/dev/null
	if [ -f Makefile ]; then
		make clean
	fi
	popd >/dev/null
fi

verify_uninstall() 
{
	success="yes"
	echo "Verifying STG-I uninstallation..."
	for f in $stgi_files
	do
		if [ -f $f ]; then
			echo "Warning: $f was not removed successfully"
			success="no"
		fi
	done

	if [ "$success" == "yes" ]; then
		echo "======================================================"
		echo "STG-I has been successfully uninstalled on your system"
		echo "======================================================"
	fi
}

#
# inventory of potential STG-I files
#
stgi_files="/usr/local/lib/stg.bc /usr/local/include/stgi/stg.h /usr/local/lib/libLLVMSTGInstrumenter.so"
if [ ! -z $STGI_LIB ]; then
	stgi_files="$stgi_files $STGI_LIB/stg.bc $STGI_LIB/libLLVMSTGInstrumenter.so"
fi
if [ ! -z $STGI_INC ]; then
	stgi_files="$stgi_files $STGI_INC/stg.h "
fi

for f in $stgi_files
do
	remove_if_exists $f
done

verify_uninstall
