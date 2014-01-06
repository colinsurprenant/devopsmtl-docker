FROM devopsmtl/jruby:1.7.9

MAINTAINER Colin Surprenant <colin.surprenant@gmail.com>

WORKDIR /work
ADD lib /work/lib
ADD Gemfile /work/Gemfile
RUN bundle install

ENTRYPOINT ["bundle", "exec"]
