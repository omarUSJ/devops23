

FROM jenkins/agent:latest

USER ubuntu

RUN apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

USER ubuntu
