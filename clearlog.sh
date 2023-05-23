#!/bin/bash

RED='[0;31m'
NC='[0m'
#GREEN='[0;32m'
#ORANGE='[0;33m'
BLUE='[0;34m'
PURPLE='[0;35m'
#CYAN='[0;36m'
LIGHT='[0;37m'
off='[m'
# ==========================================
# Getting

data=(`find /var/log/ -name *.log`);
for log in "${data[@]}"
do
echo "$log clear"
echo > $log
done
data=(`find /var/log/ -name *.err`);
for log in "${data[@]}"
do
echo "$log clear"
echo > $log
done
data=(`find /var/log/ -name mail.*`);
for log in "${data[@]}"
do
echo "$log clear"
echo > $log
done
echo > /var/log/syslog
echo > /var/log/btmp
echo > /var/log/messages
echo > /var/log/debug
echo -e "Already cleaned" | lolcat
