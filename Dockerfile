FROM adoptopenjdk/openjdk11:jdk-11.0.3_7-slim

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]