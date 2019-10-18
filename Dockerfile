 
FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install zip unzip curl bash gcc zlib1g-dev -y

RUN mkdir -p /usr/src/sdk
WORKDIR /usr/src/sdk
RUN curl -s "https://get.sdkman.io" | bash

ADD . .
RUN chmod +x ./init.sh
RUN ./init.sh
RUN chmod +x ./use.sh
RUN ./use.sh
ENV JAVA_HOME="/root/.sdkman/candidates/java/current"
ENTRYPOINT ["/bin/bash","--login", "-c"]