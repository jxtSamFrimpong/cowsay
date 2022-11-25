#!/bin/bash

chmod +x build-jenkins-dock.sh
./build-jenkins-dock.sh

sudo docker compose -f docker-compose.yml up -d --remove-orphans --build