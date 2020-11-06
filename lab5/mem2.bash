#!/bin/bash

arr=()
template=(0 0 0 0 0 0 0 0 0 0)
counter=0

echo "" > report2.log

while true
do
        arr+=(${template[@]})
        let "counter++"

        if [[ $counter == 10000 ]]
        then
                counter=0
                echo "${#arr[@]}" >> report2.log
        fi
done
