FROM ubuntu:18.04
ENV VERSION dev

ENV BUILD 183
ENV MC_VERSION 1.15.2
ENV DIR /opt/realm

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl openjdk-8-jre -y

RUN mkdir -p $DIR
RUN curl https://papermc.io/api/v1/paper/1.15.2/183/download --output $DIR/paper.jar
COPY ./docker/paper_config/* $DIR/

CMD cd $DIR && java -Xms1G -Xmx3G -d64 -jar paper.jar nogui