#!/bin/bash

set -x

## integer

FLAG=$1
: ${FLAG:=false}

function ret() {
	$1 && return 0 || return 1
}

if $(ret $FLAG); then
	echo succeeded
else
	echo failed
fi

## string

function concat2() {
	echo "$1$2"
}

RET=$(concat2 aaa bbb)
echo "$RET"
