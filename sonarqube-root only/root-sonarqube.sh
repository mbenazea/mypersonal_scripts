#!/bin/bash

#Author: Benazea M Z
#Date: Feb 26 2022
#modid

#Descriptio: A script to automate the 
#            installation of Sonarqube Server

if 
    [ $USER != root ]
    then
    echo -e "\n You need root access to run this \n"  #\n indicate  an empty line before the sentence
    exit 2


echo "we are installing sonarqube on CentOS7"

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

sleep 2

cd /opt 

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

echo "Sonarqube installed and started successfully"