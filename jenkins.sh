#!/bin/bash
#
## installation instruction for Jenkins
# VPC- private
# Make kubernets cluster in private
# install kubeaudit,calico
# create server for sonarqube, nexusserver t4.medium -20GB HDD
# Create jenkins-server t4.large >8GB RAM ,30GB HDD
#
#
# Install SonarQube- using docker in sonarqube server
sudo apt update
# install docker
# to make other user able to execute docker commands 
# sudo chmod 666 /var/run/docker.sock
# run sonarqube in docker
# https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-25.4.0.105899.zip
# https://docs.sonarsource.com/sonarqube-community-build/setup-and-upgrade/installing-sonarqube-from-zip-file/
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
# default username is admin , password is admin |change it 
# Install Nexus repo on server
sudo apt update
# install docker
# to make other user able to execute docker commands
# unix -https://sonatype-download.global.ssl.fastly.net/repository/downloads-prod-group/3/nexus-3.79.1-04-linux-x86_64.tar.gz
# tar xvzf nexus-3.79.1-04-linux-x86_64.tar.gz
# ./nexus-3.78.0-14
#./sonatype-work
#https://help.sonatype.com/en/run-as-a-service.html
# sudo chmod 666 /var/run/docker.sock
docker run -d --name nexus -p 8081:8081 sonatype/nexus3
# login user name is admin, passsword is inside container /nexus-data/admin.password
#docker exec -it containerid /bin/bash
#cd sonatype-work |cd nexus3 |->admin.password |copy till bash-4.4, absh4.4 us default user in nexus container
#cnahe password,
#
#install Jenkins
sudo apt update
# pre-requisite need JAVA
#install open jdk 17 or above
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
# rhel rpm package https://download.oracle.com/java/24/latest/jdk-24_linux-x64_bin.rpm
# sudo dnf install jdk-24_linux-x64_bin.rpm
# install docker also
# jenkins is running on port  8080
# prompt for password
# Initial admin and password in /var/lib/jenkins/secrets/initialAdminPassword
#auto install plugins, 
#setup username and password, provide jenkins url
# create git repo on github
#
# ########
# ci cd pipeline
# jenkins plugin-search jdk -eclipse temurin installer, maven -maven, integration,config file provider, pipline maven integration,sonar-sonarqube scanner(differnt from sonar qube server where report is published), docker , docker pipline, docker-build-step, kubernets, kubernetscli,kube credential
#
# configure plugins in jenkins
# manage jenins> tools configure> give name and root auto downlaod for plugins each
#
# create pipline-> name-> job pipeline
# on job>configure>discard old build | 2(no more thsn two build should be kept(max builds to keep)) see groovy script to configure
#
