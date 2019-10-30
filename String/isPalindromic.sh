#!/usr/bin/env bash

str=$1

len=${#str}
count=0
for ((i=0; i<$((len/2 + len%2)); i++)) do
    behind=$((len - i - 1))
    add=2
    if [[ ${behind} = ${i} ]]; then
        add=1
    fi
    if [[ ${str:${i}:1} != ${str:${behind}:1} ]]; then
        break;
    fi
    let count+=add
done

echo $(( count * 100 / len ))