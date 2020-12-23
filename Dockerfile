# Requirements for all of my compbio containers.
#
FROM continuumio/miniconda3 AS compbio
RUN apt-get update && apt-get install -y neovim less git make g++
RUN conda install -y -c conda-forge mamba
RUN mamba install -y -c conda-forge \
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
    ipython \
    jupyter \
    jupyter_contrib_nbextensions \
    jupyter_nbextensions_configurator \
    pymc3 \
    arviz \
    tqdm \
    pytorch \
    networkx \
RUN pip install pyro-ppl
RUN mamba install -c bioconda -c faircloth-lab \
    snakemake \
    biopython \
    sickle-trim \
    scythe \
    megahit \
    bowtie2 \
    samtools \
    seqtk \
    emboss \
    fastuniq \
    hmmer \
    lz4 \
    muscle \
    prokka \
    prodigal \
    pysam \
    scikit-bio \
