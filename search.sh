#!/bin/sh

if [ $# -eq 2 ] ; then
ANDROID_MAKE_FILES=`find -name "$1"`

for file in $ANDROID_MAKE_FILES
do
	result=`grep -n $2 $file`
	if [ "$result" != "" ] ; then
		echo "\033[33m $file \033[0m" 
		echo "\033[36m $result \033[0m"
		
	fi
done

else
	echo "\033[31m Useage : search.sh search_file search_patten \033[0m"

fi

