# Dockerfile
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . /app

RUN javac src/main/java/Main.java

CMD ["java", "Main"]
