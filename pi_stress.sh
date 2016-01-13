#!/bin/bash

while :
do
  echo "Performing new stress testing cycle..."
  stress --cpu 10 --io 10 --vm 5 --vm-bytes 120M --timeout 120s 
  echo "Timeout..."
  sleep 15
done
