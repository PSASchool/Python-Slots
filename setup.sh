cd ~/Python-Slots
. slotmachine/bin/activate
mv SlotMachine.desktop ~/Desktop/SlotMachine.desktop
mv wiki.html ~/Desktop/README.html
chmod a+x ~/Desktop/SlotMachine.desktop
chmod 700 ~/Desktop/SlotMachine.desktop
chmod a+x ~/Python-Slots/slotmachine/launcher.sh
chmod 700 ~/Python-Slots/slotmachine/launcher.sh
gsettings set org.gnome.nautilus.preferences executable-text-activation launch
sudo apt-get install python3-tk
cd ~/Python-Slots/slotmachine/Python-Slots