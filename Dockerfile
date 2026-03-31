FROM n8nio/n8n:latest-debian
USER root
RUN printf "deb http://archive.debian.org/debian/ buster main\ndeb http://archive.debian.org/debian-security buster/updates main\n" > /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*
USER node
