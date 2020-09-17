#!/bin/bash

cd contact/case1
gcc main.c -lm -mcmodel=medium -O2 -o run.x
./run.x&

cd ../case2
gcc main.c -lm -mcmodel=medium -O2 -o run.x
./run.x&

cd ../../leprosy
gcc main.c -lm -mcmodel=medium -O2 -o run.x
./run.x&
