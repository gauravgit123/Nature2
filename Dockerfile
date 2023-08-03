# Pull the docker hub on ubuntu image 
FROM ubuntu:latest

# Create the Docker file Creater name
MAINTAINER "gauravkhandate@gmail.com"

# Update all aplication
RUN apt-get update && apt-get -y upgrade && apt-get -y install vim

# User create and swich user 
RUN useradd -m -d /home/Nature2 -s /bin/bash Nature2
USER Nature2

# Copy file 
COPY sample.java /home/Nature2
