#!/bin/zsh

# This script should be run from the root of linux repo
# Get all the undocumented attributes found using the
# coccinelle scripts and grep their usage in Documentation/ABI
# The output- a list of 965 attributes is stored in result/no_sysfs_doc.txt

FILE="/home/a/projects/attr-doc/result/undocumented_attrs.txt"
while read -r line; do
	if [ -z "$(git grep $line ~/projects/linux/Documentation/ABI)" ]
	then
		echo $line
	fi
done < $FILE
