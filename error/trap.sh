#!/bin/bash

set -x

catch() {
	echo "on_catch: $0 $@"
}

finally() {
	echo "on_finally: $0 $@"
}

# sigterm() {
# 	echo "on_sigterm: $@"
# }

trap 'catch "$@"' ERR
trap 'finally "$@"' EXIT

eval $1
