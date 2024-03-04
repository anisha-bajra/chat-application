FROM openjdk:17-jdk-alpine
#LABEL authors="ansa"
#
## creating new user "app" in group "app"
#RUN addgroup -S app && adduser -S app -G app
#
#
##user app user
#USER app
#
##copy the jar file into the docker image
#COPY target/*.jar app.jar
#
#
##run docker image that runs the jar file
#ENTRYPOINT ["java", "-jar", "/app.jar"]
EXPOSE 9090
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]
