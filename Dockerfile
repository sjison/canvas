FROM ubuntu:16.04
 
RUN apt-get -y update &&   apt-get -y upgrade 
 
RUN     apt-get update -y
RUN     apt-get install --yes software-properties-common python-software-properties \
                              curl apt-transport-https ca-certificates git-core 

# ruby repo
RUN add-apt-repository ppa:brightbox/ruby-ng && \
    apt-get -y update

RUN apt-get install --yes ruby2.4 ruby2.4-dev


# RUN apt-get install \
#          git-core ruby2.4 ruby2.4-dev \
#          zlib1g-dev libxml2-dev libsqlite3-dev postgresql libpq-dev \
#          libxmlsec1-dev curl make g++

#RUN apt-get install postgresql-9.5
  

# RUN gem install bundler --version 1.13.7

# RUN curl -sL https://deb.nodesource.com/setup_10.x | -E bash - && \
#     apt-get install nodejs      

# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
#     echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
#     apt-get update && sudo apt-get install yarn=1.10.1-1

# RUN apt-get install python


# RUN apt-get install passenger libapache2-mod-passenger apache2
 
 
# RUN add-apt-repository ppa:chris-lea/redis-server && \
#     apt-get update

# RUN apt-get install redis-server


# # get canvas and install
# RUN     cd /var && git clone https://github.com/instructure/canvas-lms.git canvas
# WORKDIR /var/canvas
# RUN     git checkout stable

# RUN bundle _1.13.7_ install --path vendor/bundle
# RUN yarn install
