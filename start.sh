#!/bin/sh

ddns -c /etc/ddns/config.json && crond -f
