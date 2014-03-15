##############################################
# Rails 4.0.4 Dockerfile
#
# https://github.com/lgsd/docker-rails
#
# VERSION 1.0
# 
# Pull base image based on Ruby 2.1.1p76 
# 2014-02-24 revision 45161 [x86_64-linux]
# Debian jessie (see lgsd/docker-ruby-2.1.1p76)
###############################################

FROM lgsd/docker-ruby-2.1.1p76

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

RUN apt-get update && \
    apt-get install -qqy sqlite3 && \ 
    libsqlite3-dev && \
    nodejs

# Change REFRESHED_AT date, 
# to force Rails gem update
# on local image 
#
ENV REFRESHED_AT 2014-15-03

# Install Rails stable (Rails 4.0.4 on 2014-15-03)
#
RUN  gem update --system && gem install rails --no-rdoc --no-ri
