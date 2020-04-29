#!/bin/bash 

read -p "Enter the value of n :" n
nthHarmonic=0;
for (( count=1;count<=n;count++ ))
do
nthHarmonic=$( bc <<< "scale=4; $nthHarmonic+(1/$count)" )
done
echo $nthHarmonic
