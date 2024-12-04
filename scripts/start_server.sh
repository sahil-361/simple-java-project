#!/bin/bash

echo "Installing dependencies..."
sudo yum update -y
sudo yum install wget -y

sudo amazon-linux-extras enable corretto8
sudo yum install java-1.8.0-amazon-corretto -y
sudo yum install maven

# Install Gradle manually
echo "Installing Gradle..."
GRADLE_VERSION=7.6
wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-${GRADLE_VERSION}-bin.zip
sudo ln -s /opt/gradle/gradle-${GRADLE_VERSION}/bin/gradle /usr/bin/gradle

# Verify installations
echo "Java version:"
java -version
echo "Gradle version:"
gradle -v

echo "Starting Java application..."
sudo systemctl start simple-java-project
sudo systemctl enable simple-java-project