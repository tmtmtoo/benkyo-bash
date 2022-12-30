#!/bin/bash

set -e

SCRIPT=$1

TIMEOUT_SEC=$2
: ${TIMEOUT_SEC:=5}

cd $(dirname $0)

./is_string.sh -v $SCRIPT  ||
	(./error_log.sh 'valid script file must be specified at first argument.' $0 && exit 1)

./is_integer.sh -v $TIMEOUT_SEC ||
	(./error_log.sh 'specification of timeout sec is invalid.' $0&& exit 1)

BASE_TIME=$(date +%s)

until bash $SCRIPT google.com; do
	NOW=$(date +%s)
	DIFF=$((NOW - BASE_TIME))

	[ $DIFF -gt $TIMEOUT_SEC ] && exit 1 && break || sleep 1
done

