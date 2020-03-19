FROM python:alpine

RUN pip install ddns
RUN echo "*/5 * * * * ddns -c /etc/ddns/config.json >> /dev/stdout" >> /var/spool/cron/crontabs/root

ADD ./config.json /etc/ddns/config.json

CMD ddns -c /etc/ddns/config.json && crond -f
