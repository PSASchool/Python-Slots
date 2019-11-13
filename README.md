# Python-Slots
A GUI slot machine written in Python utilizing its Tkinter GUI package.

## Installation
To get started, create a team on the scoreboard. Then run the following commands:
```bash
sudo nano /etc/environment
```
Add the following lines, substituting text in brackets for the value it represents:
```
SM_TEAM_NAME="{teamname}"
SM_TEAM_ID="{teamid}"
SM_UUID="{uuid}"
```
Press `^S` then `^X` to save the file and exit. Restart the machine.

When the machine is back up, run the following commands in terminal.
```bash
sudo apt-get install git
cd ~
git clone https://github.com/PSASchool/Python-Slots.git
cd Python-Slots
. slotmachine/bin/activate
sudo apt-get install python3-tk
cd slotmachine/Python-Slots
python3 SlotMachine.py
```

### Note
In order to get the uuid of the team, it must be created on the scoreboard. The easiest way to get it is to open the scoreboard on the virtual machine and copy and paste the uuid.

## Testing Environment Variable Setup
It's a good idea to test and make sure that the setup has worked correctly. In order to do this, run the following commands in the terminal. Each command should output the value you entered earlier in setup.
```bash
printenv SM_TEAM_NAME
printenv SM_TEAM_ID
printenv SM_UUID
```
