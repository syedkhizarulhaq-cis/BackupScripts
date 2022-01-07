# BackupScripts
Testing out some back up strategies using scripting

*) The repositry is for testing out some backup strategies, first of which was to take md5 hash of backup files and compare it with other files.

*) If the hash of two files were same the older file would be deleted (generatemd5.sh).

*) The strategy failed because the md5 of each backup came out to be different even if no apparent change was done to the backup files, this could be due to date difference.

*)The next strategy was to compare the file size of last two files in the backup folder, if the size is same then delete the one with the older date (finalbackupscript.sh)

*) This finalbackupscript.sh can then be added to the crontab of root user and ran at relevant times depending on the working hours.

*) We also needed to move to the backup files to a different machine so in case of disaster, our backups were safe on a different machine.

*) In order to achieve this efficiently, movetowin.sh was made which moved the backup files to a mounted folder depending on if the file names were different and if the windows
machines is live or up.
