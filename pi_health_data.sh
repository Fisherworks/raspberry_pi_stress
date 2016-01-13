#!/bin/bash
nowTime=`date +%Y-%m-%d-%H-%M-%S`
cpuTemp=`cat /sys/class/thermal/thermal_zone0/temp | awk -v FS=" " '{print $1/1000""}'`
logFileName=pi_health.$nowTime.txt
echo "cpu temp in log" | tee -a $logFileName
while :
do
  timestamp=`date +[%Y-%m-%d,%H:%M:%S]`
  loadAvg=`cat /proc/loadavg | awk {'print $2'}`
  loadNow=`top -b -n2 | grep "Cpu(s)" | awk '{print $2 + $4}' | sed -n '2p'`
  cpuTemp=`cat /sys/class/thermal/thermal_zone0/temp | awk -v FS=" " '{print $1/1000""}'`
  echo $timestamp "CpuTemp"  $cpuTemp "LoadNowPerc" $loadNow "LoadAvgInd" $loadAvg | tee -a $logFileName
  sleep 2
done
