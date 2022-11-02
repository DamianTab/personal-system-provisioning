#!/bin/bash
# My own bash scripts add on 02.11.2022

# prints the input - debug
function print_my_input() {
  echo 'Your input: ' $1
}

function ff(){
if (($# == 0))
then
	/usr/bin/firefox &
	exit
else
#echo "Searching for : $@"
for term in $@ ; do
#    echo "$term"
    search="$search $term"
done
#	echo "$search"
	/usr/bin/firefox --search "$search" &
	exit;
fi
}