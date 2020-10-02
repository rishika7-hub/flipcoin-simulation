#!/bin/bash

declare -A dict1

echo "Welcome to Flip Coin Combination Problem"
echo "Enter the number of times you would like to flip:"
read n
echo "Enter your choice:"
echo "1.Singlet"
echo "2.Doublet"
echo "3.Triplet"
read option

num=$(( $RANDOM % 2 ))
if [ $num -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi

case "$option" in

"1.")
for (( i=1; i<=$n; i++ ))
do
num=$(( RANDOM % 2 ))
if [ $num -eq 0 ]
then
	echo "Head"
	let count1++
else
	echo "Tail"
	let count2++
fi
done
dict1[Head]="$count1"
dict1[Tail]="$count2"

percentage_of_head=$(( $count1 * 5)) 
percentage_of_tail=$(( $count2 * 5)) 
;;

