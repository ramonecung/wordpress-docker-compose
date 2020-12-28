#!/bin/bash

set -e

docker-compose down
docker-compose up -d --build
docker-compose run --rm healthcheck
docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config
