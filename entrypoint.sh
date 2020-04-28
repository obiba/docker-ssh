#!/bin/bash
set -e

if [ -n "$MASTER_USER" -a -n "$MASTER_PASS" ]
	then
	echo "Setting master user password..."
	echo "${MASTER_USER}:${MASTER_PASS}" | chpasswd
fi
 
printf "\n\033[0;44m---> Starting the SSH server.\033[0m\n"
 
service ssh start
service ssh status
 
exec "$@"
