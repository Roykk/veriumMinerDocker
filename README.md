# Verium Miner with Docker
Setting up a docker image which mines verium   
Works on OSX, Windows, Linux.

# Getting started mining verium

1. Download and install [Docker](https://docs.docker.com/engine/installation/#supported-platforms)
1. For MacOS install [Homebrew](https://brew.sh/)
1. Clone this repo `git clone git@github.com:Roykk/veriumMinerDocker.git`
1. Enter folder `\git\veriumMinerDocker`
1. Build the docker image with `docker build . -t miner`
1. Before we can run the docker image we have to setup a worker at [Bloxstor](https://pools.bloxstor.com/#/getting-started)
 - Select `Getting Started` from the menu to the left
 - Select `Verium` as coin and press `Next`
 - Fill in the `Coin Info`:
    - *Your Verium Address*: Your Verium wallet adresse or use `VTPYitLGPyLhrmNUb4fC1DZ3o3bjfjQgYV`
     - *Your Worker Name*: `sonat-worker-<dittnavn>`
     - *Your Worker Pass*: `1234qwer`
 - Press `Next`
 - Select OS
 - Select `Verium Miner`
 - Select `EU LONDON` as server or the closest located to you
 - Select one of the ports to mine on
 - Press `Finish` and a command is created
 - Use this command when running docker
1. Run the docker image with `docker run -d --name myMiner miner -n 1048576 -o [poolURL] -u [username] -p password`.

  Here is an example:
  ```docker run -d --name myMiner miner -n 1048576 -o stratum+tcp://pool-eu.bloxstor.com:3002 -u VTPYitLGPyLhrmNUb4fC1DZ3o3bjfjQgYV.sonat-worker-01 -p 1234qwer```
1. To see what is going on you can use `docker logs myMiner`

### Troubleshooting
*My container keeps crashing, what do i do?*
On OSX the default memory limit is max 2GiB. Its needs to be increased.
Click the whale in top menubar-->preference--> increase memory to 5GiB, and CPU to as many as you want to use.

