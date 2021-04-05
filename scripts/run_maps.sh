#!/bin/sh

for files in /data-fast/twitter\ 2020/geoTwitter*.zip; do
    nohup ./src/map.py --input_path="$files" &
    echo $files
done
