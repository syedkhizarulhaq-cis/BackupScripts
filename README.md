# BackupScripts
Testing out some back up strategies using scripting

*) The repositry is for testing out some backup strategies, first of which was to take md5 hash of backup files and compare it with other files.

*) If the hash of two files were same the older file would be deleted (generatemd5.sh).

*) The strategy failed because the md5 of each backup came out to be different even if no apparent change was done to the backup files, this could be due to date difference.

*)
