#!/bin/sh
unzip websocket.zip && cd libwebsockets-master && mkdir build && cd build && cmake .. && make install && ldconfig && cd / && unzip mosquitto.zip && cd mosquitto-cluster-master && rm -rf config.mk && rm -rf mosquitto.conf && cp ../config.mk . && cp ../mosquitto.conf . && make &&make install &&ln -s /usr/local/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&
cp /etc/mosquitto/mosquitto.conf.example /etc/mosquitto/mosquitto.conf && ldconfig &&useradd mosquitto &&echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && /etc/init.d/ssh restart &&mosquitto -c mosquitto.conf
