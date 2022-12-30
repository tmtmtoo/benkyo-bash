#!/bin/bash

echo "
when the script always succeeds, exit code is 0."

./main.sh './ping_once.stub.sh 0' 1
[ $? -eq 0 ] && echo ok || (echo ng && exit 1)

echo "
when the script always succeeds, exit code is 0,
even if not explicitly specify the timeout."

./main.sh './ping_once.stub.sh 0'
[ $? -eq 0 ] && echo ok || (echo ng && exit 1)


echo "
when the script always fails, exit code is not 0."

./main.sh './ping_once.stub.sh 1' 1
[ $? -ne 0 ] && echo ok || (echo ng && exit 1)

echo "
when the script always fails, exit code is not 0,
even if not explicitly specify the timeout."

./main.sh './ping_once.stub.sh 1'
[ $? -ne 0 ] && echo ok || (echo ng && exit 1)

echo "
exit code is not 0 if no options are specified."

./main.sh
[ $? -ne 0 ] && echo ok || (echo ng && exit 1)

