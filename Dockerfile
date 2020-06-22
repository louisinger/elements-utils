FROM debian:buster@sha256:d986a531d62903b66e731d475988f5b2ba3a4a90078078cb0f29f9685ee36466

RUN apt-get update && apt-get -y install git wget build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler imagemagick librsvg2-bin libqrencode-dev autoconf openssl libssl-dev libevent-dev libminiupnpc-dev jq  haskell-platform xz-utils autotools-dev automake g++ gpp pkg-config libdb++-dev libboost-all-dev libncurses-dev make

COPY install.sh /install.sh

RUN chmod +x /install.sh && /install.sh && rm /install.sh

