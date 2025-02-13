if [ $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}' | awk -F'.' '{print $1}') -eq 1 ]; then
    exit 0
fi
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+