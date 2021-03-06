# Kartoza Web Application
Simple load balanced web engine for Kartoza. This is merely to demonstrate a static load balanced website that is easily scalable. The application is run on a single Google Cloud Platform node with Docker as follows:

- HaProxy as a load balancer
- 2 x nginx web servers

Application can be accessed on https://kartoza.letlojanedigital.co.za
Load Balancer stats can be read on http://kartoza.letlojanedigital.co.za:1991/ha-stats

## Quick Start
To deploy the application to your Linux instance, please run the following commands in the root directory of this application folder

1. First, initialise the node as docker manager, run ```docker swarm init```
1. Then run ```docker stack deploy --compose-file docker-compose.yaml kortazo ``` to create your stack defined in the docker-compose file
2. To check if the stack has been created, run ```docker stack ls```
3. Confirm the corresponding containers are running ```docker ps```

Alternatively, run script in application root dir for an automated deployment 
```console
ubuntu@kartoza-server:~$ chmod u+x deploykartozaapp.sh
```
```console
ubuntu@kartoza-server:~$ ./deploykartozaapp.sh kortazo
```

## Replication
Horizontal scalling can be done by changing the docker compose file replicas property or running the following command:
 ```docker service scale kortazo_SERVICENAME=x ```
 where SERVICENAME is the name of your stack service

## Cleaning Up
To remove the stack and do a cleanup of the application,

1. Check for the stack you're about to remove, run ```docker stack ls```
2. Then run ```docker stack rm kortazo ``` to remove your stack 
3. Confirm the changes have taken effect, run ```docker stack ls```

Alternatively, run script in application root dir for an automated clean up 
```console
ubuntu@kartoza-server:~$ chmod u+x removekartozaapp.sh 
```
```console
ubuntu@kartoza-server:~$ ./removekartozaapp.sh kortazo
```

## Application Architecture
![Kartoza Application Architecture](https://user-images.githubusercontent.com/69802565/100230961-093ea180-2f2f-11eb-8d70-a9d3255d8349.jpg)

