FROM maven:3.9.6-eclipse-temurin-17-focal AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM maven:3.9.6-eclipse-temurin-17-focal AS final
COPY --from=build /app/target/crud-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT ["java","-jar","java-app.jar"]
