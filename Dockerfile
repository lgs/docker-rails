##############################################
# Rails 4.1.5 Dockerfile
#
# https://github.com/lgsd/docker-rails
#
# VERSION 1.1
# 
# Pull base image based on Ruby 2.1.2p95 
# 2014-05-08 revision 45877 [x86_64-linux]
# Debian wheezy (see lgsd/docker-ruby-2.1.2p95)
###############################################

FROM lgsd/docker-ruby-2.1.2p95

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

RUN add-apt-repository ppa:chris-lea/node.js \
    apt-get update && apt-get install -qqy \
    sqlite3 \ 
    libsqlite3-dev \
    nodejs
    
# Change REFRESHED_AT date, 
# to force Rails gem update
# on local image 
#
ENV REFRESHED_AT 2014-27-08

# Install Rails stable (Rails 4.1.5 on 2014-27-08)
#
RUN  gem update --system && gem install rails --no-rdoc --no-ri
