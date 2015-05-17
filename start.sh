#!/bin/bash
docker run \
  -v `pwd`/hosts:/etc/hosts \
  szengerle/mj2 \
  /opt/mjproxy_1.7/start.sh 5060 $1
