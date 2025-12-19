#!/bin/bash

# Simple interactive bash calculator
# Runs in a loop until the user chooses to exit


while true
do
    echo "=========================="
    echo "      BASH CALCULATOR     "
    echo "=========================="

    # Validate that the entered value is an integer (supports negatives)
    while true ;
    do
        read -p "Enter first number: " num1
        
        if [[ "$num1" =~ ^-?[0-9]+$ ]]; then
            # valid integer -> exit validation loop
            break
        else   
            echo " Enter a valid integer"
        fi
    done

while true ;
do
    read -p "Enter second number: " num2
    if [[ "$num2" =~  ^-?[0-9]+$ ]]; then
        break
    else
        echo " Enter a valid integer"
    fi
done

    echo "Choose an operation:"
    read -p  "1)Add, 2)subtract, 3)Multipy, 4)Divide : " op

    if [ "$op" -eq  1 ]; then
        result=$(( num1 + num2 ))
        echo "Result : $result"
   
    elif [ "$op" -eq  2 ]; then
        result=$((num1 - num2))
        echo "Result : $result"
   
    elif [ "$op" -eq  3 ]; then
        result=$((num1 * num2))
        echo "Result : $result"
   
    elif [ "$op" -eq  4 ]; then
        # Division: guard against division by zero
        if  [ "$num2" -eq 0 ]; then
            echo "denominator cannot be zero"
        else
            result=$((num1 / num2))
            echo "Result : $result"
        fi
    else
        echo "Invalid operation. please choose from 1-4"
    fi

    # Prompt to exit; accept 'Y' or 'y' to quit, anything else continues
    read -p "Do you want to exit? (Y/N) " exit
    if [[ $exit == "Y" || $exit == "y" ]]; then
        echo "Exiting the calculator. Goodbye"
        break
    fi
done
