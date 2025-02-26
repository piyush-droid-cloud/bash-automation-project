#!/bin/bash

echo "choose option"
echo "1. add user"
echo "2. delete user"
echo "3. list user"
read -p "enter your choice : " choice
echo ""
echo ""

case $choice in 
	1)
		read -p "enter your username to add : " username
		echo ""
		sudo useradd "$username" && echo "User $username successfully added."
		;; 

	2)
		read -p "enter user to delete : " username
		echo ""
		sudo userdel "$username" && echo "User $username successfully deleted. "
		;;
	3)
		echo "List of users "
		echo ""
		cut -d: -f1 /etc/passwd
		;;
	*)
		echo "invalid choice "
		echo "choose option such as 1 for add user, 2 for delete user,  3 for list all user"
		;;
esac

