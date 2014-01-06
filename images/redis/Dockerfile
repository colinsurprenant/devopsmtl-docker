FROM centos

MAINTAINER Colin Surprenant <colin.surprenant@gmail.com>

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y groupinstall "Development Tools"; yum -y update; yum -y install redis; yum clean all

WORKDIR /work
ADD redis.conf /work/redis.conf

EXPOSE 6379
CMD ["/usr/sbin/redis-server", "/work/redis.conf"]