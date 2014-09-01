docker-rails
============

Dockerfile for Rails 4.1.5, with Ruby 2.1.2 on Debian wheezy.  
This is a base image to develop rails apps in a contrainer. 

## Use

    $ docker run -i -p 3000:3000 -t lgsd/docker-rails bash
    root@8afc820fa2c9:/# rails new test-app
      create  
      create  README.rdoc
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      ...
      ...
      Installing turbolinks 2.3.0
      Installing uglifier 2.5.3
      Your bundle is complete!
      Use `bundle show [gemname]` to see where a bundled gem is installed.
      Post-install message from rdoc:
      Depending on your version of ruby, you may need to install ruby rdoc/ri data:

      <= 1.8.6 : unsupported
       = 1.8.7 : gem install rdoc-data; rdoc-data --install
       = 1.9.1 : gem install rdoc-data; rdoc-data --install
      >= 1.9.2 : nothing to do! Yay!
         run  bundle exec spring binstub --all
      * bin/rake: spring inserted
      * bin/rails: spring inserted

    root@8afc820fa2c9:/# cd test-app

    root@8afc820fa2c9:/test-app# rails s
      => Booting WEBrick
      => Rails 4.1.5 application starting in development on http://0.0.0.0:3000
      => Run `rails server -h` for more startup options
      => Ctrl-C to shutdown server
      [2014-03-15 11:45:04] INFO  WEBrick 1.3.1
      [2014-03-15 11:45:04] INFO  ruby 2.1.2 (2014-05-08) [x86_64-linux]
      [2014-03-15 11:45:04] INFO  WEBrick::HTTPServer#start: pid=136 port=3000
    

reach http://localhost:3000 and see it works. Or try using curl:

    $ curl -s localhost:3000 | grep "<title>Ruby on Rails: Welcome aboard</title>"
    <title>Ruby on Rails: Welcome aboard</title>

## Copyright

Copyright (c) 2013-2014 Luca G. Soave
