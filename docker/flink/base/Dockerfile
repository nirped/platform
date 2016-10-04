FROM nirped/hadoop-base

ENV FLINK_VERSION=1.1.2
ENV HADOOP_VERSION=27
ENV SCALA_VERSION=2.11

#Enable poc-init-daemon
ENV ENABLE_INIT_DAEMON true
ENV INIT_DAEMON_BASE_URI http://identifier/init-daemon
ENV INIT_DAEMON_STEP flink_master_init

##Flink Installation
###Download:

RUN   wget http://mirror.switch.ch/mirror/apache/dist/flink/flink-${FLINK_VERSION}/flink-${FLINK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala_${SCALA_VERSION}.tgz \
      && tar -xvzf flink-${FLINK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala_${SCALA_VERSION}.tgz \
      && rm flink-${FLINK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala_${SCALA_VERSION}.tgz \
      && mv flink-${FLINK_VERSION} /usr/local/flink

ENV FLINK_HOME /usr/local/flink
ENV PATH $PATH:$FLINK_HOME/bin

ADD flink-conf.yaml /usr/local/flink/conf/
ADD flink-daemon.sh /usr/local/flink/bin
ADD filebeat.yml /filebeat.yml
