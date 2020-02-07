while :
do
    #Volume Back Up
    sudo pactl -- set-sink-volume 0 100%
    sudo amixer set Master unmute
    sudo amixer set Headphone unmute
    sudo amixer set PCM unmute
    sudo amixer set Front unmute
    sudo amixer set Surround unmute
    sudo amixer set Center unmute
    sudo amixer set LFE unmute
    sudo amixer set Side unmute

    sudo amixer set Master 100%
    sudo amixer set Headphone 100%
    sudo amixer set PCM 100%
    sudo amixer set Front 100%
    sudo amixer set Surround 100%
    sudo amixer set Center 100%
    sudo amixer set LFE 100%
    sudo amixer set Side 100%
done