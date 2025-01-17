#!/bin/bash

# hello_message="Hello, bash!"
# current_dir=$(pwd)
# readonly variable_wont_change="blue"


# # echo '$hello_message from  $current_dir' // literal
# # echo "$hello_message from  $current_dir your favourite color is $variable_wont_change" // string

# variable_wont_change="red"
# echo "$hello_message from  $current_dir your favourite color is $variable_wont_change"


# number=15

# if [ $((number % 2)) -eq 0 ];
# then
#     echo "the number $number is even";
# else 
#     echo "the number $number is odd"
# fi

# read -p "Enter your value: " n

# case $n in
#     1|2) 
#         echo "one or two";;
#     [3-9])
#         echo "three to nine";;
#     ??)
#         echo "two digit number";;
#     *)
#         echo "more than one digit";;
# esac

# check_even() {
#     local mod=2
#     echo "the value of mod is $mod inside the function"
#     if (( $1 % mod == 0 )); then
#         echo "the number $1 is even";
#     else 
#         echo "the number $1 is odd"
#     fi
# }


#   number=2344
#   check_even $number
#   echo "The value of $mod is outside of function: "

# counter=1
# while [[ "$counter" -le 10 ]]; do
#     echo "The counter is at: $counter"
#     counter=$((counter + 1))
# done
# echo "The count has finished"

# counter=1
# until [[ "$counter" -gt 10 ]]; do
#     echo "The counter is at: $counter"
#     counter=$((counter + 1))
# done
# echo "The count has finished"

# services=("nginx" "mysql" "php" "virtualmachines" "docker")

# for i in "${services[@]}"
# do 
#     echo $i
# done  

# for ((i=5; i<20; i=i+2)); do
#     echo "the value of i is: $i"
# done

# while true; do
#     read -p "Enter a number between 1 and 25: " n
#     if [[ "$n" -ge 1 && "$n" -le 25 ]]; then
#         echo "You have entered $n"
#     else
#         echo "You have entered an invalid number"
#         break
#     fi
# done

# echo "The loop has finished"

