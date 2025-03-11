FROM openjdk:17-jdk-slim

WORKDIR /oci-microservice-a01637124

COPY /target/*.jar oci-microservice-a01637124.jar

COPY /src/main/resources/Wallet_javadev /oci-microservice-a01637124/Wallet_javadev

ENV TNS_ADMIN=/oci-microservice-a01637124/Wallet_javadev103

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "oci-microservice-<your student id>.jar" ]