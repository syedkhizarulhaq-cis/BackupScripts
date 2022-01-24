#!/bin/bash

count=$( ping -c 1 172.16.16.102 | grep icmp* | wc -l )


if ([ $count -gt 0 ] && [ `ls /var/opt/gitlab/backups/ | tail -n 1` == `ls /mnt/win_share | tail -n 1` ])
then

    echo "Do nothing"
    curl -X POST --data-urlencode "payload={\"channel\": \"#on-premise-gitlab\", \"username\": \"webhookbot\", \"text\": \"Redundant backups do not require removal today\", \"icon_emoji\": \":ghost:\"}" https://<webhook>
    

else

    cp /var/opt/gitlab/backups/$(ls /var/opt/gitlab/backups/ | tail -n 1) /mnt/win_share

fi
