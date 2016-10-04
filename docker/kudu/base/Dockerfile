FROM ubuntu:14.04

MAINTAINER Gezim Sejdiu <g.sejdiu@gmail.com>

ENV FILEBEAT_VERSION=1.3.1 \
    FILEBEAT_SHA1=693c04e2251498e73436cfc2b36a3a0aec920a2d

RUN apt-get update && apt-get install -y wget 

RUN set -x && \
  wget https://download.elastic.co/beats/filebeat/filebeat-${FILEBEAT_VERSION}-x86_64.tar.gz -O /opt/filebeat.tar.gz && \
  cd /opt && \
  echo "${FILEBEAT_SHA1}  filebeat.tar.gz" | sha1sum -c - && \
  tar xzvf filebeat.tar.gz && \
  cd filebeat-* && \
  cp filebeat /bin && \
  cd /opt && \
  rm -rf filebeat*
  
#add passless key to ssh
RUN ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
RUN cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/*

RUN wget 'https://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/cloudera.list' -O /etc/apt/sources.list.d/cloudera.list

RUN apt-get update && apt-get install -y supervisor

