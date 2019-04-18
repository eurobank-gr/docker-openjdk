FROM openjdk:11.0.3-jdk-slim

WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["-version"]