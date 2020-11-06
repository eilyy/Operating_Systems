#!/bin/bash

arr=()
template=(0 0 0 0 0 0 0 0 0 0)
counter=0

echo "" > report.log

while true
do
        arr+=(${template[@]})
        let "counter++"

        if [[ $counter == 10000 ]]
        then
                counter=0
                echo "${#arr[@]}" >> report.log
		if [[ "${#arr[@]}" == "$1" ]]
		then
			exit 0
		fi
        fi
done
