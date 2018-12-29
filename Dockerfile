FROM egaraev/basecentos:latest
COPY neuralprediction.py config.py start.sh /usr/local/bin/
WORKDIR /usr/local/bin
RUN chmod +x start.sh
RUN touch /var/log/work.log
ENTRYPOINT ["/usr/local/bin/start.sh"]