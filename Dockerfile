# Print a message indicating that the Dockerfile is being used
RUN echo "Building Docker image using this Dockerfile."

FROM jenkins/agent:latest

USER omar

RUN apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

USER omar
