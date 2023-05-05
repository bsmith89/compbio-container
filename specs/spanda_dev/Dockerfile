############################################################
# Dockerfile to build strainpanda pipeline
# Based on ubuntu
# To build:
# docker build -t strainpanda .
# Adapted from <https://github.com/xbiome/StrainPanDA/blob/main/docker/Dockerfile_strainpandar>
############################################################

FROM condaforge/mambaforge:4.12.0-2

## install system packages
RUN apt-get update \
    && TZ=America/Los_Angeles DEBIAN_FRONTEND=noninteractive \
        apt-get -y install tzdata \
    && apt-get -y install libssl-dev libfontconfig1-dev libcurl4-openssl-dev \
         libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev \
         libjpeg-dev \
    && apt-get -y install procps wget less tmux htop make \
    && apt-get -y install r-base \
    && rm -rf /var/lib/apt/lists/*

# && apt-get install -y apt-transport-https software-properties-common && \

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
    && R -e "install.packages('vegan')" \
    && R -e "install.packages('pkgmaker')"

# RUN wget https://cran.r-project.org/src/contrib/Archive/vegan/vegan_2.5-6.tar.gz && \
#     R CMD INSTALL vegan_2.5-6.tar.gz && \
#         rm vegan_2.5-6.tar.gz
#
# RUN wget https://cran.r-project.org/src/contrib/Archive/NMF/NMF_0.23.0.tar.gz && \
#     R CMD INSTALL NMF_0.23.0.tar.gz && \
#         rm NMF_0.23.0.tar.gz
