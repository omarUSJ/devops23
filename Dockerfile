FROM jenkins/agent:latest

USER omar

RUN apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

USER omar
