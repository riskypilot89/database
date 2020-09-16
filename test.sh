#!/bin/bash

dir="/Users/dimasik/Documents/compclass"

./client < "${dir}/init_commands.txt"

for ((i=0;i<6;i++))
  do \
    ./client < "${dir}/client_commands.txt" > /Users/dimasik/Documents/database/res$i &
  done
wait

./client < "${dir}/finish_commands.txt"

for ((i=0;i<6;i++))
  do \
    for ((j=6;j<i;j++))
      do \
        diff -q /Users/dimasik/Documents/database/res$i /Users/dimasik/Documents/database/res$j
      done
    grep '^ *Student' /Users/dimasik/Documents/database/res$i | wc
  done
