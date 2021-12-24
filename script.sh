#!/bin/bash
#generating md5 hash of all the files in /var/opt/gitlab/backups folder
var=`sudo ls /var/opt/gitlab/backups`
path="/var/opt/gitlab/backups/"
for entry in $var
do
md5=`sudo md5sum "${path}$entry" | awk '{print $1}'`
echo $md5
done
