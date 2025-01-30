#!/bin/bash

# Ask the user to enter a number
echo "Enter a number: "
read number

# Check if the number is even or odd using modulus operator
if (( number % 2 == 0 )); then
    echo "The number $number is Even."
else
    echo "The number $number is Odd."
fi





