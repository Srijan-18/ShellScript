#!/bin/bash -x

read -p "Enter a single digit number : " input
case "$input" in
	0) echo "$input : Zero" ;;
	1) echo "$input : One" ;;
	2) echo "$input : Two" ;;
	3) echo "$input : Three" ;;
	4) echo "$input : Four" ;;
	5) echo "$input : Five" ;;
	6) echo "$input : Six" ;;
	7) echo "$input : Seven" ;;
	8) echo "$input : Eight" ;;
	9) echo "$input : Nine" ;;
	*) echo "$input : Invalid Input" ;;
esac
