#!/bin/bash
# init_notice="$(curl https://www.tuiost.edu.np/ | grep 'b class' | cut -d '>' -f 2 | cut -d '<' -f 1 | head -n4)"
# cat init_notice > initnotice
# sleep 10s
notify-send CEENOTICE "$(curl https://mec.gov.np/en/category/notice | grep h4 | cut -d'>' -f2 | cut -d'<' -f1 | head -n5)"
while true 
do

curl https://mec.gov.np/en/category/notice | grep h4 | cut -d'>' -f2 | cut -d'<' -f1 | head -n5 > finalnotice2


if [[ $(cat finalnotice2) != $(cat initnotice2) ]]
then 
	notify-send TU-NOTICE "$(cat finalnotice2)"
	aplay ~/notify.wav
	cat finalnotice2 > initnotice2
else
	echo same

fi

sleep 10m
done
