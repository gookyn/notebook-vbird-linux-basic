#!/bin/bash

# Program:
#   Use ping command to check the network's PC state.
# History:
#   2022/10/30  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# IP 前缀
network="192.168.1"

# seq：sequence 连续
for sitenu in $(seq 1 100)
do
	# 获取 ping 的返回值是正确还是错误
  ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1

	# 显示结果是正确的启动 UP，还是错误的没有连通 DOWN
	if [ "${result}" == 0 ]; then
		echo "Server ${network}.${sitenu} is UP."
	else
		echo "Server ${network}.${sitenu} is DOWN."
	fi
done