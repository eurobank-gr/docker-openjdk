FROM adoptopenjdk/openjdk8:jdk8u202-b08-slim

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]