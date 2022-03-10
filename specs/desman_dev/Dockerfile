FROM condaforge/mambaforge
RUN \
    apt-get --allow-releaseinfo-change update \
    && apt-get install -y \
        build-essential \
        libgsl0-dev \
    && rm -rf /var/lib/apt/lists/*
