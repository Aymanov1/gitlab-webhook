#!/bin/sh
echo "Hello, "$USER".  This script will push the code to git repository using git flow"
echo -n "Enter your feature Name and press [ENTER]: "
read name
echo -n "Enter your The Message and press [ENTER]: "
read message


git flow feature start $name
git add .
git commit -m $message
git flow feature finish $name
git push origin develop 
