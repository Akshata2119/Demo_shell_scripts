#!/bin/bash


<<info

this script is for forloop

loops : thats you want to repeate again and again and again based on conditions

for loops conditions :
1..10

starting point 1 
ending point 10

increament / decrement = +/-

5..1

starting point 5
ending point 1

info

for (( num=1 ; num<=10 ; num++ ))

do
	echo "$num"
	echo "hello"

done



