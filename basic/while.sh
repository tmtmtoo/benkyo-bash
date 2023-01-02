#!/bin/bash

set -x

TIMEOUT_SEC=$1
: ${TIMEOUT_SEC:=5}

COMMAND=$2
: ${COMMAND:='echo enter the command.'}

BASE_TIME=$(date +%s)

while ! eval $COMMAND; do
	NOW=$(date +%s)
	DIFF=$((NOW - BASE_TIME))

	[ $DIFF -gt $TIMEOUT_SEC ] &&
		echo 'timeouted' &&
		break
done

echo 'done'
