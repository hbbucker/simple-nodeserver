#!/bin/sh

haproxy -dr -f /usr/local/etc/haproxy/haproxy.cfg
rsyslogd -n