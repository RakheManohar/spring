#FROM openjdk:8-jdk-alpine
FROM ubuntu
COPY . usr/src/myapp
WORKDIR usr/src/myapp
RUN apt-get update -yq && apt-get install openjdk-8-jdk -yq && apt-get install maven -yq 
ENTRYPOINT mvn spring-boot:run



