#!/bin/bash

set -x

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

