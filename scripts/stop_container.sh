#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)

if [ -n "$containerid" ]; then
  echo "Stopping and removing container(s): $containerid"
  docker rm -f $containerid
else
  echo "No running containers found."
fi
