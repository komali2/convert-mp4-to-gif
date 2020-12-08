# convert-mp4-to-gif
Dead simple script to convert all .mp4 files in directory to relatively well proportioned .gif files. 

# webm
To do webm instead change the ffmpeg line to

    ffmpeg -i $FILE -c:v libvpx-vp9 -b:v 0 -crf 41 "${FILE%%.*}.webm"
