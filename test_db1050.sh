#!/bin/bash

#n=1000000
n=5000000

dir="/Users/dimasik/Documents/compclass"

commands1="\
commands_1000000_g.txt \
commands_1000000_n.txt \
commands_1000000_v.txt \
"

commands2="\
commands0.txt \
commands1.txt \
commands2.txt \
commands3.txt \
commands4.txt \
commands5.txt \
"



    for cmd1 in ${commands1}
      do \
        for cmd2 in ${commands2}
          do \
            cmd1_file="${dir}/${cmd1}"
            cmd2_file="${dir}/${cmd2}"
            echo "Commands=${cmd1_file} + ${cmd2_file}"
            time=$(date +%s)
            cat ${cmd1_file} ${cmd2_file} | ./client | grep '^ *Student' | wc
            echo "Execution time: " $(($(date +%s)-$time))
          done
      done
