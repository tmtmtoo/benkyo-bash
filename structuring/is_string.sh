#!/bin/bash

set -e

VALUE=
REGEX=

cd $(dirname $0)

while getopts v:r: opt; do
	case $opt in
	v) VALUE="$OPTARG" ;;
	r) REGEX="$OPTARG" ;;
	\?) exit 1 ;;
	esac
done

function is_null() {
	[ -z "$1" ] && return 0 || return 1
}

is_null $VALUE && ./error_log.sh '-v VALUE must be specified.' $0 && exit 1

if ! is_null $REGEX; then
	[[ $VALUE =~ $REGEX ]] ||
		(./error_log.sh 'unmatch regular expression.' $0 && exit 1)
fi
