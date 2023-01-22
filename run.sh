SHOULD_SWITCH_BACK=$1 # y/Y means it will switch back to current window  
CURRENT_WINDOW=$(xdotool getactivewindow)  
KEY="CTRL+R"  
BROWSER="Firefox"  
  


inotifywait -q -m -e close_write $1 |
while read -r filename event; do
    xdotool search --desktop 0 ${BROWSER} windowactivate  
    xdotool key ${KEY}  
if [[ $SHOULD_SWITCH_BACK == 'y' || $SHOULD_SWITCH_BACK == 'Y' ]]; then  
    xdotool windowfocus --sync ${CURRENT_WINDOW}  
    xdotool windowactivate --sync ${CURRENT_WINDOW}  
fi
done
