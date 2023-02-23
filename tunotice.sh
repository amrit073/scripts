#!/bin/bash
# init_notice="$(curl https://www.tuiost.edu.np/ | grep 'b class' | cut -d '>' -f 2 | cut -d '<' -f 1 | head -n4)"
# cat init_notice > initnotice
# sleep 10s
notify-send TU-NOTICE "$(curl -s https://www.tuiost.edu.np/ | grep 'b class' | cut -d '>' -f 2 | cut -d '<' -f 1 | head -n5)"
while true 
do

curl -s https://www.tuiost.edu.np/ | grep 'b class' | cut -d '>' -f 2 | cut -d '<' -f 1 | head -n5 > finalnotice


if [[ $(cat finalnotice) != $(cat initnotice) ]]
then 
	notify-send TU-NOTICE "$(cat finalnotice)"
	aplay ~/notify.wav
	cat finalnotice > initnotice
else
	echo same

fi

sleep 30m
done

