
FROM ubuntu:16.04

MAINTAINER Paulo Prado <pvsprado@gmail.com>

RUN apt-get update
RUN apt-get install -y -q build-essential
RUN apt-get install -y -q cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y -q python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
RUN git clone https://github.com/opencv/opencv
RUN git clone https://github.com/opencv/opencv_contrib
ADD build_opencv_contrib.sh /build_opencv_contrib.sh
RUN /bin/sh /build_opencv_contrib.sh
RUN rm -rf /build_opencv_contrib.sh
