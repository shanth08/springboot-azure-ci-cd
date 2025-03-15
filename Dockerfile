# Use OpenJDK 11 as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
