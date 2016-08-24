#!/usr/bin/env bash
echo "Logical AND"
(( 0 && 1))
echo $?
let "num = (( 0 && 1 ))"
echo $num
let "num = (( 0 && 11))"
echo $?

echo "Logical OR"
((200 || 11))
echo $?
let "num = ((200 || 11))"
echo $num
let "num = ((200 || 11))"
echo $?

echo "Bitwise OR"
((2 | 1))
echo $?
let "num = ((2 | 1))"
echo $num
let "num = ((2 | 11))"
echo $?


