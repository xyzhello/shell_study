#!/bin/bash
if [ ! -d "sortedimg" ]
then
    mkdir "sortedimg"
fi
for i in $(ls *.jpg)
do 
    tmpdir=${i#*IMG_}
    dir=${tmpdir%%_*}
    dir_year=${dir:0:4}
    dir_mon=${dir:4:2}
    dir_day=${dir:6:2}

    if [ ! -d "sortedimg/$dir_year" ]
    then
	mkdir "sortedimg/$dir_year"
    fi

    if [ ! -d "sortedimg/$dir_year/$dir_mon" ]
    then
	mkdir "sortedimg/$dir_year/$dir_mon"
    fi

     if [ ! -d "sortedimg/$dir_year/$dir_mon/$dir_day" ]
    then
	mkdir "sortedimg/$dir_year/$dir_mon/$dir_day"
    fi

    cp $i sortedimg/$dir_year/$dir_mon/$dir_day

  done
