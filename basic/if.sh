#!/bin/bash

set -x

## string

STRING=$1
: ${STRING:="default"}

if [ $STRING = "foo" ]; then
	echo "$STRING !"
elif [ $STRING = "bar" ]; then
	echo "$STRING !!"
else
	echo "$STRING"
fi

## integer

INTEGER=$2
: ${INTEGER:=0}

if [ $INTEGER -eq 1 ]; then
	echo "$INTEGER !"
elif [ $INTEGER -lt 3 ]; then
	echo "$INTEGER !!"
else
	echo "$INTEGER"
fi
