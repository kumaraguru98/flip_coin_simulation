#! /bin/bash -x
echo "welcome to flipcoinsimulation!!"
coinrandomcheck=$(( RANDOM%2 ))
echo $coinrandomcheck
if (( $coinrandomcheck==0 ))
then 
	echo "Head"
else
	echo "Tail"
fi
