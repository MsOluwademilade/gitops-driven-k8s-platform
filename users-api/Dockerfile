FROM maven:3.8.6-openjdk-8 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=build /app/target/users-api-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8083
CMD ["java", "-jar", "app.jar"]