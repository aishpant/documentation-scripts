#!/bin/bash

print_stats () {
     local file="sysfs_stats.txt"
     if [ ! -f "$file" ] ; then
         # if not create the file
         touch "$file"
	 echo "KernelVersion DocumentedAttributes"
     fi
     echo -n "$1, " >> "$file"
     kernel_path="/home/a/projects/linux"
     git -C $kernel_path checkout $1
     OUTPUT="$(grep -r '^What' $kernel_path/Documentation/ABI/* --exclude-dir=$kernel_path/Documentation/ABI/obsolete | wc -l)"
     echo "$OUTPUT" >> "$file"
     git -C $kernel_path checkout master
     git -C $kernel_path clean -fxd
     git -C $kernel_path reset --hard linux-next/master
}

for i in {12..39}; do print_stats v2.6.$i; done
for i in {1..19}; do print_stats v3.$i; done
for i in {1..15}; do print_stats v4.$i; done
print_stats v4.16-rc3
