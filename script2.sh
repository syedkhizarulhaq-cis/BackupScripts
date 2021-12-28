#!/bin/bash
var=`ls -l /var/opt/gitlab/backups | awk '{print $5}'`
#echo $var
array=()
array+=($var)
arraylen="${#array[@]}" #length of the array
#echo $arraylen
for value in "${array[@]}" 
do
    for value2 in "${array[@]}"
    do
    if [ "$value" == "$value2" ];then
    echo "TRUE $value $value2"
    else
    echo "FALSE $value $value2"
    fi
    done
done
