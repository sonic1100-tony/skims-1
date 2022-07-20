#!/bin/bash

while read line
do   
    echo $(find ./dbtbl/ -name $line -print)
done < src/dest.txt