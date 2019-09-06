#! /bin/bash

if [ -f  ./testingfull.txt ]
then
    rm ./testingfull.txt
fi

for video_number in {0048..0059}
do
    cd data/${video_number}
    last_frame="$(ls *-color* | sort | tail -n 1 | cut -d'-' -f1;)"
    cd ../../
    for i in $(eval echo "{000001..${last_frame}}")
    do
        echo ${video_number}/${i} >> ./testingfull.txt
    done
done
         
