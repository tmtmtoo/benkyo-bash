#!/bin/bash

set -x

case $1 in
	*foo*) echo 'ふー' ;;
	bar) echo 'ばー' ;;
	[a-b][a-b]z) echo 'ばず？' ;;
	*) echo 'はずれ' ;;
esac
