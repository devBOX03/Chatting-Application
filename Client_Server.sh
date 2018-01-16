#!/bin/bash
echo ""
echo "                    ***********MENU************"
echo ""
echo "     1.Create a Server                        2.Create a Client"
echo ""
read -p "Enter your choice: " choice
echo ""
case $choice in
	1) echo "                           SERVER SIDE"
	xterm -e gcc server.c -o server -pthread &
	echo ""
	./server
	;;
	2) echo "                           CLIENT SIDE"
	echo ""
	read -p "Enter the server ip address: " ipaddress
	xterm -e gcc client.c -o client -pthread
	echo ""
	./client $ipaddress
	
	;;
	*) echo "You have entered a invalid choice."
	echo "Thank you for using our App."
	;;
esac
