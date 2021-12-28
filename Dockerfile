FROM openjdk:15-jdk-slim
ADD /target/configmap-0.0.1-SNAPSHOT.jar k8config.jar
ENTRYPOINT ["java","-Dspring.profiles.active=development","-jar","k8config.jar"]
