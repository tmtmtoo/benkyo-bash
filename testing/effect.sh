#!/bin/bash

set -e

DIR=

FILE=

cd $(dirname $0)

while getopts f:d: opt; do
	case $opt in
		d) DIR="$OPTARG" ;;
		f) FILE="$OPTARG" ;;
		\?) exit 1 ;;
	esac
done

[ -z "$DIR$FILE" ] && echo 'specify -d or -f option.' 1>&2 && exit 1

[ -n "$DIR" ] && mkdir -p "$DIR"

[ -n "$FILE" ] && touch "$FILE"

exit 0
