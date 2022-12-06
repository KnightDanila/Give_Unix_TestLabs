#!/bin/bash

echo "Args: " $@
echo "Args number: " $#

#sum=$(($1+$2))
#echo $sum

if [ $# -gt 1 ]; then
	echo "Hello $@"
	exit 0
fi 

str="Hello stranger"
echo "str length: ${#str}"

for (( i=0; i<${#str}; i++)); do
	echo -n "${str:$i:1}"
	sleep 0.1 # wait 0.1 second
done
echo 


str="What is your name?"

for (( i=0; i<${#str}; i++)); do
	echo -n "${str:$i:1}"
	sleep 0.1 # wait 0.1 second
done
echo 

read user_name

str="Hello, $user_name"

for (( i=0; i<${#str}; i++)); do
	echo -n "${str:$i:1}"
	sleep 0.1 # wait 0.1 second
done
echo 
