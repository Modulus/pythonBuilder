FROM ubuntu:18.04

RUN apt-get install -y build-essential python3 python3-pip && pip3 install pip --upgrade && pip3 install wheel