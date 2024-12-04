#!/bin/bash

echo "Installing dependencies..."
sudo yum update
sudo yum install java-11-openjdk
sudo yum install maven

echo "Starting Java application..."
sudo systemctl start simple-java-project
sudo systmectl enable simple-java-project