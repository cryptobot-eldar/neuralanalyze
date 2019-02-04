FROM egaraev/basecentos:latest
COPY neuralprediction.py config.py requirements.txt start.sh restart.sh /usr/local/bin/
RUN mkdir /usr/local/bin/data
WORKDIR /usr/local/bin
RUN pip install -r requirements.txt
RUN chmod +x start.sh restart.sh
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
ENTRYPOINT ["/usr/local/bin/start.sh"]
