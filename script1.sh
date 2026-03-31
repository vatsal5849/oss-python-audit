#!/bin/bash
# Script 1: System Identity Report
# Author: Vatsal Shrivastava
# Course: Open Source Software Capstone Project

STUDENT_NAME="Vatsal Shrivastava"
SOFTWARE_CHOICE="Git"

kernel_version=$(uname -r)
current_user=$(whoami)
uptime_info=$(uptime -p)
current_date=$(date)

distro_name=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "========================================"
echo "Open Source Audit - System Report"
echo "Student: $STUDENT_NAME"
echo "========================================"

echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distribution : $distro_name"
echo "Kernel Version     : $kernel_version"
echo "Logged User        : $current_user"
echo "System Uptime      : $uptime_info"
echo "Current Date/Time  : $current_date"

echo ""
echo "Note: Linux systems are generally distributed under the GNU General Public License (GPL)."