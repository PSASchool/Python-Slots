# Python-Slots
A GUI slot machine written in Python utilizing its Tkinter GUI package.

## Installation
Run the following commands in a bash terminal, preferably in the user's home directory.
```bash
git clone https://github.com/PSASchool/Python-Slots.git
cd Python-Slots
. slotmachine/bin/activate
sudo apt-get install python3-tk
cd slotmachine/Python-Slots
export SM_TEAM_NAME="{teamname}"
export SM_TEAM_ID="{teamid}"
export SM_UUID="{uuid}"
python3 SlotMachine.py
```

### Note
In order to get the uuid of the team, it must be created on the scoreboard. The easiest way to get it is to open the scoreboard on the virtual machine and copy and paste the uuid.

## Game Modes
There are several game modes built into the game in the form of the
`SM_MODE` environment variable. In order to set these codes, run
```bash
export SM_MODE=mode
```
These commands can be run by ssh anywhere on the host machine.

The modes are listed below:
### Normal
```bash
export SM_MODE=normal
```
The game will run normally. Used to disable other gamemodes.
### Low Starting Deposit
```bash
export SM_MODE=low-starting-deposit
```
Low starting deposit will start the player off with 1 coin instead of 50.

### Disabled
```bash
export SM_MODE=disabled
```
The game will be disabled, and will not run.