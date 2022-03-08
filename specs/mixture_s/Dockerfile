FROM continuumio/miniconda
# docker build -t mixture .
# docker run --runtime=nvidia -p 7777:8888 -v ${PWD}:/DP -it jesselee/pytorchls bash
# docker run -v ${dir}:/mixture -it mixture bash
# docker run -v D:\tmp\windows:/mixture -it mixture bash


RUN \
    apt-get --allow-releaseinfo-change update \
    && apt-get install -y \
        build-essential \
        gcc \
    && rm -rf /var/lib/apt/lists/*
# RUN apt-get install -y manpages-dev

RUN conda install \
        'python>=3.6' \
        r::r \
        scipy \
        rpy2 \
        bioconda::pysam \
        bioconda::samtools \
        bioconda::bowtie2 \
    && conda clean -afy \
    && pip install jenkspy
RUN true \
    && mkdir -p /usr/share/man/man1 \
    && apt-get --allow-releaseinfo-change update \
    && apt-get install -y \
        default-jre \
    && rm -rf /var/lib/apt/lists/*
COPY MixtureS /MixtureS
ENV PATH="/MixtureS:${PATH}"
