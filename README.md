
## How to setup docker
```
sudo apt-get install docker.io
sudo groupadd docker
sudo usermod -aG docker $USER
```
restart computer (or service) after this point

## How to build 
```
git clone https://github.com/amiravni/MyFirstDocker.git
cd MyFirstDocker
chmod +x build_docker.sh
./build_docker.sh
```

## How to run and make the display working on the host machine (tested on ubuntu 18.04)
```
chmod +x run_docker.sh
./run_docker.sh
```
Modified version of amir avni docker. 
# dimiDocker
