#!/bin/bash

# Program:
#   You input your demobilization date, I calculate how many days before you demobilize.
# History:
#   2022/10/23  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 提示程序的用途
echo "This program will try to calculate:"
echo "How many days before your demobilization date..."

# 提示用户如何输入日期
read -p "Please input your demobilization date (YYYYMMDD ex>20221023): " date2

# 判断用户输入的日期格式是否为 8 位数字
date_d=$(echo ${date2} | grep '[0-9]\{8\}')
if [ "${date_d}" == "" ]; then
	echo "You input the wrong date format..."
	exit 1
fi

# 计算日期
declare -i date_dem=$(date --date="${date2}" +%s)      # 退伍日期秒数
declare -i date_now=$(date +%s)                        # 现在日期秒数
declare -i date_total_s=$((${date_dem}-${date_now}))   # 剩余秒数
declare -i date_d=$((${date_total_s}/60/60/24))        # 转为天数

# 判断是否退伍
if [ "${date_total_s}" -lt "0" ]; then
	echo "You had been demobilization before: " $((-1*${date_d})) " days ago."
else
	declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60))
	echo "You will demobilize after ${date_d} days and ${date_h} hours."
fi