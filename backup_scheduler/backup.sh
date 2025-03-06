#!/bin/bash

LOG_DIR="/var/log"
REMOTE_USER="test" 
REMOTE_HOST="172.24.137.244" 
REMOTE_BACKUP_DIR="/home/test/sujay/backup"
TMP_BACKUP_DIR="/home/sujay-pt7892/test@172.24.137.244" 
LOG_FILES=$(ls /var/log/*.log)

DATE=$(date +"%Y-%m-%d")

mkdir -p $TMP_BACKUP_DIR 

tar -czf "$TMP_BACKUP_DIR/tarlogs_$DATE.tar.gz" -C /var/log $LOG_FILES

# scp $TMP_BACKUP_DIR/tarlogs_$DATE.tar.gz $REMOTE_USER@$REMOTE_HOST:$REMOTE_BACKUP_DIR
scp -i /home/sujay-pt7892/.ssh/id_rsa "$TMP_BACKUP_DIR/tarlogs_$DATE.tar.gz" $REMOTE_USER@$REMOTE_HOST:$REMOTE_BACKUP_DIR


echo $? 

if [ $? -eq 0 ]; then
    echo "Backup successful"
    rm -rf $TMP_BACKUP_DIR/tarlogs_$DATE.tar.gz 
else
    echo "Backup failed"
fi
