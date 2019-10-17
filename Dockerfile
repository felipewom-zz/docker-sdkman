 
FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && apt-get install zip unzip curl bash gcc zlib1g-dev -y
RUN mkdir -p /usr/src/sdk
WORKDIR /usr/src/sdk
RUN curl -s "https://get.sdkman.io" | bash
ADD init.sh ./init.sh
ADD GRAALVM_VERSION .
RUN export GRAALVM_VERSION="$(cat GRAALVM_VERSION)" 
RUN chmod +x ./init.sh
RUN ./init.sh 
ADD use.sh ./use.sh
RUN chmod +x ./use.sh
RUN ./use.sh 

ENTRYPOINT ["/bin/bash","--login", "-c"]