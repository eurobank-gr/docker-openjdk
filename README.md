OpenJDK base image for running Java fat-jar applications
========================================================

Features:
- Use `adoptopenjdk/openjdk11` base image (see: [Docker Images for OpenJDK Version 11 binaries built by AdoptOpenJDK](https://hub.docker.com/r/adoptopenjdk/openjdk11), as well as: [Mystery meat OpenJDK builds strike again](https://mail.openjdk.java.net/pipermail/jdk8u-dev/2019-May/009330.html))
- Set `/tmp` as user/working directory, to enable running as non-root (see: [Running Docker containers as non root](https://blog.csanchez.org/2017/01/31/running-docker-containers-as-non-root/))
- Show settings at JVM startup for debugging
- Set flag to exit on OutOfMemory error
- Use Java 10 options for memory control (see: [Docker and the JVM](https://www.javaadvent.com/2018/12/docker-and-the-jvm.html)), set to 50% initial and 80% max RAM
- Support overriding of default options through `JAVA_OPTIONS` environmental variable
