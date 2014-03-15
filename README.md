docker-rails
============

Dockerfile for Rails 4.0.4, with Ruby 2.1.1 on Debian jessie.  
This is a base image to develop rails apps in a contrainer. 

## Use

    $ docker run -i -p 3000:3000 -t lgsd/docker-rails bash
    root@eff2f1d244a8:/# rails new test-app
      create  
      create  README.rdoc
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      ...
      ...
      Installing turbolinks (2.2.1)
      Installing uglifier (2.5.0)
      Your bundle is complete!
      Use `bundle show [gemname]` to see where a bundled gem is installed.

      root@eff2f1d244a8:/# cd test-app

      root@eff2f1d244a8:/test-app# rails s
      => Booting WEBrick
      => Rails 4.0.4 application starting in development on http://0.0.0.0:3000
      => Run `rails server -h` for more startup options
      => Ctrl-C to shutdown server
      [2014-03-15 11:45:04] INFO  WEBrick 1.3.1
      [2014-03-15 11:45:04] INFO  ruby 2.1.1 (2014-02-24) [x86_64-linux]
      [2014-03-15 11:45:04] INFO  WEBrick::HTTPServer#start: pid=136 port=3000

reach http://localhost:3000 and see it works. Or try using curl:

    $ curl -s localhost:3000 | grep "<title>Ruby on Rails: Welcome aboard</title>"
    <title>Ruby on Rails: Welcome aboard</title>

## Copyright

Copyright (c) 2013-2014 Luca G. Soave
