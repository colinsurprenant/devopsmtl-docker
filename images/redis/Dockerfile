FROM centos

MAINTAINER Colin Surprenant <colin.surprenant@gmail.com>

# Epel
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum -y groupinstall "Development Tools"
RUN yum -y update
RUN yum clean all
RUN yum -y install redis

WORKDIR /work
ADD redis.conf /work/redis.conf

EXPOSE 6379
CMD ["/usr/sbin/redis-server", "/work/redis.conf"]