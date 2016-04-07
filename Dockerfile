FROM ubuntu:latest
MAINTAINER Joshua Guan <garfilone@gmail.com>

RUN apt-get update && \
    apt-get install -y python-pip
RUN pip install shadowsocks==2.8.2

# Configure container to run as an executable
#ENTRYPOINT ["ssserver -p 12306 -k 1olapola"]
CMD ssserver -p 12306 -k 1olapola
