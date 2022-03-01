# Requirements for all of my compbio containers.
#
FROM continuumio/miniconda3
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
    && rm -rf /var/lib/apt/lists/*
RUN \
    conda install -y -c conda-forge \
        mamba \
    && conda clean -afy
COPY conda.list /tmp/
RUN \
    mamba install -y -c conda-forge -c bioconda \
        --file=/tmp/conda.list \
    && conda clean -afy
