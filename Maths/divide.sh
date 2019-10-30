#!/usr/bin/env bash

quotient=$(($1 / $2))
reminder=$(($1 % $2))

decimalPlaces=${3:-2}

for (( i = 0; i < ${decimalPlaces}; ++i )); do
    if [[ i -eq 0 ]]; then
        quotient="${quotient}."
    fi
    reminder=$((reminder * 10));
    quotient="${quotient}$((reminder / $2))"
    reminder=$((reminder % $2))
done
echo ${quotient}