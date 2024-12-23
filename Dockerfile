# Use a base image with Java 17 installed
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/java-project-1.0-SNAPSHOT.jar java-project-1.0-SNAPSHOT.jar

# Expose the port the application will run on
EXPOSE 8080

# Define the entry point for the container
CMD ["java", "-jar", "java-project-1.0-SNAPSHOT.jar"]

