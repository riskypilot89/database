#!/bin/bash

dir="/Users/dimasik/Documents/compclass"

./client < "${dir}/init_commands.txt"

for ((i=0;i<6;i++))
  do \
    echo "client " $i
    ./client < "${dir}/client_commands.txt" > /Users/dimasik/Documents/database/res$i &
  done
wait


