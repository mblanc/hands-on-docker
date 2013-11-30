FROM ubuntu
MAINTAINER Matthieu Blanc <blanc.matthieu@gmail.com>

# update
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# add 10gen official apt source to the sources list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list

# hack for initctl not being available in Ubuntu
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

# install MongoDB
RUN apt-get update
RUN apt-get install mongodb-10gen

# create the MongoDB data directory
RUN mkdir -p /data/db

VOLUME ["/data/db"]
EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]