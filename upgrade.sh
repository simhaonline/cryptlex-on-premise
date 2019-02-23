#!/bin/bash

echo "### stopping the Cryptlex services ..."
docker-compose stop

echo "### getting the latest changes ..."
git pull

echo "### getting the latest docker images ..."
docker-compose pull

echo "### starting the Cryptlex services ..."
docker-compose up -d