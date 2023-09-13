#!/bin/bash

set -x # Debug mode

a=5
b=3

echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulus: $((a % b))"

if [ $a -gt $b ]
then
    echo "a is greater than b"
else
    echo "b is greater than or equal to a"
fi

if [ $a -gt 0 ] && [ $b -lt 10 ]
then
    echo "Both conditions are true"
fi

if [ $a -lt 0 ] || [ $b -gt 10 ]
then
    echo "At least one condition is true"
fi



name="John"
if [ "$name" = "John" ]
then
    echo "Hello, John!"
fi

if [ -z "$name" ]
then
    echo "Name is empty"
else
    echo "Name is not empty"
fi

echo "Length of name: ${#name}"

