# stress script for Raspberry Pi (v0.1)
1. require stress package on Raspbian "sudo apt-get install stress".
2. run the "pi_stress.sh" at first, then run the "pi_health_data.sh".
3. designed for Pi 2B, can be easily tuned for B or B+; read manual like "man stress", and modify the numbers in "pi_stress.sh" as you need. 
4. DO NOT set limit process numbers in watchdog, otherwise it could force your pi to reboot.
5. feel free to setup watchdog to reboot when the cpu temperature goes super high.
6. in the logfile.txt (whatever the file name is, it's in the same directory of this script), read it as time, cpu temperature, instant cpu load percentage, and load average index in 5 minutes. 
