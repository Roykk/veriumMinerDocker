# veriumMinerDocker
Setting up a docker image which mines verium   
Currently not working on OSX. Seems to die cause of memory. Tried adding memory-swap, but still ==>  Exit(137) , suggestions are more than welcome!

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
