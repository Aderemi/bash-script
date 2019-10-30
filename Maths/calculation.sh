#!/usr/bin/env bash
args=( $* )

if (( ${#args[@]} )); then
    operator=${args[0]} ;
    args=( ${args[@]/$operator} )
fi

case ${operator} in
    add|a)

    ./add.sh ${args[*]}
    ;;
    subtract|s)
    ./subtract.sh ${args[0]} ${args[1]}
    ;;
    multiply|m)
    ./multiply.sh "${args[*]}"
    ;;
    divide|d)
    ./divide.sh ${args[0]} ${args[1]}
    ;;
    binary|bin)
    ./findBinary.sh "${args[0]}"
    ;;
    squareroot|sqrt)
    ./squareRoot.sh "${args[0]}"
    ;;
    *)
    echo "To use this little script to perform your favourite number calculation following is the format
calculation.sh operator value(s)...
----- operator can be subtract(s), multiply(m), add(a), squareroot(sqrt), binary(bin), divide(d)
"
    ;;
esac

Mistakes I made

