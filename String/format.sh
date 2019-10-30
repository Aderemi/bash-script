#!/usr/bin/env bash

# Quoted because we receiving argument with spaces
all_args=( "$@" )
str=$1
substitutes=( ${all_args[@]:1} )

for (( i = 0; i < ${#substitutes[*]}; ++i )); do
    str=${str/\%s/${substitutes[i]}}
done

echo ${str}
