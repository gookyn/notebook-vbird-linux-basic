#!/bin/bash

# Program:
#   Use id, finger command to check system account's information.
# History:
#   2022/10/30  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 获取账号名称
users=$(cut -d ':' -f1 /etc/passwd)

for username in ${users}
do
	id ${username}
done