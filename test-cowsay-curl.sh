#!/bin/bash
RESPONSE_CODE=$(curl -i http://34.223.2.2:4000 | head -1 | awk '{print $2}')
if [ $RESPONSE_CODE -eq 200 ]
then
    echo "Success"
    echo "Cowsay up and running"
else
    echo "Fail"
    echo "Cowsay not reacheable"
    exit 1
fi
