#!/bin/sh -e

case $1 in
	help)
		echo "usage: TBD"
		;;
	test)
		exec /stgi/scripts/run_tests.sh
		;;
	stgi)
		shift
		exec $*
		;;
	*)
		echo "Unsupported command: $1"
		exit 1
		;;
esac

exit 0
