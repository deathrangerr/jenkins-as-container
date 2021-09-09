#!/bin/bash
sudo yum update -y && yum upgrade -y
sudo dnf upgrade -y
sudo dnf install docker -y
sudo service docker start && service docker status && docker ps && docker ps -a >> docker.status
podman pull jenkins:2.60.3
nohup docker run --name jenkins -p 8080:8080 -p 50000:50000 -v /root:/var/jenkins jenkins & >> jenkins.log


docker info
