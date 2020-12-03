FROM openjdk:11.0.9.1-jdk

RUN apt-get update || true \
	&& apt-get dist-upgrade -y \
	&& apt-get install -y lsof net-tools iputils-ping telnet \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]
