#!/bin/bash
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

