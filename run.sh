#!/bin/sh

echo "********************************"
echo "* Setting up git authentication."
echo "********************************"

read -s "Please enter your git email: " gitemail
read -s -p "Enter a passphrase - leave empty for no passphrase: " passphrase

# Generate an SSH key without passphrase.
yes y | ssh-keygen -t rsa -N "${passphrase}" -b 4096 -C "${gitemail}" -f ~/.ssh/id_rsa

echo ""
echo "********************************"
echo "* Please add the ssh key contents from ~/.ssh/id_rsa.pub to your git account."
echo "********************************"
echo ""
