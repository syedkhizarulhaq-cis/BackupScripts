#!/bin/bash
var1=`ls -Asrt /var/opt/gitlab/backups | tail -n 1 | cut -d ' ' -f 1` #Get the file size of last file
var2=`ls -Asrt /var/opt/gitlab/backups | tail -n 2 | head -n 1 | cut -d ' ' -f 1` #Get the file size 
var3=`ls -Artls /var/opt/gitlab/backups/ | tail -n 2 | head -n 1 | cut -d ' ' -f 10 | tr -d ':'`
var4=`ls -Artls /var/opt/gitlab/backups/ | tail -n 1 | cut -d ' ' -f 10 | tr -d ':'`
if ([ $var1 == $var2 ] && [ $var4 -gt $var3 ]); then
var5=`ls -Art /var/opt/gitlab/backups/ | tail -n 2 | head -n 1`
var6=`ls -Art /var/opt/gitlab/backups/ | tail -n 1`
rm /var/opt/gitlab/backups/"$var5"
else
rm /var/opt/gitlab/backups/"$var6"
fi

