#!/bin/bash
default_username="developer"
default_password="fireflink123"

echo "Enter username:"
read username
echo "Enter password:"
read -s password

if [ "$username" == "$default_username" ] && [ "$password" == "$default_password" ]; then
    echo "Authentication successful."
else
    echo "Authentication failed."
fi
