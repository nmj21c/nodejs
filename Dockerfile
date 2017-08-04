FROM ubuntu:16.04
MAINTAINER Jonghyun <nmj21c@gmail.com>

# update and basic software install
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y build-essential checkinstall
RUN apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
RUN apt-get install -y git vim

#Pythone : 2.7.13
WORKDIR /tmp
RUN wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
RUN tar -xvf Python-2.7.13.tgz
WORKDIR /tmp/Python-2.7.13
RUN ./configure
RUN make
RUN checkinstall -y

#nodejs : 6.11.1 LTS
WORKDIR /tmp
RUN wget https://nodejs.org/dist/v6.11.1/node-v6.11.1.tar.gz
RUN tar -xzf node-v6.11.1.tar.gz
WORKDIR /tmp/node-v6.11.1
RUN ./configure
RUN make
RUN checkinstall -y

#remove temp file and directory
WORKDIR /tmp
RUN rm -rf ./*

#move to home directory
WORKDIR ~