#!/bin/bash

# Program:
#   User input dir name, I find the permission of files.
# History:
#   2022/10/30  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 先判断目录是否存在
read -p "Please input a directory: " dir
if [ "${dir}" == "" -o ! -d "${dir}" ]; then
	echo "The ${dir} is NOT exist in your system."
	exit 1
fi

# 该目录下的所有文件及目录
filelist=$(ls ${dir})

for filename in ${filelist}
do
	perm=""
	test -r "${dir}/${filename}" && perm="${perm} readable"
	test -w "${dir}/${filename}" && perm="${perm} writable"
	test -x "${dir}/${filename}" && perm="${perm} executable"
	echo "The file ${dir}/${filename}'s permission is ${perm} "
done