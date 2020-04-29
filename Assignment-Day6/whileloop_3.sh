#!/bin/bash -x


numberOfHeads=0
numberOfTails=0

while (( numberOfHeads<11 && numberOfTails<11 ))
do
        randomCheck=$(( RANDOM%2 ))
        if [[ $randomCheck -eq 0 ]]
        then
                ((numberOfHeads++))
        else
                ((numberOfTails++))
        fi
done
echo "Heads=$numberOfHeads"
echo "Tails=$numberOfTails"
