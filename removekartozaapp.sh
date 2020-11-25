#!/bin/bash
# Author: George Letlojane (SG)
# Revised: 25/11/2020

## Usage: ./deploykartoza.sh YOURSTACKNAME

if [ $# -eq 0 ]
  then
        echo "No stack name specified"
        echo "USAGE: ./deploykartoza.sh YOURSTACKNAME"
        exit 1
fi

echo "Removing the stack..."
docker stack rm $1

echo "Removing node from swarm..."
docker swarm leave --force

echo "Done."

# That's all
