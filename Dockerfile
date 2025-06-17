# Stage 1: Build
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /build
COPY QuickVote /build
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=build /build/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
