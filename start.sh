#!/bin/sh

crond

ddns -c /etc/ddns/config.json >> /var/log/ddns.log && tail -f /var/log/ddns.log || cat /var/log/ddns.log
