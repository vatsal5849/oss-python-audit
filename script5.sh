#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vatsal Shrivastava

echo "------------------------------------"
echo "Open Source Manifesto Generator"
echo "Student: Vatsal Shrivastava"
echo "------------------------------------"

read -p "Name an open source tool you use often: " tool
read -p "In one word, what does freedom mean to you? " freedom
read -p "What would you like to build and share openly? " project

today=$(date "+%d %B %Y")
file="manifesto_$(whoami).txt"

echo "Open Source Manifesto" > $file
echo "Date: $today" >> $file
echo "" >> $file
echo "For me, open source represents $freedom." >> $file
echo "Tools like $tool show how collaboration can improve technology." >> $file
echo "In the future I would like to build $project and share it freely." >> $file
echo "" >> $file
echo "- Written by Vatsal Shrivastava" >> $file

echo ""
echo "Manifesto saved in file: $file"
cat $file