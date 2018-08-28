FROM ubuntu:18.04

RUN apt update && apt-get install -y build-essential python3 python3-pip 
#&& pip3 install wheel
#RUN pip3 install pip --upgrade