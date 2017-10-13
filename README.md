# veriumMinerDocker
Setting up a docker image which mines verium   
Works on OSX, Windows, not tested on Ubuntu or other unix.

### Preconditions
Install docker!  
https://www.docker.com/

TODO:
 - add a quick how to start docker
 - add how to install homebrew
 - add some of my best docker alias
 
## How to run this:

```docker build . -t miner```
```docker run -d --name myMiner miner -n 1048576 -o [poolURL] -u [username] -p password```

Example:

```docker run -d --name myMiner miner -n 1048576 -o stratum+tcp://pool-eu.bloxstor.com:3002 -u VTPYitLGPyLhrmNUb4fC1DZ3o3bjfjQgYV.Roy-worker-111 -p [password]```


### Troubleshooting
*My container keeps crashing, what do i do?*
On OSX the default memory limit is max 2GiB. Its needs to be increased.
Click the whale in top menubar-->preference--> increase memory to 5GiB, and CPU to as many as you want to use.
