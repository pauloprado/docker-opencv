docker-opencv-contrib
=============

OpenCV on Docker, setting up the environment of OpenCV using docker.

First install docker on your computer 

http://docs.docker.io/en/latest/installation/ubuntulinux/

and clone the repo, and enter the following command:

sudo docker build -t <user>/docker-opencv-contrib:v1 .

the command above will download opencv and opencv-contrib from the github at the lastest commit and compile it

To run:
sudo docker run -t -i <user>/docker-opencv-contrib:v1 /bin/bash
```
