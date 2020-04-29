#!/bin/bash -x

read -p "Enter Month in MM :" month
read -p "Enter date in DD :" date
output="FALSE";
if [ $month -ge 3 -a $month -le 6 ];
then
	if [ \( $month -eq 4 -a $date -le 30 -a $date -ge 1 \) -o \( $month -eq 5 -a $date -le 31 -a $date -ge 1 \) ];
	then
		output="TRUE";
	else
		if [ $month -eq 3 -a $date -ge 20 -a $date -ge 31 ];
		then
			output="TRUE";
		else
			if [ $month -eq 6 -a $date -ge 1 -a $date -ge 20 ];
			then
	      	output="TRUE";
			fi
		fi
	fi
fi

echo $output;


