#!/bin/bash

sed 's/"//g' $1 | sed 's/;/,/g' > "clean_$1"
echo "$1 is now clean 👍"
