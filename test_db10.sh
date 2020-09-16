#!/bin/bash

n=1000000
#n=5000000

dir="/Users/dimasik/Documents/compclass"
data="\
a${n}.txt \
a${n}_sort_g.txt \
a${n}_sort_n.txt \
a${n}_sort_v.txt \
"

commands1="\
commands_1000000_n.txt \
commands_1000000_g.txt \
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


for data in ${data}
  do \
    for cmd1 in ${commands1}
      do \
        for cmd2 in ${commands2}
          do \
            data_file="${dir}/${data}"
            cmd1_file="${dir}/${cmd1}"
            cmd2_file="${dir}/${cmd2}"
            echo "Data=${data_file} Commands=${cmd1_file} + ${cmd2_file}"
            cat ${cmd1_file} ${cmd2_file} | ./a.out ${data_file} | grep '^ *Student' | wc
          done
      done
  done
