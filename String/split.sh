#!/usr/bin/env bash

all=( "$@" )
command=$1
str=$2
pos_delim=( ${all[@]:2} )

if [[ "$command" != "delim" ]] && [[ "$command" != "pos" ]]; then
    echo "Command(first argument) should either be delim or pos"
    exit 1
fi

arr=""
txt=""
if [[ "$command" = "delim" ]]; then
    for ((i=0; i<${#str}; i++))
    do
        if [[ ${str:${i}:1} = ${pos_delim} ]];
        then
            arr="${arr} ${txt}"
            txt=""
        else
            txt="${txt}${str:${i}:1}"
        fi
    done
    arr="${arr} ${txt}"
else
    start=0
    len=${#pos_delim[@]}
    for ((i=1; i<=${len}; i++))
    do
        strlen=$(( ${pos_delim[$(($i - 1))]} - start ))
        arr="${arr} ${str:${start}:${strlen}}"
        start=${pos_delim[$(($i - 1))]}
        if [[ ${i} = $(( len )) ]]; then
            strlen=$((${#str} - $start))
            arr="${arr} ${str:${start}:${strlen}}"
        fi
    done
fi
echo ${arr}