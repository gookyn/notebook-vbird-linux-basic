#!/bin/bash

# Program:
#   Using netstat and grep to detect WWW,SSH,FTP and Mail services.
# History:
#   2022/10/23  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 先输出一些提示信息
echo "Now, I will detect your Linux server's services!"
echo -e "The www, ftp, ssh, and mail(smtp) will be detected! \n"

# 开始执行一些测试任务，并且也输出一些信息
testfile=/dev/shm/netstat_checking.txt
# 先转存数据到内存中，不用一直执行 netstat
netstat -tuln > ${testfile}

# 检测 80 端口是否在运行
testing=$(grep ":80 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "WWW is running in your system."
fi

# 检测 22 端口是否在运行
testing=$(grep ":22 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "SSH is running in your system."
fi

# 检测 21 端口是否在运行
testing=$(grep ":21 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "FTP is running in your system."
fi

# 检测 25 端口是否在运行
testing=$(grep ":25 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "Mail is running in your system."
fi