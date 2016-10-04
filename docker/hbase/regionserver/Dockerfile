FROM nirped/hbase-base

EXPOSE 16010

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
