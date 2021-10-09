#!/bin/bash

#Password Generator Script

echo "Password Generator Script"
read -p "Enter the password lenght: " PASS_LENGTH
read -p "How many samples you wants: " SAMPLE_LENGTH
for VAR in $(seq 1 $SAMPLE_LENGTH); #how many times password will generate, you can set range
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
    #-base64(Encode) 48 is length 
    #cut is for user input column -c1 is column1
done
