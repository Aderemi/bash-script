#!/usr/bin/env bash

elems=( $@ )
product=1
if [[ ${#elems[*]} -eq 0 ]]; then
    product=0
fi

for(( i=0; i<${#elems[@]}; ++i ))
do
    product=$((product * elems[i]))
done
echo ${product}