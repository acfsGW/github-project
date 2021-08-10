#FROM openjdk:8-jdk
#FROM openjdk:11-jdk
FROM debian:latest

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install -y ant && \
    apt-get clean;

RUN apt-get update

RUN apt-get install -y \


 RUN java -cp dummy.jar com.netsgroup.service.DummyService
