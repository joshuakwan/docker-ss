FROM ubuntu:latest
MAINTAINER Joshua Guan <garfilone@gmail.com>

ENV SS_PORT 12306
ENV SS_PWD forkgfw

RUN apt-get update && \
    apt-get install -y python-pip
RUN pip install shadowsocks==2.8.2

# Configure container to run as an executable
CMD ssserver -p $SS_PORT -k $SS_PWD

EXPOSE $SS_PORT
