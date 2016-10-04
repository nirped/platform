FROM nirped/presto-base
MAINTAINER lewuathe

COPY etc /usr/local/presto/etc
EXPOSE 8081

WORKDIR /usr/local/presto

ENTRYPOINT ["dockerize","-template","/usr/local/presto/etc/node.properties.tmpl:/usr/local/presto/etc/node.properties", "./bin/launcher", "run"]
