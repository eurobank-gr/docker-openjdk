FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.2.9_openj9-0.12.1-slim

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]