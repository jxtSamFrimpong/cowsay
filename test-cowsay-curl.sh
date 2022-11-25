#!/bin/bash
EXTERNAL_IPS="localhost:4000"
RESPONSE_CODE=$(curl -i http://$EXTERNAL_IPS | head -1 | awk '{print $2}')
if [ $RESPONSE_CODE -eq 200 ]
then
    echo "Success"
    echo "Cowsay up and running"
else
    echo "Fail"
    echo "Cowsay not reacheable"
    exit 1
fi