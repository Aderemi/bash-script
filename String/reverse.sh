#!/usr/bin/env bash

str=$1
ret=""
for ((i=$((${#str} - 1)); i>=0; i--)) do
    ret+=${str:${i}:1}
done

echo ${ret}
