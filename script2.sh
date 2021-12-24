#!/bin/bash
var=`ls -l /var/opt/gitlab/backups | awk '{print $5}'`
#echo $var
array=()
array+=($var)
arraylen="${#array[@]}" #length of the array
echo $arraylen
for value in "${array[@]}" 
do
echo $value
done
