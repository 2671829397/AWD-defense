#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <filename1> <filename2> ..."
	exit 1
fi

for filename in "$@"
do
	while [ 1 ] 
	do
		if [ -f "$filename" ]; then
			rm -rf "$filename"
			if [ $? -eq 0 ]; then
				echo  "rm succeed for $filename."
				mkdir "$filename"
				if [ $? -eq 0 ]; then
					echo -e "\033[32mmkdir succeed for $filename!!!!\033[0m"
					break
				else
					echo "BUT mkdir error."
				fi
			else
				echo "rm error...????"
			fi
		else
			echo -e "\033[33mFile not find:$filename, maybe you can check your spelling.\033[0m"
			continue
		fi
#	sleep 1
	done
done
echo "Finish"
