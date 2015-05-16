FROM fedora
MAINTAINER Sebastian Zengerle <sebastian.zengerle@googlemail.com
RUN yum -y install java-1.8.0-openjdk
RUN yum -y install wget
RUN yum -y install unzip
RUN yum -y install iproute
RUN wget http://www.mjsip.org/download/mjproxy_1.7.zip
RUN unzip mjproxy_1.7.zip
RUN cp mjproxy_1.7 /opt/mjproxy_1.7 -R
ADD files/ /tmp/files
RUN cp /tmp/files/server.tmpl /opt/mjproxy_1.7/server.tmpl
RUN cp /tmp/files/start.sh /opt/mjproxy_1.7/start.sh
