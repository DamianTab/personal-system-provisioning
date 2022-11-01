#!bin/bash
free -h
echo 3 > /proc/sys/vm/drop_caches 
swapoff -a 
swapon -a
echo ""
free -h