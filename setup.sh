# activate venv
cd ~/Python-Slots
. slotmachine/bin/activate

# install openssh
sudo apt-get install openssh-server

# install wiki
sudo apt-get install pandoc
pandoc -s -o ~/Desktop/README.html wiki.md --css https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css

# install launcher
mv SlotMachine.desktop ~/Desktop/SlotMachine.desktop
mv Scoreboard.desktop ~/Desktop/Scoreboard.desktop
chmod a+x ~/Desktop/SlotMachine.desktop
chmod 700 ~/Desktop/SlotMachine.desktop
chmod a+x ~/Desktop/Scoreboard.desktop
chmod 700 ~/Desktop/Scoreboard.desktop
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