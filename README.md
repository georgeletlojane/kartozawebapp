# Kartoza Web Application
Simple load balanced web engine for Kartoza. This is merely to demonstrate a static load balanced website that is easily scalable. The application is run on a single Google Cloud Platform node with Docker as follows:

- HaProxy as a load balancer
- 2 x nginx web servers

## Quick Start
To deploy the application to your Linux instance, please run the following commands in the root directory of this application folder

`code`docker stack deploy --compose-file docker-compose.yaml ~YourStackname~
