FROM openjdk:8u232-jdk-slim

RUN apt-get update || true \
	&& apt-get dist-upgrade -y \
	&& apt-get install -y lsof net-tools iputils-ping telnet \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]