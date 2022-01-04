#!/bin/bash

count=$( ping -c 1 172.16.16.102 | grep icmp* | wc -l )


if [ $count -gt 0 ]
then

    cp /var/opt/gitlab/backups/$(ls /var/opt/gitlab/backups/ | tail -n 1) /mnt/win_share

else

    echo "Do nothing"

fi
