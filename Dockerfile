 
FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && apt-get install zip unzip curl bash -y
RUN mkdir -p /usr/src/sdk
WORKDIR /usr/src/sdk
RUN curl -s "https://get.sdkman.io" | bash
ADD init.sh ./init.sh
RUN chmod +x ./init.sh
RUN ./init.sh
