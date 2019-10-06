#!/bin/bash
xhost +
sudo docker run --runtime=nvidia -p 0.0.0.0:6006:6006 -it --rm -v ~/dimiDockerV2/root:/root/work/shared -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/root/.Xauthority --net=host dimienv_latest_tensorflow /bin/bash
