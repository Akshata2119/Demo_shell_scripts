#!/bin/bash


<<info

delete user script, check first user is exist and display appropriate message

info

echo "=== delete the user ==="

read -p "Enter the username:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}' )

if [ $count == 0 ];

then
	echo "user does not exist"

else
	sudo userdel -r "$username"

	echo "user deleted successfully"

fi




