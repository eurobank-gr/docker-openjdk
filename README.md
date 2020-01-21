OpenJDK base image for running Java fat-jar applications
========================================================

Features:
- Use `openjdk` base image (see: [openjdk - Docker Official Images](https://hub.docker.com/_/openjdk)
- Set `/tmp` as user/working directory, to enable running as non-root (see: [Running Docker containers as non root](https://blog.csanchez.org/2017/01/31/running-docker-containers-as-non-root/))
- Show settings at JVM startup for debugging
- Set flag to exit on OutOfMemory error
- Use Java 10 options for memory control (see: [Docker and the JVM](https://www.javaadvent.com/2018/12/docker-and-the-jvm.html)), set to 50% initial and 70% max RAM
- Support overriding of default options through `JAVA_OPTIONS` environmental variable
- Include `lsof`, `net-tools`, `iputils-ping`, `telnet` OS packages 
