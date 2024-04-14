FROM maven:3.9.6-eclipse-temurin-17-focal
COPY target/crud-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT [ "java","-jar", "java-app.jar" ]