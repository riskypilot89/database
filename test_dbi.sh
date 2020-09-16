#!/bin/bash

dir="/Users/dimasik/Documents/compclass"
data="\
i1000000.txt \
i1000000_sort_g.txt \
i1000000_sort_n.txt \
i1000000_sort_v.txt \
"

commands="\
commands0.txt \
commands1.txt \
commands2.txt \
commands3.txt \
commands4.txt \
commands5.txt \
"


for data in ${data}
  do \
    for cmd in ${commands}
      do \
        data_file="${dir}/${data}"
        cmd_file="${dir}/${cmd}"
        echo "Data=${data_file} Commands=${cmd_file}"
		start=$(date +%s.%N)
		cat ${data_file} ${cmd_file} | ./a.out| grep '^ *Student' | wc
		dur=$(echo "$(date +%s.%N) - $start" | bc)
		printf "Execution time: %.6f seconds\n" $dur
        #cat ${data_file} ${cmd_file} | ./a.out | grep '^ *Student' | wc
		
		
      done
  done

