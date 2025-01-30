#!/bin/bash


echo "Enter first number: "  # Prompt the first number
read num1  # Read the first number and store it in variable num1

echo "Enter second number: "  # Prompt the  second number
read num2  # Read the second number and store it in variable num2

# Ask the user for an operation
echo "Choose an operation (+, -, *, /): "  # Prompt the user to select an operation
read op  # Read the operator input

# Perform the calculation based on the chosen operator
case $op in
    +) result=$((num1 + num2));;
    -) result=$((num1 - num2));;
    \*) result=$((num1 * num2));;
    /) result=$((num1 / num2));;
    *) echo "Invalid operation"; exit 1;;
esac

# Display the result
echo "Result: $result"

