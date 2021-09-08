#!/bin/bash
docker kill $(docker ps -q)
docker network prune -f
docker-compose up -d --build --force-recreate
