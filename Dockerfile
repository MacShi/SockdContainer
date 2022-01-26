FROM centos:centos7
MAINTAINER you@na

RUN mkdir -p /root/tools
RUN yum -y install gcc automake autoconf libtool make
ADD ./dante-1.4.2.tar.gz /root/tools/
WORKDIR /root/tools/dante-1.4.2
RUN ./configure && make && make install
RUN rm -rf /etc/sockd.conf
ADD ./sockd.conf /etc/

CMD ["/usr/local/sbin/sockd"]
