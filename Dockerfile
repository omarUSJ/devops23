# Use Jenkins agent as a base image
FROM jenkins/agent:latest

# Switch to root user to install additional packages
USER root

# Install Docker inside the Jenkins agent image
RUN apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user
USER jenkins

# Copy your PHP files to the web root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80
