#!/bin/bash

# Program:
#   Repeat question until user input correct answer.
# History:
#   2022/10/30  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

while [ "${yn}" != "yes" -a "${yn}" != "YES" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done

echo "OK! You input the correct answer!"