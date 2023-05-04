############################################################
# Dockerfile to build strainpanda pipeline
# Based on ubuntu
# To build:
# docker build -t strainpanda .
# Adapted from <https://github.com/xbiome/StrainPanDA/blob/main/docker/Dockerfile_strainpandar>
############################################################

FROM condaforge/mambaforge:4.12.0-2

ARG TZ=America/Los_Angeles
ARG DEBIAN_FRONTEND=noninteractive

## install system packages
RUN DEBIAN_FRONTEND=noninteractive; apt-get update && apt-get -y install procps wget less tmux htop make && \
    apt-get install -y apt-transport-https software-properties-common && \
    apt-get install -y r-base && \
    rm -rf /var/lib/apt/lists/*

## install r dependencies
RUN R -e "install.packages('devtools')" \
    && R -e "install.packages('dplyr')" \
    && R -e "install.packages('MASS')" \
    && R -e "install.packages('foreach')" \
    && R -e "install.packages('getopt')" \
    && R -e "install.packages('pracma')" \
    && R -e "install.packages('pheatmap')" \
    && R -e "install.packages('reshape2')" \
    && R -e "install.packages('ggplot2')" \
    && R -e "install.packages('permute')" \
    && R -e "install.packages('cluster')" \
    && R -e "install.packages('data.table')" \
    && R -e "install.packages('R.utils')" \
    && R -e "install.packages('BiocManager')" \
    && R -e "BiocManager::install('Biobase')" \
    && R -e "install.packages('NMF')" \

RUN wget https://cran.r-project.org/src/contrib/Archive/vegan/vegan_2.5-6.tar.gz && \
    R CMD INSTALL vegan_2.5-6.tar.gz && \
        rm vegan_2.5-6.tar.gz

RUN wget https://cran.r-project.org/src/contrib/Archive/NMF/NMF_0.23.0.tar.gz && \
    R CMD INSTALL NMF_0.23.0.tar.gz && \
        rm NMF_0.23.0.tar.gz
