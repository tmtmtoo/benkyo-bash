#!/bin/bash

set -x

## initialize

LIST=($(seq 20 29))

## show all elements

echo "elements: ${LIST[*]}"

## show length

echo "length: ${#LIST[*]}"

## show head

echo "head: ${LIST[0]}"

## show tail

echo "tail: ${LIST[*]:1}"

## show last

LAST_IDX=$((${#LIST[*]} - 1))
echo "last: ${LIST[$LAST_IDX]}"

## for loop push

for i in ${LIST[*]}; do
	LIST+=($i)
done

echo ${LIST[*]}
