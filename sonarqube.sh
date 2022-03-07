#!/bin/bash

#Author: Benazea M Z
#Date: Feb 26 2022
 

#            Descriptio: A script to automate the 
#            installation of Sonarqube Server


echo "We are installing sonarqube server on CentOS7"

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y



cd /opt 

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

echo "The Sonarqube Server has been installed and started successfully"
