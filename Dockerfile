FROM ubuntu:18.04

RUN apt-get update && apt-get -qy upgrade
RUN apt install -qy curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -qy nodejs
RUN nodejs -v
RUN npm -v
RUN apt-get install libavahi-compat-libdnssd-dev -qy
RUN npm install -g --unsafe-perm homebridge -y
RUN npm install -g homebridge-nature-remo-local -y
RUN npm install -g homebridge-nature-remo-cloud-aircon@0.0.2
ENTRYPOINT homebridge
