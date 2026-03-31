FROM n8nio/n8n:latest-debian
USER root
RUN rm /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian buster main" > /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list && \
    apt-get update -o Acquire::Check-Valid-Until=false && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*
ENV NODES_EXCLUDE=[]
USER node
