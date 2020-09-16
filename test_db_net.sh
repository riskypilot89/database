#!/bin/bash

n=1000000
#n=5000000

dir="/Users/dimasik/Documents/compclass"

commands="\
commands0.txt \
commands1.txt \
commands2.txt \
commands3.txt \
commands4.txt \
commands5.txt \
"


for cmd in ${commands}
  do \
    data_file="${dir}/${data}"
    cmd_file="${dir}/${cmd}"
    echo "Data=${data_file} Commands=${cmd_file}"
    time=$(date +%s)
    cat ${cmd_file} | ./client | grep '^ *Student' | wc
    echo "Execution time: " $(($(date +%s)-$time))
  done

./client < "${dir}/finish_commands.txt"
