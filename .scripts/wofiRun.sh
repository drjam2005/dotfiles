if pgrep -x "wofi" > /dev/null; then
    exit
else
    wofi --show drun
fi
