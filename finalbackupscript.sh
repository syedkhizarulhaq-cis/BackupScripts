#!/bin/bash

base_path="/var/opt/gitlab/backups"
#edited by gitlab 2
var1=`ls -Asrt ${base_path} | tail -n 1 | cut -d ' ' -f 1` #Get the file size of last file
var2=`ls -Asrt ${base_path} | tail -n 2 | head -n 1 | cut -d ' ' -f 1` #Get the file size of the 2nd last file
var3=`ls ${base_path} | tail -n 2 | head -n 1` #Get second last file
var4=`ls ${base_path} | tail -n 1` #Get last file

if ([ $var1 -eq $var2 ] && [ `stat -c %Y $base_path/$var3` -lt `stat -c %Y $base_path/$var4` ]); then

	rm -f ${base_path}/$var3

elif ([ $var1 -eq $var2 ] && [ `stat -c %Y $base_path/$var4` -lt `stat -c %Y $base_path/$var3` ]); then

        rm -f ${base_path}/$var4

else

	echo "Do nothing";

fi
