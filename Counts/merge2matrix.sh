#!/bin/bash

#This is a basic script to back up your raw output, add header names to your counts files, 
#and then merge it into a matrix file called counts.matrix.  It also starts a samples_described file for you.

#back up
mkdir raw_backup  && cp *.counts raw_backup

#add columns, adds sample names to samples_described file
for f in *.counts; do h=$(echo ${f%.counts} | sed -E 's/([A-Z0-9]*)-([0-9]*)-.*/\2-\1/g') ; echo "sample_"$h >> samples_described; echo sampleb_$h; sed -i "1 i\gene\tsample_$h" $f; head -n -5 $f > tmp; mv tmp $f; done

#merge the columns into one matrix
awk '{print $1}' $(ls *.counts|head -n 1)> tmp; for f in *.counts; do join tmp $f > tmp2; mv tmp2 tmp; done
sed -e 's/gene//g' -e 's/\ /\t/g' tmp > counts.matrix

