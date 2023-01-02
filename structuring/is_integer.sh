#!/bin/bash

set -e

VALUE=
LOWER=
UPPER=

cd $(dirname $0)

while getopts v:l:u: opt; do
	case $opt in
	v) VALUE="$OPTARG" ;;
	l) LOWER="$OPTARG" ;;
	u) UPPER="$OPTARG" ;;
	\?) exit 1 ;;
	esac
done

function validate() {
	expr "$1" + 1 >/dev/null 2>&1 && return 0 || return 1
}

function is_null() {
	[ -z "$1" ] && return 0 || return 1
}

is_null $VALUE && ./error_log.sh '-v VALUE must be specified.' $0 && exit 1
validate $VALUE || (./error_log.sh '-v VALUE must be integer.' $0 && exit 1)

if ! is_null $LOWER; then
	validate $LOWER || (./error_log.sh '-l LOWER must be integer.' $0 && exit 1)
	[ $VALUE -gt $LOWER ] || (./error_log.sh 'VALUE is less than LOWER.' $0 && exit 1)
elif ! is_null $UPPER; then
	validate $UPPER || (./error_log.sh '-u UPPER must be integer.' $0 && exit 1)
	[ $VALUE -lt $UPPER ] || (./error_log.sh 'VALUE is grater than UPPER.' $0 && exit 1)
fi
