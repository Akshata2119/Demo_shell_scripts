#!/bin/bash


<<info

This shell script will take periodic backups

eg. 
./backup.sh <source> <dest>

src /home/ubuntu/scripts
dest /home/ubuntu/backups

info

src=$1
dest=$2

timestamp=$(date '+%Y_%m_%d_%H_%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://twsbucketsshellscripts

echo "backup completed & uploaded to s3"








