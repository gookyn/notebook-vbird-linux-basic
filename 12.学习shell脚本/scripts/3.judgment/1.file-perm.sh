#!/bin/bash

# Program:
#   User input a filename, program will check the following：
#   1. exist?
#   2. file/directory?
#   3. file permissions
# History:
#   2022/10/07  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "Please input a filename, I will check the filename's type and permission.\n" 

# 提示用户输入
read -p "Input a filename : " filename

# 判断是否已输入文件名
test -z ${filename} && echo "You must input a filename." && exit 0

# 判断文件是否存在
test ! -e ${filename} && echo "The filename '${filename}' do not exist." && exit 0

# 判断文件类型和属性
test -f ${filename} && filetype="regulare file" 
test -d ${filename} && filetype="directory" 
test -r ${filename} && perm="readable" 
test -w ${filename} && perm="${perm} writable" 
test -x ${filename} && perm="${perm} executable"

# 输出文件信息
echo -e "\nThe filename: ${filename} is a ${filetype}" 
echo -e "And the permissions for you are: ${perm}"