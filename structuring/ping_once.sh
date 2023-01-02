#!/bin/bash

set -e

DST=$1

cd $(dirname $0)

./is_string.sh \
	-v $DST \
	-r "^([a-zA-Z0-9][a-zA-Z0-9-]{0,61}[a-zA-Z0-9]\.)+[a-zA-Z]{2,}$" ||
	(./error_log.sh 'destination must be domain name.' $0 && exit 1)

ping $DST -c 1 ||
	(./error_log.sh 'ping did not arrive.' $0 && exit 1)
