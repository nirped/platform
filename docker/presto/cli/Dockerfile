FROM nirped/presto-base
MAINTAINER lewuathe

RUN wget https://repo1.maven.org/maven2/com/facebook/presto/presto-cli/0.152/presto-cli-0.152-executable.jar && \
    mv presto-cli-0.152-executable.jar /usr/local/bin/presto && \ 
chmod +x /usr/local/bin/presto

ENTRYPOINT ["/usr/local/bin/presto", "--server", "presto-coordinator:8080", "--catalog", "cassandra", "--schema", "default"]


