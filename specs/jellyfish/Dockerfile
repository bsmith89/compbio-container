FROM condaforge/mambaforge:4.12.0-2
RUN \
    apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        git \
        make \
        g++ \
        libz-dev \
        libtbb2 \
        less \
        pigz \
        python-dev \
        pkg-config \
    && rm -rf /var/lib/apt/lists/*
RUN \
    mamba install -y -c conda-forge -c bioconda \
        cython \
        jupyterlab \
        lz4 \
        unzip \
    && conda clean -afy
RUN \
    mkdir -p src && cd src \
    && wget https://github.com/gmarcais/Jellyfish/releases/download/v2.3.0/jellyfish-2.3.0.tar.gz \
    && tar -xvzf jellyfish-2.3.0.tar.gz \
    && cd jellyfish-2.3.0 \
    && ./configure --enable-python-binding \
    && make -j4 \
    && make install \
    && pip install -e swig/python
