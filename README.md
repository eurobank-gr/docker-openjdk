OpenJDK base image for running Java fat-jar applications
========================================================

Features:
- Use `adoptopenjdk/openjdk8` base image (see: [Docker Images for OpenJDK Version 8 binaries built by AdoptOpenJDK](https://hub.docker.com/r/adoptopenjdk/openjdk8))
- Set `/tmp` as user/working directory, to enable running as non-root (see: [Running Docker containers as non root](https://blog.csanchez.org/2017/01/31/running-docker-containers-as-non-root/))
- Show settings at JVM startup for debugging
- Enable G1 garbage collector
- Set flag to exit on OutOfMemory error
- Set max RAM fraction to 2 to allocate half of container memory for heap (see: [Running a JVM in a Container Without Getting Killed](https://blog.csanchez.org/2017/05/31/running-a-jvm-in-a-container-without-getting-killed/))
- Enable detection of container-limited amount of RAM (see: [Make JVM respect CPU and RAM limits](https://hub.docker.com/_/openjdk/))
- Support overriding of default options through `JAVA_OPTIONS` environmental variable
