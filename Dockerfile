FROM alpine
RUN apk update
RUN apk add openjdk11
ARG artifact=target/spring-boot-web.jar
WORKDIR	/opt/app
COPY ${artifact} spring-boot-web.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot-web.jar"]
