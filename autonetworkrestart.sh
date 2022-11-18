#!/bin/bash
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

echo Launched at $(date "+%Y-%m-%d %H:%M:%S")

while true; do
    if ! [ "`ping -c 1 -W 10 google.com`" ]; then
        nmcli networking off && nmcli networking on
        echo Network restarted $(date "+%Y-%m-%d %H:%M:%S")
    fi
    sleep 300
done

