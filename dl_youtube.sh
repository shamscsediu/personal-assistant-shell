#!/bin/bash
#Downloading Youtube videos
echo "Youtube Video Downloader :"
read -p "Enter the youtube video url: " LINK
if youtube-dl -o "videos/%(title)s" $LINK ; then
    echo "The video has downloaded successfully"
else
    echo "Faileds to download please try again"
fi

