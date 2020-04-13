FROM ubuntu:18.04
ENV VERSION dev

RUN apt-get update -y && apt-get upgrade -y