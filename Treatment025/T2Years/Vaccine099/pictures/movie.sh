#!/bin/bash
declare -i z0
declare -i z1
declare -i z2
declare -i z3
declare -i z4

for i in {0..500}
do
    convert picture_$i.xpm  pop$i.bmp
done

for i in {0..500}
do
    let "z0 = 5*$i"
    let "z1 = 5*$i+1"
    let "z2 = 5*$i+2"
    let "z3 = 5*$i+3"
    let "z4 = 5*$i+4"

    cp pop$i.bmp population"$z0".bmp
    cp pop$i.bmp population"$z1".bmp
    cp pop$i.bmp population"$z2".bmp
    cp pop$i.bmp population"$z3".bmp
    cp pop$i.bmp population"$z4".bmp

done

ffmpeg2theora --speedlevel 0 population%d.bmp -o leprosy.ogv

rm *.xpm
rm *.bmp
vlc leprosy.ogv &
