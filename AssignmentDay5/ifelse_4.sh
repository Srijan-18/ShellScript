#!/bin/bash -x

isHeads=0;
randomNumber=$(( RANDOM%2 ))
if [ $randomNumber -eq $isHeads ]
then
	echo "Heads";
else
	echo "Tails";
fi
