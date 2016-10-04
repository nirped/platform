FROM nirped/hadoop-base

MAINTAINER Gezim Sejdiu <g.sejdiu@gmail.com>

RUN wget http://apache.spd.co.il/hbase/1.1.6/hbase-1.1.6-bin.tar.gz && \
    tar -xzvf hbase-1.1.6-bin.tar.gz && \
    mv hbase-1.1.6 /usr/local/hbase && \
    rm hbase-1.1.6-bin.tar.gz

ENV HBASE_HOME=/usr/local/hbase
ENV PATH=$PATH:/usr/local/hbase/bin

COPY config/* /tmp/

RUN mv /tmp/hbase-env.sh $HBASE_HOME/conf/hbase-env.sh && \
    mv /tmp/hbase-site.xml $HBASE_HOME/conf/hbase-site.xml 
