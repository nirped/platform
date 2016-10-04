FROM nirped/flink-base

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#RUN chmod +x /usr/local/flink/bin/jobmanager.sh
ENV FLINK_MASTER_LOG /usr/local/flink/log

EXPOSE 6123 22 8080

CMD ["/usr/bin/supervisord"]
