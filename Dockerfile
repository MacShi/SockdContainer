FROM centos:centos7
MAINTAINER you@na

RUN mkdir -p /root/tools
#WORKDIR /root/tools
#RUN yum -y install wget && wget http://www.inet.no/dante/files/dante-1.4.2.tar.gz && tar -zxvf dante-1.4.2.tar.gz && cd dante-1.4.2/
RUN yum -y install gcc automake autoconf libtool make
ADD ./dante-1.4.2.tar.gz /root/tools/
WORKDIR /root/tools/dante-1.4.2
RUN ./configure && make && make install
RUN rm -rf /etc/sockd.conf
ADD ./sockd.conf /etc/

CMD ["/usr/local/sbin/sockd"]
