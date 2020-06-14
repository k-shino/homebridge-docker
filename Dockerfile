FROM oznu/homebridge:latest

RUN npm install -g homebridge-nature-remo-local -y
RUN npm install -g homebridge-nature-remo -y
RUN npm install homebridge-nature-remo-lights -g
RUN npm install -g homebridge-nature-remo-cloud-aircon@0.0.2
RUN npm install -g homebridge-tplink-smarthome
RUN npm install -g homebridge-meross

