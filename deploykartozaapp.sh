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

echo "Initializing the swarm..."
docker swarm init

echo "Deploying the stack..."
docker stack deploy --compose-file docker-compose.yaml $1

read -n 1 -r -s -p $'Deployment complete...Press enter to continue with checks...\n'

msg="Waiting to check if stack has deployed ..."

#Calculate which column to write the countdown
l=${#msg}
l=$(( l+2 ))

clear
echo $msg
for i in {30..01}
do
        tput cup 0 $l
        echo -n "$i"
        sleep 1
done
echo

docker stack ls
docker ps

# That's all
