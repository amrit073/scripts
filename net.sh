while true ; do  if  curl -s http://amritpdl.com.np/  ; then aplay notify.wav && notify-send ABOUT_NET "ita back!" ; else echo 'bey' ; fi ; sleep 10s ; done
