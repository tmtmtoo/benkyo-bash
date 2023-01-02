#!/bin/bash

MSG=$1
: ${MSG:=''}

SCRIPT=" $2:"
: ${SCRIPT=''}

echo "ERROR:$SCRIPT $MSG" >&2
