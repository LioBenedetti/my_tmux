#!/bin/bash

function usage {
        echo "Usage : $0 {left|right|status|current}"
}

if [[  $# < 1 ]]
then
        usage
        exit 1
fi

if [[ ! $1 == "left" && ! $1 == "right" && ! $1 == "current" && ! $1 == "status" ]]
then
	usage
	exit 1
fi

case $1 in

left)
	echo "#[fg=white,bg=red,bold] THINKPAD #S #[fg=red,bg=black,nobold]"
;;

right)
	echo '#[fg=yellow,bg=black]#[bg=yellow,fg=black,bold] #(cut -d " " -f 1-3 /proc/loadavg) #[bg=yellow,fg=green,nobold]#[bg=green,fg=white,bold] #(~/freem.sh) #[bg=green,fg=blue,nobold]#[bg=blue,fg=white,bold] #( date "+%Y-%m-%d %H:%M:%S") #[default]'
;;

current)
	echo '#[fg=black,bg=blue]#[fg=white,bg=blue] #I  #[fg=colour231,bold]#W #[fg=colour31,bg=colour234,nobold]'
;;

status)
	echo '#[fg=white,bg=grey]#I #[fg=white] #[default]#W '
;;

*)
        usage
        exit 2
;;
esac
