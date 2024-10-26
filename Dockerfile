# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container
COPY . .

# Compile the Java source file
RUN javac App.java

# Run the compiled Java program
CMD ["java", "App"]
