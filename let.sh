#!/usr/bin/env bash
echo "Logical AND"
(( 0 && 1))
echo $?
let "num = (( 0 && 1 ))"
echo $num
let "num = (( 0 && 11))"
echo $?

echo "Logical OR"
