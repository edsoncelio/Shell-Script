#!/bin/bash
while :
do
cat /proc/meminfo > /var/tmp/mem.`date +%Y%m%d.%H%M`
sleep 60
done
