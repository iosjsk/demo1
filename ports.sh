#!/bin/bash

#this is used for checking the port is open or not

#RESULT=`netstat -ntlp | grep 8080 | awk '{print $4}' FS=:`
#RESULT=`netstat -ntlp | grep 8080 | awk '{print $4}' FS=:`
RESULT=`netstat -ntlp | grep 8080 | awk '{print $4}' FS=: | wc -l`
echo $RESULT
if [ $RESULT = 0 ];then
echo "ports are not running"
#if [ "$RESULT" -eq 8080 ];then
echo "jenkins port has stopped please check it once"
echo "jenkins ports are running"

 service jenkins start

else
echo " jenkins is running"

#echo "jenkins is not running"

#service jenkins start

fi



