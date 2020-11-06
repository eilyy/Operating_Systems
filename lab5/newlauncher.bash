#!/bin/bash

K=$1

N=$2

for (( i=0; i < K; i++ ))
do
	sh newmem.bash $N&
done
