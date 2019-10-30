#!/usr/bin/env bash

num=$1
binary=""
for ((; num > 0; ))
do
    binary=$((num % 2))${binary};
    num=$((num/2))
done

echo ${binary}