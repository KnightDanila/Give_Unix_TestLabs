#!/bin/bash

echo "Enter your name: "
read user_name
echo "Enter your two favourite numbers: "
read -p "Enter number one: " number_one
read -p "Enter number two: " number_two
sum=$(($number_one+$number_two))
product=$(($number_one*$number_two))

echo "Hi, there ^_^ "
echo $user_name
echo "The sum of your favourite numbers: " $sum
echo "The product of your favourite numbers: " $product

# To make script runnable on Linux use: chmod +x ./HelloNameSumProd.sh