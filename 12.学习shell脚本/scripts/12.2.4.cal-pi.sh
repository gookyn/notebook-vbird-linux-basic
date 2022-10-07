#!/bin/bash

# Program:
#   User input a scale number to calculate pi number.
# History:
#   2022/10/07  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "This program will calculate pi value.\n"
echo -e "You should input a float number to calculate pi value.\n"
read -p "The scale number (1~100) ? " checking

# 判断是否有输入值，默认为 10
num=${checking:-"10"}

echo -e "Starting calculate pi value. Be patient...\n"

# 4*a(1) 为 bc 提供的一个计算 Pi 的函数
# scale 为 bc 计算几个小数点位，注意：最好不要超过 5000，CPU 会处于高负载
time echo "scale=${num}; 4*a(1)" | bc -lq