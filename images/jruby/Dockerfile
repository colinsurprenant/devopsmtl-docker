# Ubuntu 12.04
# https://journal.paul.querna.org/articles/2013/10/15/docker-ubuntu-on-rackspace/
FROM racker/precise-with-updates:latest

MAINTAINER Colin Surprenant <colin.surprenant@gmail.com>

# get rid of "debconf: unable to initialize frontend:"
ENV DEBIAN_FRONTEND noninteractive

# install all packages
RUN apt-get -y install git-core wget curl build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev libgdbm-dev libffi-dev libxml2-dev libxslt1-dev libncurses5-dev libfuse2

# workaround for mknod error with fuse (required but not used by openjdk) - see https://github.com/dotcloud/docker/issues/514
RUN (cd /tmp; apt-get download fuse; dpkg-deb -x fuse_* .; dpkg-deb -e fuse_*; rm fuse_*.deb; echo -en '#!/bin/bash\nexit 0\n' > DEBIAN/postinst; dpkg-deb -b . /fuse.deb; dpkg -i /fuse.deb)

# install java, ant
RUN apt-get install -y openjdk-7-jdk ant
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# install rbenv
RUN git clone https://github.com/sstephenson/rbenv /usr/local/rbenv; mkdir -p /usr/local/rbenv/plugins
ENV RBENV_ROOT /usr/local/rbenv
ENV PATH $RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH

# install ruby-build
RUN git clone https://github.com/sstephenson/ruby-build /usr/local/rbenv/plugins/ruby-build

# install jruby & bundler
RUN rbenv install jruby-1.7.9; rbenv global jruby-1.7.9; gem install bundler --no-ri --no-rdoc; rbenv rehash
