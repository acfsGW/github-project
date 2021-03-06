FROM openjdk:8-jdk
#FROM openjdk:11-jdk
#FROM debian:latest

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install -y ant && \
    apt-get clean;

RUN apt-get update


COPY  ./lib/* 	   	/dummy/lib/


# Run the app when the container is executed.
CMD ["java","-DAPPL=TEST","-Duser.timezone=CET", "-Xms32M", "-Xmx128M","-Xss512K","-Djava.rmi.server.hostname=127.0.0.1","-Djava.rmi.server.useLocalHostname=true", "-cp","/dummy/lib/dummy.jar","-jar", "/dummy/lib/dummy.jar"]
