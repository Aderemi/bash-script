#!/usr/bin/env bash

num=${1}
prec=${2-3}

for (( i=0; i<prec; i++))
do let num*=100 ; done

for (( sqrt=1; sqrt*sqrt <= num; ++sqrt ))do :; done
let --sqrt
sqrt=${sqrt:0:-prec}.${sqrt:-prec}
echo ${sqrt}





#num=${1}
#places=${2-3}
#i=0
#
#while [[ $(( i*i )) -lt ${num} ]]
#do
#    i=$(( i + 1 ))
#done
#
#echo ${i};
#rem=$(( num % i ))
#root="${i}."
#for (( j=0; j<places; j++ ))
#do
#    rem=$((rem * 10))
#    root="$root$((rem / i))"
#    rem=$((rem % i))
#done
#echo ${root}
#
#echo --------------------------------------------------
#with awk
#num=$1
#prec=${2:-3}
#awk "BEGIN {printf \"%.${prec}f\n\", sqrt($num)}"