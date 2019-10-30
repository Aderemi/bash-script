#!/usr/bin/env bash
a=( $* )

sum=0

for (( i=0; i<${#a[@]}; ++i))
do
    sum=$((sum + a[i]))
done

echo ${sum}