#!/bin/bash

chmod +x build-jenkins-dock.sh
./build-jenkins-dock.sh

docker compose up -d