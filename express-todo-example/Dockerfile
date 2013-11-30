FROM ubuntu
MAINTAINER Matthieu Blanc <blanc.matthieu@gmail.com>

# update
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install node
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update -y
RUN apt-get install -y nodejs

# add the webapp
ADD express-todo-example /var/www
RUN cd /var/www ; npm install

EXPOSE  8080
CMD ["node", "/var/www/app.js"]