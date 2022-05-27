notify-send TheOnlineNews "$(curl -s https://english.onlinekhabar.com/feed  | grep '<title>' | tail -n +3 | cut -d'>' -f2 | cut -d'<' -f1)"
samachar.sh
