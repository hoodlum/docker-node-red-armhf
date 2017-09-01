# run from offical node-red (pi-version, based on hypriot/node:6)
FROM nodered/node-red-docker:0.17.5-rpi

MAINTAINER Soeren Stelzer

ENV VERSION 0.17.5

#from base image
#ENV FLOWS=flows.json

#from base image
USER node-red

#from base image
WORKDIR /usr/src/node-red

#Install additianl plugins (called nodes)
run npm install node-red-contrib-luxtronik2 \
                node-red-contrib-azureiothubnode \
                node-red-contrib-knxjs \
                node-red-contrib-influxdb

#from base image
#EXPOSE 1880

#from base image
#CMD ["npm", "start", "--", "--userDir", "/data"]
