#!/bin/bash

# Program:
#   User inputs 2 integer numbers, program will cross these two numbers.
# History:
#   2022/10/07  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "You should input 2 numbers, I will multiplying them! \n"

read -p "first number:  " firstnu
read -p "second number: " secnu

# 利用 $((计算式)) 进行数值运算
total=$((${firstnu}*${secnu}))

echo -e "\nThe result of ${firstnu} x ${secnu} is ==> ${total}"