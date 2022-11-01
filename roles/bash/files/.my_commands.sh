#!/bin/bash

# prints the input - debug
function print_my_input() {
  echo 'Your input: ' $1
}

alias al='ls -al'
alias mail='/usr/bin/thunderbird &'
alias ff='/usr/bin/firefox'
alias fb='/usr/bin/firefox www.facebook.pl &'
alias cl='clear'
alias pip='pip3'
alias con='source /opt/anaconda/bin/activate root'
alias cond='conda deactivate'
alias myip='curl ipinfo.io'

alias python='python2'
alias docker_run_check='docker inspect --format "$(curl -s https://gist.githubusercontent.com/efrecon/8ce9c75d518b6eb863f667442d7bc679/raw/run.tpl)" $1'


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


# My own scripts add on 01.11.2022 - Add to .bashrc
#source ~/.my_commands.sh
