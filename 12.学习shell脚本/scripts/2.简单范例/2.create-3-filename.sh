#!/bin/bash

# Program:
#   Program creates three files, which named by user's input and date command.
# History:
#   2022/10/07  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 提示用户输入文件名，并保存到 fileuser 变量
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename: " fileuser

# 为了避免用户随意按 Enter 导致没有文件名，利用变量功能设置默认值
filename=${fileuser:-"filename"}

# 利用 date 命令获取日期，并设置文件名
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 创建文件
touch "${file1}"
touch "${file2}"
touch "${file3}"