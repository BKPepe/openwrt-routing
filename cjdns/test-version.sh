#!/bin/sh

# shellcheck shell=busybox

case "$PKG_NAME" in
cjdns)
	cjdroute --version 2>&1 | grep -F "$PKG_VERSION"
	;;

cjdns-tests)
	# The test binary does not provide version information
	exit 0
	;;

*)
	echo "Untested package: $PKG_NAME" >&2
	exit 1
	;;
esac
