#Credits: @mmudabbir
#!/bin/bash
var1=`ls -Asrt /var/opt/gitlab/backups | tail -n 1 | cut -d ' ' -f 1` #Get the file size of last file
var2=`ls -Asrt /var/opt/gitlab/backups | tail -n 2 | head -n 1 | cut -d ' ' -f 1` #Get the file size of the 2nd last file
var3=`ls -Artls /var/opt/gitlab/backups/ | tail -n 2 | head -n 1 | cut -d ' ' -f 10 | tr -d ':'` #Get file creation timestamp of second last file 
var4=`ls -Artls /var/opt/gitlab/backups/ | tail -n 1 | cut -d ' ' -f 10 | tr -d ':'` #Get file creation timestamp of last file
var5=`ls -Art /var/opt/gitlab/backups/ | tail -n 2 | head -n 1` #Get second last file
var6=`ls -Art /var/opt/gitlab/backups/ | tail -n 1` #Get last file

if ([ $var1 -eq $var2 ] && [ $var4 -gt $var3 ]); then #If both file size are same and file creation timestamp of last file is greater than second last file

	rm -f /var/opt/gitlab/backups/$var5 #remove second last file
elif ([ $var1 -eq $var2 ] && [ $var3 -gt $var4 ]); then

	rm -f /var/opt/gitlab/backups/$var6 #remove last file
else
	echo "Do nothing"
fi

