#!/bin/bash

# -File system disk space usage:
echo -e "e31;43m***** FILE SYSTEM DISK SPACE USAGE *****\E[0m"
df -h
echo ""
echo -e "\e[31;43m***** FREE AND USED MEMEORY *****\E[0m"
free
echo ""
free -h >> ~/backups/free_mem.txt
stat >> ~/backups/freeddisk/freed_disk.txt
du -h >> ~/backups/diskuse/disk_usage.txt
Isof -h >> ~/backups/openlist/open_list_txt
