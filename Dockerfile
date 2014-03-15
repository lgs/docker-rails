# Dockerfile for Rails 4.1 
# Ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-linux]
# Debian jessie (lgsd/docker-ruby-2.1.1p76)
#
# VERSION 1.0

FROM lgsd/docker-ruby-2.1.1p76

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

RUN apt-get update && apt-get install -qqy sqlite3 libsqlite3-dev nodejs

# Install Rails
RUN  gem update --system && gem install rails --no-rdoc --no-ri
