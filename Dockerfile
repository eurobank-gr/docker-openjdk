FROM adoptopenjdk/openjdk8-openj9:jdk8u202-b08_openj9-0.12.1-slim

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]