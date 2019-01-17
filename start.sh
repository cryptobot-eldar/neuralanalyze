#!/bin/bash
#exec &>>/var/log/work.log

while true
do
SERVICE0='neuralprediction.py'

ps -ef | grep $SERVICE0 | grep -v grep
[ $?  -eq "0" ] && echo "$SERVICE0 process is running" || echo "$SERVICE0 process is not running, starting"; python /usr/local/bin/neuralprediction.py




sleep 10
done
