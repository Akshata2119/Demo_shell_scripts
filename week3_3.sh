#!/bin/bash


<<info

the script related to reset password 

info

echo "===Reset the password ===" 
 
read -p "Enter the username:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];

then

	echo "user does not exist"

else

	echo "User exist please reset password"

	sudo -i passwd $username

	echo "$username password updated successfully"

fi

