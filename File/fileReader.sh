#!/usr/bin/env bash

fileName=$1

while IFS=: read -r line; do
    echo ${line}
done < ${fileName}
