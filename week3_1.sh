#!/bin/bash


<<info

week3 challge 1 : create user and check it exist , and print the message accordingly

info

echo "create new user"

read -p "Enter the username:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];

then 

	( echo "user does not exist please create"

read -p "Enter the username:" username

read -p "Enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "user created successfully"
  )
else
	echo "user already exist"

fi


