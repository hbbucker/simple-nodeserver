#!/bin/sh
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
rsyslogd -n
