FROM ubuntu:18.04

RUN apt update
RUN apt install -y vim
RUN apt install -y x11-apps
RUN apt install -y python
RUN apt install -y python-pip
RUN apt install -y python-qt4
RUN apt install -y bluez
RUN apt install -y libbluetooth-dev

RUN pip install configparser
RUN pip install enum34
RUN pip install pybluez==0.22
RUN pip install pyqtgraph

RUN apt install -y okteta


CMD bash