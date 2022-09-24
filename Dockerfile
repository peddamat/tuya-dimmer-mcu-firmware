FROM phusion/baseimage:master

RUN apt-get update && apt-get install -y sudo iproute2 iputils-ping  sdcc git make

RUN echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections

RUN git clone https://github.com/dkaukov/tuya-dimmer-mcu-firmware.git

RUN cd /tuya-dimmer-mcu-firmware && make
