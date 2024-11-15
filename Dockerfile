# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /

# Copy the local .jar file into the container at /app
# Replace `your-application.jar` with your actual jar file name
COPY hotel_app-0.0.1-SNAPSHOT.jar /myapp.jar

# Expose the port that your app will listen on
# Make sure the port matches the one your app uses (e.g., 8080)
EXPOSE 8080

# Set the default command to run your application
CMD ["java", "-jar", "myapp.jar"]
