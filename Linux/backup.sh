#!/bin/bash

# Create archive file for home
tar cvf /var/backup/home.tar /home

# Move archived file to another directory
mv /var/backup/home.tar /var/backup/home.03182021.tar

# List all files and file sizes and save output to file
ls -lh /var/backup >> /var/backup/file_report.txt

# Print free memory and save output to file
free -h >> /var/backup/disk_report.txt