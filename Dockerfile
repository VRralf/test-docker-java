FROM gradle:7.5.1-jdk11-alpine
#FROM gradle:6-jdk8-jammy
COPY . .
RUN gradle build
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "build/libs/javachat-0.0.1-SNAPSHOT.jar"]
#ENTRYPOINT ["./gradlew", "bootRun"]