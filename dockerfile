### based on tensorflow docker
FROM tensorflow/tensorflow:latest-gpu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN apt-get update
RUN add-apt-repository ppa:webupd8team/atom
RUN apt-get update
RUN apt-get install -y atom

RUN apt-get update
RUN apt install -y software-properties-common apt-transport-https wget
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
RUN apt update
RUN apt install -y code

RUN apt-get install -y openjdk-8-jre-headless
RUN apt-get install -y python3-pip \
gedit \
python3-tk \
python3-yaml \
python3-dev \
python3-numpy

RUN apt-get install -y python-tk
RUN apt-get install -y wget
RUN apt-get install -y g++-4.8

RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN pip2 install matplotlib scipy aenum pypng image imageio progressbar

RUN pip2 install pypng

WORKDIR /usr/lib/x86_64-linux-gnu/
RUN mkdir src

## copying data to docker and add settings 
RUN mkdir /root/work/
RUN mkdir /root/work/shared/
##WORKDIR /root/
##COPY root .
WORKDIR /

RUN echo "alias dimicode='code --user-data-dir /usr/'" >> /root/.bashrc


