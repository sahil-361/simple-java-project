#!/bin/bash

echo "Installing dependencies..."
sudo yum update
sudo amazon-linux-extras enable corretto8
sudo yum install java-1.8.0-amazon-corretto -y
sudo yum install maven
sudo yum install gradle -y

echo "Starting Java application..."
sudo systemctl start simple-java-project
sudo systmectl enable simple-java-project