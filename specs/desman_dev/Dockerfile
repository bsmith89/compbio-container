FROM --platform=linux/amd64 condaforge/mambaforge:4.11.0-4
RUN \
    apt-get --allow-releaseinfo-change update \
    && apt-get install -y \
        build-essential \
        libgsl0-dev \
    && rm -rf /var/lib/apt/lists/*
