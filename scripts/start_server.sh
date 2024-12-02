#!/bin/bash

echo "Installing dependencies..."
sudo yum update
sudo amazon-linux-extras enable java-openjdk11
sudo yum install -y java-11-openjdk
sudo yum install -y maven

echo "Starting Java application..."
sudo systemctl start simple-java-project
sudo systmectl enable simple-java-project