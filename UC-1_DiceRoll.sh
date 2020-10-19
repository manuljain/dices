#! /bin/bash

count=0
sum=0

while true
do
    r1=$((1+RANDOM%6))
    r2=$((1+RANDOM%6))
    r3=$(($r1+$r2))

    if [[ $r3 -ne 12 ]]
    then
        count=$(($count+1))
        sum=$(($sum+$r3))
    else
        break

    fi
done
count=$(($count+1))
echo "number of times dice roll : $count"
echo "sum is : $sum"
