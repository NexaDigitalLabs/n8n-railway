FROM n8nio/n8n:latest-debian
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*
ENV NODES_EXCLUDE=[]
USER node
