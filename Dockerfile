FROM egaraev/basecentos:latest
COPY neuralprediction.py config.py requirements.txt start.sh /usr/local/bin/
RUN mkdir /usr/local/bin/data
WORKDIR /usr/local/bin
RUN pip install -r requirements.txt
RUN chmod +x start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]
