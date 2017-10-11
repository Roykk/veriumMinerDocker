################
#GET A BASEIMAGE
################s
FROM ubuntu
#Install needed libs
RUN apt-get update && apt-get upgrade -y 
RUN apt-get --no-install-recommends install -y \
libcurl4-openssl-dev \
libjansson-dev \
git \
autoconf \
libssl-dev \
automake \
ca-certificates \
pkg-config \
libgmp-dev \
zlib1g-dev \
g++ 

#Clone veriuminerRepo
RUN git clone https://github.com/effectsToCause/veriumMiner

#BUILD IT!
RUN cd veriumMiner  && ./build.sh
ENTRYPOINT  ["/veriumMiner/cpuminer"] 

