FROM --platform=linux/amd64 condaforge/mambaforge:4.11.0-4
RUN \
    apt-get update \
    && apt-get install -y \
        git \
        make \
        g++ \
        libz-dev \
        libtbb2 \
    && rm -rf /var/lib/apt/lists/*
RUN \
    mkdir -p src && cd src \
    && git clone https://github.com/zjshi/gt-pro gt-pro && cd gt-pro \
    && make && ln -s $PWD/GT_Pro /usr/bin/
