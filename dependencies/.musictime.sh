#Troll #1

#Install Dependencies
sudo apt-get install sox
sudo apt-get install sox libsox-fmt-all
sudo apt-get install wget

#Make Hidden Directory
cd /home
cd user
cd Music
mkdir .epicsongs
cd /.epicsongs

#VOLUME UP BABY!!!
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


#Install some epic music
sudo wget https://ia800806.us.archive.org/33/items/JoJoSiwaBOOMERANGOfficialVideo_201708/JoJo%20Siwa%20-%20BOOMERANG%20%28Official%20Video%29.mp3
sudo wget https://ia800902.us.archive.org/28/items/tvtunes_19828/Bubble%20Guppies.mp3
sudo wget https://download.realmp3.fun/i/Rick-Astley-Never-Gonna-Give-You-Up.mp3
sudo wget https://ia800902.us.archive.org/29/items/tvtunes_27307/Frozen%20-%20Let%20it%20Go.mp3
sudo wget https://ia803103.us.archive.org/10/items/babyjustinbieberlyrics/Baby%20Justin%20Bieber%20Lyrics.mp3

#Point to looping script to constantly set the volume to 100%
cd home
cd user
cd Music
gnome-terminal -x ./.volumeup.sh
gnome-terminal -x ./.volumeup.sh &

#Start laughing your head off
sudo play 'JoJo Siwa - BOOMERANG (Official Video)'.mp3
sudo play 'Bubble Guppies'.mp3
sudo play Rick-Astley-Never-Gonna-Give-You-Up.mp3
sudo play 'Frozen - Let it Go'.mp3
sudo play 'Baby Justin Bieber Lyrics'.mp3

