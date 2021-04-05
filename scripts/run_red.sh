#!/bin/sh

lang="lang country"
for LANG in $lang; do
    ./src/reduce.py --input_paths outputs/geoTwitter*.${LANG} --output_path="reduced.${LANG}" &
done
