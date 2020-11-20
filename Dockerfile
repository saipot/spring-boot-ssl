FROM adoptopenjdk/openjdk14:alpine-jre

WPORKDIR /tmp
ARG JAR_FILE=target/spring-boot-web.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]