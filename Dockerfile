# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
#  FROM adoptopenjdk/openjdk11:alpine-jre

#  Refer to Maven build -> finalName
#ARG JAR_FILE=target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar

# cd /opt/app
#WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
#COPY target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar /opt/app/app.jar 
#COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
#ENTRYPOINT ["java","-jar","app.jar"]
#ENTRYPOINT ["sh", "-c", "target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar"]

## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0
FROM openjdk:latest 
COPY target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar SpringBootHelloWorld-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["sh", "-c", "java -jar /SpringBootHelloWorld-0.0.1-SNAPSHOT.jar"]
