# Dockerfile for Rails 4.1 
# Ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-linux]
# based on Ubuntu 13.10 (Saucy Salamander)
#
# VERSION 1.0

FROM lgsd/docker-ruby-2.1.1p76

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

# Install Rails stable
RUN  gem update --system && gem install rails --no-rdoc --no-ri
