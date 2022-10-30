#!/bin/bash

# Program:
#   Use function to repeat information.
# History:
#   2022/10/30  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 函数要在程序最前面
function printit() {
  # $1、$2、$3... 指函数的参数
	echo "Your choice is ${1}"
}

echo "This program will print your selection!"

# $1 指命令的参数
case ${1} in
  "one")
    # 传入参数
    printit 1
    ;;
  "two")
    printit 2
    ;;
  "three")
    printit 3
    ;;
  *)
    echo "Usage ${0} {one|two|three}"
    ;;
esac