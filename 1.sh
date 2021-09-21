#!/bin/bash

for i in $(cat 1); do
ID=$(echo $i|awk -F'-' '{print $1}')
TITLE=$(echo $i|awk -F'-' '{print $2}')
CHAODAI=$(echo $i|awk -F'-' '{print $3}')
AUTHOR=$(echo $i|awk -F'-' '{print $4}')


KR6a0022    寂志果經-東晉-竺曇無蘭

KR6v0098-梁朝傅大士頌金剛經-未知-達照

#for j in KR1h0004/*.txt; do
for j in $ID/*.txt; do
echo "perl -C "$j" $ID $TITLE $CHAODAI $AUTHOR"
#perl /root/y.pl "$j" $ID $TITLE "$CHAODAI" $AUTHOR
done

done
