#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vatsal Shrivastava

student="Vatsal Shrivastava"
package="git"

echo "-------------------------------------"
echo "FOSS Package Inspector"
echo "Student: $student"
echo "-------------------------------------"

echo "Checking whether $package is installed..."
echo ""

if command -v $package >/dev/null 2>&1
then
    echo "$package is installed on this system."

    version_info=$(git --version)
    echo "Version Details:"
    echo "$version_info"

else
    echo "$package is not installed."
fi

echo ""

case $package in
    git)
        echo "Git: A distributed version control system used by developers worldwide."
        ;;
    firefox)
        echo "Firefox: An open source browser developed by Mozilla."
        ;;
    vlc)
        echo "VLC: Free multimedia player capable of playing almost any format."
        ;;
    python3)
        echo "Python: A widely used open source programming language."
        ;;
    *)
        echo "Description not available."
        ;;
esac