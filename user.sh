#!/bin/bash
set -e
 
printf "\n\033[0;44m---> Creating SSH master user.\033[0m\n"
 
useradd -m -d /home/${SSH_MASTER_USER} -G ssh ${SSH_MASTER_USER} -s /bin/bash
echo "${SSH_MASTER_USER}:${SSH_MASTER_PASS}" | chpasswd
echo 'PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin"' >> /home/${SSH_MASTER_USER}/.profile
 
addgroup sftp
 
exec "$@"
