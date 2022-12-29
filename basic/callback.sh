#!/bin/bash

set -x

## callback

function execute() {
	local CALLBACK=$1
	local RET=$(eval $CALLBACK $RANDOM)
	echo "$RET"
}

execute "echo"

## currying

function curry() {
	local FN_NAME=$1
	local CALLBACK=$2

	eval "
	function "$FN_NAME"() {
		eval $CALLBACK "\$1"
	}
	"
}

curry @fn1 echo
@fn1 10

curry @fn2 "expr 100 +"
@fn2 10

