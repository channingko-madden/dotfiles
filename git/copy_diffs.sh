#!/bin/bash

# This script copies files that have git differences to a github codespace.
# It assumes the codespace has the following directory structure: /workspaces/repo/
# The intent is to run this script in the parent directory of where your local repo
# is.
#
# $1 is the name of the repo
# $2 is the name of the codespace

if [ -z "$1" ]; then
	echo "Need to pass the name of the repo as the first cli arg"
	exit 1
fi

cd $1

if git rev-parse --verify HEAD >/dev/null 2>&1; then  
	against=HEAD  
else  
	# Initial commit: diff against an empty tree object  
	against=4b825dc642cb6eb9a060e54bf8d69288fbee4904  
fi 

filearr="$(git diff --staged --name-only)"

for val in ${filearr[@]}
do 
	remotepath="remote:/workspaces/$1/$val"
	echo $remotepath
	if [ -n "$2" ]; then
		gh codespace cp -r -c $2 -e $val $remotepath
	else
		gh codespace cp -r -e $val $remotepath
	fi
done

cd ..
