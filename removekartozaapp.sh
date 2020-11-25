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

read -r -p "Are you sure you want to remove this stack? [Yy - Yes] [Any key - No] " response
echo    # (optional) move to a new line
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
        echo "Removing the stack..."
        docker stack rm $1

        echo "Removing node from swarm..."
        docker swarm leave --force

        echo "Done."

    else
        exit 1
fi
# That's all
