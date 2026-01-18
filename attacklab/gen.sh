#! /bin/bash

name=$(basename "$1" .s)
objFile="${name}.o"
dumpFile="${name}.d"

gcc -c -o "$objFile" "$1"
objdump -d "$objFile" > "$dumpFile"

cat "$dumpFile"