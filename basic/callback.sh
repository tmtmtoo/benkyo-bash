#!/bin/bash

set -x

function execute() {
	local CALLBACK=$1
	local RET=$(eval $CALLBACK $RANDOM)
	echo "$RET"
}

execute "echo"
