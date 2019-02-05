OpenJDK base image for running Java fat-jar applications
========================================================

Features:
- Use `debian:stretch-slim` base image (see: [Debian - Docker official images](https://hub.docker.com/_/debian))
- Use production-ready open-source builds of the [Java Development Kit](http://openjdk.java.net/projects/jdk/11/)
- Set `/tmp` as user/working directory, to enable running as non-root (see: [Running Docker containers as non root](https://blog.csanchez.org/2017/01/31/running-docker-containers-as-non-root/))
- Show settings at JVM startup for debugging
- Set flag to exit on OutOfMemory error
- Use Java 10 options for memory control (see: [Docker and the JVM](https://www.javaadvent.com/2018/12/docker-and-the-jvm.html)), set to 50% initial and 80% max RAM
- Support overriding of default options through `JAVA_OPTS` environmental variable
