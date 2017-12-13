#!/bin/zsh

# This script should be run from the root of linux repo
# Get all the undocumented attributes found using the
# coccinelle scripts and grep their usage in Documentation/ABI
# In retrospect, not very useful

FILE="/home/a/projects/attr-doc/result/undocumented_attrs.txt"
while read -r line; do
	if [ -z "$(git grep 'What:' ~/projects/linux/Documentation/ABI | grep $line)" ]
	then
		echo $line
	fi
done < $FILE
