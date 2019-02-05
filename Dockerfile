FROM debian:stretch-20190122-slim

ARG OPENJDK_URL=https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz

RUN apt-get update; \
  apt-get install -y wget; \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/lib/jvm \
  && wget --progress=dot:mega -c -O- $OPENJDK_URL \
    | tar -zxC /usr/lib/jvm

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV JAVA_HOME /usr/lib/jvm/jdk-11.0.2
ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]