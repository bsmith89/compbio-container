FROM rust:1.67 AS ggcat
RUN \
    apt-get update \
    && apt-get install -y \
        neovim \
        less \
        git \
        make \
        g++ \
        libz-dev \
        libtbb2 \
        htop \
        tmux \
    && rm -rf /var/lib/apt/lists/*
RUN \
    mkdir -p src \
    && cd src \
    && git clone https://github.com/algbio/ggcat --recursive \
    && cd ggcat \
    && cargo install --path crates/cmdline/ --locked
ENV PATH="${PATH}:${HOME}/.cargo/bin"
