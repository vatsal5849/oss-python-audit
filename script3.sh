#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vatsal Shrivastava

echo "--------------------------------------"
echo "Directory Disk and Permission Report"
echo "Student: Vatsal Shrivastava"
echo "--------------------------------------"

directories="/etc /var/log /home /usr/bin /tmp"

for dir in $directories
do
    if [ -d "$dir" ]
    then
        size=$(du -sh $dir 2>/dev/null | awk '{print $1}')
        permissions=$(ls -ld $dir | awk '{print $1}')
        owner=$(ls -ld $dir | awk '{print $3}')

        echo "Directory : $dir"
        echo "Owner     : $owner"
        echo "Permissions: $permissions"
        echo "Size      : $size"
        echo "--------------------------------------"
    else
        echo "$dir does not exist on this system."
    fi
done

echo ""
echo "Checking Git configuration file..."

if [ -f "$HOME/.gitconfig" ]
then
    ls -l $HOME/.gitconfig
else
    echo "Git configuration file not found."
fi