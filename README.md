# Kartoza Web Application
Simple load balanced web engine for Kartoza. This is merely to demonstrate a static load balanced website that is easily scalable. The application is run on a single Google Cloud Platform node with Docker as follows:

- HaProxy as a load balancer
- 2 x nginx web servers

## Quick Start
To deploy the application to your Linux instance, please run the following commands in the root directory of this application folder

1. First, initialise the node as docker manager, run ```docker swarm init```
1. Then run ```docker stack deploy --compose-file docker-compose.yaml YourStackName ``` to create your stack defined in the docker-compose file
2. To check if the stack has been created, run ```docker stack ls```
3. Confirm the corresponding containers are running ```docker ps```

Alternatively, run script in application root dir for an automated deployment 
```console
ubuntu@kartoza-server:~$ ./deploykartozaapp.sh
```

## Cleaning Up
To remove the stack and do a cleanup of the application,

1. Check for the stack you're about to remove, run ```docker stack ls```
2. Then run ```docker stack rm YourStackName ``` to remove your stack 
3. Confirm the changes have taken effect, run ```docker stack ls```

Alternatively, run script in application root dir for an automated clean up 
```console
ubuntu@kartoza-server:~$ ./removekartozaapp.sh
