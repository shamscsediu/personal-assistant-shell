#!/bin/bash
#Downloading files
echo "Downloading files script :"
read -p "Enter the download url: " LINK
if sudo wget -P ./downloaded $LINK ; then
    echo "The file downloaded successfully"
else
    echo "Faileds to download please try again"
fi

