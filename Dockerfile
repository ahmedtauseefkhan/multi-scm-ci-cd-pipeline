# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Compile Java source files
RUN mkdir -p out && \
    javac -d out src/main/java/Main.java

# Set the classpath and run the Java application
CMD ["java", "-cp", "out", "Main"]
