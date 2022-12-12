This is a script to install Jenkins on git bash, in order to prepare the CICD environment

#!/bin/bash 

# Run this as a script 

#Author: prof Elvis N. 

#Company:Etech Consulting 

echo "Welcome to Etech consulting Docker module!!" 

sleep 5 

sudo hostnamectl set-hostname CICD-engine 

sudo apt update -y 

sudo apt install docker.io -y 

sudo usermod -aG docker ubuntu  

  

# Install java as jenkins dependency 

sudo apt install openjdk-11-jdk -y 

# install jenkins in ubuntu: 

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - 

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \ 

    /etc/apt/sources.list.d/jenkins.list' 

sudo apt-get update 

sudo apt-get install jenkins -y 

sudo systemctl start jenkins  

sudo usermod -aG docker jenkins  

echo "jenkins  ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/jenkins  

docker --version 

sudo su - jenkins 