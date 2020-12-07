#!/bin/bash
for FILE in *; do
        if [[ ${FILE##*.} == "mp4" ]];
        then
                echo "$FILE"
                ffmpeg -i $FILE -vf "split[s0][s1];[s0]palettegen[p];[s1][p]pale
tteuse" "${FILE%%.*}.gif"
        fi      
done    
