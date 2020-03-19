FROM python:alpine

RUN pip install ddns
RUN echo "*/5 * * * * ddns -c /etc/ddns/config.json >> /var/log/ddns.log" >> /var/spool/cron/crontabs/root

ADD ./config.json /etc/ddns/config.json
ADD ./start.sh /start.sh

CMD ["sh", "/start.sh"]