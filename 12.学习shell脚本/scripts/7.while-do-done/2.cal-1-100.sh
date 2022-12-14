#!/bin/bash

# Program:
#   Use loop to calculate "1+2+3+...+100" result.
# History:
#   2022/10/30  Gookyn  First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

s=0
i=0

while [ "${i}" != "100" ]
do
	i=$(($i+1))
	s=$(($s+$i))
done

echo "The result of '1+2+3+...+100' is ==> $s"