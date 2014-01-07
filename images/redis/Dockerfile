# Ubuntu 12.04
# https://journal.paul.querna.org/articles/2013/10/15/docker-ubuntu-on-rackspace/
FROM racker/precise-with-updates:latest

MAINTAINER Colin Surprenant <colin.surprenant@gmail.com>

# get rid of "debconf: unable to initialize frontend:"
ENV DEBIAN_FRONTEND noninteractive

# install all packages
RUN apt-get -y install redis-server

WORKDIR /work
ADD redis.conf /work/redis.conf

EXPOSE 6379
CMD ["/usr/bin/redis-server", "/work/redis.conf"]