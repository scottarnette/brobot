FROM ubuntu:18.04
ENV VERSION dev

ENV DIR /opt/realm

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl openjdk-8-jre -y

RUN mkdir -p $DIR
RUN curl https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar --output $DIR/server.jar
COPY ./docker/server_config/* $DIR/

CMD cd $DIR && java -Xms1G -Xmx3G -d64 -jar server.jar nogui