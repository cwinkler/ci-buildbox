FROM ubuntu:xenial

RUN echo 'deb http://archive.ubuntu.com/ubuntu/ xenial multiverse' >> /etc/apt/sources.list
RUN echo 'deb-src http://archive.ubuntu.com/ubuntu/ xenial multiverse' >> /etc/apt/sources.list

RUN apt-get update && apt-get -y install virtualbox unzip

ENV PATH /opt/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ADD https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip /tmp/packer.zip
RUN unzip -d /opt/local/bin /tmp/packer.zip && rm /tmp/packer.zip