#! /usr/bin/env bash

# run the view.py script in parallel to preview videos

FS=$'\n'

# Threads=(0.1 0.3 0.5 0.7 0.9)

# for i in $(seq -f "%f" 0.1 0.2 0.9)
# do
# 	echo $i
# done


seq -f %02g 0.1 0.1 0.9 | parallel -j 9 -I% --max-args 1 "/Users/jakejing/.config/vifm/scripts/view.py -p % ${1} /tmp/out%.jpg"

montage /tmp/out*.jpg -tile 3x -geometry +3+3 /tmp/combined.jpg

kitty +kitten icat --transfer-mode=file /tmp/combined.jpg

rm /tmp/out*.jpg



