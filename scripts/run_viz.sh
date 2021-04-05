#!/bin/sh
hashtag="_all #코로나바이러스 #コロナウイルス #冠状病毒 #covid2019 #covid-2019 #covid19 #covid-19 #coronavirus #corona #virus #flu #sick #cough #sneeze #hospital #nurse #doctor" 
lang="lang country"

for LANG in $lang; do
    for HASHTAG in $hashtag; do
        ./src/visualize.py --input_path="reduced.${LANG}" --key=$HASHTAG | head > viz/$LANG/$HASHTAG
    done
done
