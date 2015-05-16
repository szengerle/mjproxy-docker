#!/bin/bash
cd /opt/mjproxy_1.7
sed s/host_port=PORT/host_port=$1/g server.tmpl | sed s/domain_names=DNS/domain_names=$2/g > config/server.cfg
ip a
java -classpath /opt/mjproxy_1.7/lib/sip.jar:/opt/mjproxy_1.7/lib/server.jar local.server.Proxy -f /opt/mjproxy_1.7/config/server.cfg $3 $4 $5 $6 $7 $8 $9
