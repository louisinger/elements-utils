FROM debian:buster@sha256:d986a531d62903b66e731d475988f5b2ba3a4a90078078cb0f29f9685ee36466

RUN apt-get update && apt-get -y install git

COPY install.sh /install.sh

RUN chmod +x /install.sh && /install.sh && rm /install.sh

