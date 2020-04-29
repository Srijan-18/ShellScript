#!/bin/bash -x

count=0;
sum=0;
while [ $count -lt 5 ]
do
	sum=$(( $sum + $(( RANDOM%100 )) ))
	count=$(( $count+1 ))
done
average=$(bc <<< "scale=3; $sum/$count")



