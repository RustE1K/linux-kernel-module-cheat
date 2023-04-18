# https://cirosantilli.com/linux-kernel-module-cheat#docker
FROM ubuntu:20.04
RUN apt-get update && \
    apt-get -y install sudo
COPY setup /
COPY requirements.txt /
RUN /setup -y
CMD bash
