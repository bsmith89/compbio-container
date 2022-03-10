FROM continuumio/miniconda:4.7.12
RUN \
    apt-get --allow-releaseinfo-change update \
    && apt-get install -y \
        build-essential \
        libgsl0-dev \
    && rm -rf /var/lib/apt/lists/*
