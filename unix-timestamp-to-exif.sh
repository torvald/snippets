#!/bin/bash

for file in $(ls | grep jpg$); do
    unix=$(echo $file | cut -d'.' -f1)
    newdate=$(date "+%Y:%m:%d %H:%M:%S" -d @$unix)
    exiftool -AllDates="$newdate" -overwrite_original $file
done
