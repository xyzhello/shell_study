#!/bin/bash
mkdir "sortedimg"
for i in $(ls *.jpg)
do 
    tmpdir=${i#*IMG_}
    dir=${tmpdir%%_*}
    dir_year=${dir:0:4}
    dir_mon=${dir:4:2}
    dir_day=${dir:6:2}
    if [ -d "sortedimg/$dir_year/$dir_mon/$dir_day" ]
    then
        cp $i sortedimg/$dir_year/$dir_mon/$dir_day
    else
        #mkdir "sortedimg/$dir_
        if [ -d "sortedimg/$dir_year/$dir_mon" ]
	then
	    mkdir "sortedimg/$dir_year/$dir_mon/$dir_day"
	    cp $i sortedimg/$dir_year/$dir_mon/$dir_day
        else
	    
            #mkdir "sortedimg/$dir_year/$dir_mon"
	    if [ -d "sortedimg/$dir_year" ]
	    then 
	        mkdir "sortedimg/$dir_year/$dir_mon"
	        mkdir "sortedimg/$dir_year/$dir_mon/$dir_day"
                cp $i sortedimg/$dir_year/$dir_mon/$dir_day
    	    else
		mkdir "sortedimg/$dir_year"
		mkdir "sortedimg/$dir_year/$dir_mon"
	        mkdir "sortedimg/$dir_year/$dir_mon/$dir_day"
                cp $i sortedimg/$dir_year/$dir_mon/$dir_day
	    fi
	fi
    fi
done
