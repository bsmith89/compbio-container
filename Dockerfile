# Requirements for all of my compbio containers.
#
FROM continuumio/miniconda3 AS base
WORKDIR /root
RUN apt-get update && apt-get install -y neovim less git make
RUN conda install -y -c conda-forge mamba
RUN mamba install -y -c conda-forge -c bioconda \
    snakemake \
    numpy \
    scipy \
    scikit-learn \
    xarray \
    pandas \
    matplotlib \
    seaborn \
    statsmodels \
    patsy \
    cython \
    biopython \
    ipython \
    jupyter \
    jupyter_contrib_nbextensions \
    jupyter_nbextensions_configurator
