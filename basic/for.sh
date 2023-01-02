#!/bin/bash

set -x

MAX=$1
: ${MAX:=1}

COMMAND=$2
: ${COMMAND:='echo enter the command.'}

## count up

echo "
execution $MAX count...
"

for ((i = 0; i < $MAX; i++)); do
	eval $COMMAND
done

## for in

echo "
show your arguments for this script...
"

for arg in $@; do
	echo "$arg"
done
