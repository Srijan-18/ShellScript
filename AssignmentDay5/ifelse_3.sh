#!/bin/bash -x

read -p "Enter the year to check :" year
result="NA";
if [ $(( $year%400 )) -eq 0 ];
	then
	result="is a leap year"
else
	if [ $(( $year%100 )) -ne 0 -a $(( $year%4 )) -eq 0 ]
	then
		result="is a leap year"
	else
 		result="is not a leap year";
	fi
fi
echo $year" "$result;
