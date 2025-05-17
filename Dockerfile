# Use a lightweight JDK 21 base image (significantly smaller than Ubuntu)
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /datasuite/eureka-server

# Copy only the jar file
COPY build/libs/eureka-server-1.0.jar .

# Run the jar
CMD ["java", "-jar", "eureka-server-1.0.jar"]
