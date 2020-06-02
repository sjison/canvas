FROM ubuntu:16.04

RUN sudo apt-get -y update &&  \
    sudo apt-get -y upgrade 
 
RUN sudo apt-get install \
         software-properties-common git-core ruby2.4 ruby2.4-dev \
         zlib1g-dev libxml2-dev libsqlite3-dev postgresql libpq-dev \
         libxmlsec1-dev curl make g++

RUN sudo apt-get install postgresql-9.5

RUN sudo add-apt-repository ppa:brightbox/ruby-ng && \
    sudo apt-get -y update

RUN sudo apt-get install \
         software-properties-common git-core ruby2.4 ruby2.4-dev \
         zlib1g-dev libxml2-dev libsqlite3-dev postgresql libpq-dev \
         libxmlsec1-dev curl make g++             

RUN sudo gem install bundler --version 1.13.7

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && \
    sudo apt-get install nodejs      

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    sudo apt-get update && sudo apt-get install yarn=1.10.1-1

RUN apt-get install python


RUN sudo apt-get install passenger libapache2-mod-passenger apache2
 
 
RUN sudo add-apt-repository ppa:chris-lea/redis-server && \
    sudo apt-get update

RUN sudo apt-get install redis-server


# get canvas and install
RUN     cd /var && git clone https://github.com/instructure/canvas-lms.git canvas
WORKDIR /var/canvas
RUN     git checkout stable

RUN bundle _1.13.7_ install --path vendor/bundle
RUN yarn install
