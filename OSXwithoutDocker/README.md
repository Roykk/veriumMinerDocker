## How to use VeriumMiner on OSX (no docker)

This verium miner is using https://github.com/effectsToCause/veriumMiner
This README provides step by step, and OSX troubleshooting :)

#### Preconditions
-  install c compiler 
  -  write in terminal ```g++``` , click yes on the xcode popup
- brew install automake
- brew install openssl
- brew install zlib
- brew install curl
- brew install jansson
- brew install make 

#### Clone and Compile 
1.  ```git clone https://github.com/effectsToCause/veriumMiner.git```
2.  ```cd veriumMiner```
3.  ```./nomacro.pl```  
4.  ```./autoconfig.sh```  
5.  ```./configure```
6.  ```make```  

If this step fails look at *Troubleshooting* below, if not you should now be able to run ```./cpuminer --help```

#### Start mining!
execute: ```./cpuminer -n 1048576 -o [url] -u [username] -p [password]```  

example: ```./cpuminer -n 1048576 -o stratum+tcp://pool-eu.bloxstor.com:3002 -u VTPYitLGPyLhrmNUb4fC1DZ3o3bjfjQgYV.Roy-worker-111 -p password```



## Troubleshooting:
*Sometimes there is issue with openssl not getting linked correctly*  
 - How to fix: 
    - alt1: ```brew unlink openssl && brew link openssl --force ```
    - alt2: ```cd /usr/local/include
               ln -s ../opt/openssl/include/openssl . ```   

*Sometimes there are an issue when compiling the miner code, missing references*  
 - How to fix:
    - vim makefile
    - find the: ```CXXFLAGS = -g -O2```
    - add path to your lib folder, example: ```CXXFLAGS = -g -O2 -L../../../../../usr/lib -lcurl -lssl -lcrypto```   

*Any more problems?? I will be happy to assist!*
