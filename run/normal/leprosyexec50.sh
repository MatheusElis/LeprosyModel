#!/bin/bash

cd Treatment050

cd Tzero
cd Vaccine0
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine050
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine099
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd ..

cd T3months
cd Vaccine0
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine050
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine099
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd ..

cd T6months
cd Vaccine0
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine050
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine099
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd ..


cd T1Year
cd Vaccine0
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine050
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine099
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd ..

cd T2Years
cd Vaccine0
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine050
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine099
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd ..

cd T3Years
cd Vaccine0
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine050
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd Vaccine099
gcc main.c -lm -O2 -mcmodel=medium -o run.x
./run.x &
cd ..
cd ..
