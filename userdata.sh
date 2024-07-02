#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo docker run -d -p 5000:5000 my-flask-app  
