# Requirements for all of my compbio containers.
#
FROM condaforge/mambaforge:4.12.0-2 AS compbio
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
    mkdir -p src && cd src \
    && git clone https://github.com/zjshi/gt-pro gt-pro && cd gt-pro \
    && make && ln -s $PWD/GT_Pro /usr/bin/
RUN \
    mkdir -p src && cd src \
    && git clone https://github.com/lh3/gfa1 gfa1 && cd gfa1/misc \
    && make && ln -s $PWD/fastg2gfa /usr/bin/
RUN \
    mkdir -p src && cd src \
    && git clone https://github.com/najoshi/sickle sickle && cd sickle \
    && make && ln -s $PWD/sickle /usr/bin/
RUN \
    mkdir -p src && cd src \
    && git clone https://github.com/vsbuffalo/scythe scythe && cd scythe \
    && make all && ln -s $PWD/scythe /usr/bin/
RUN \
    mamba install -y -c conda-forge -c bioconda \
        cython \
        ipython \
        jupyterlab \
        lz4 \
        matplotlib \
        networkx \
        numpy \
        pandas \
        patsy \
        pigz \
        pip \
        python-graphviz \
        scikit-learn \
        scipy \
        seaborn \
        snakemake \
        statsmodels \
        tqdm \
        xarray \
        netCDF4 \
        nodejs \
        rpy2 \
        xlrd openpyxl \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge \
        parallel \
    && (echo "will cite" | parallel --citation || true) \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge -c bioconda \
        biopython \
        bowtie2 \
        emboss \
        fastqc \
        fastuniq \
        hmmer \
        megahit \
        muscle \
        prodigal \
        prokka \
        pysam \
        samtools \
        scikit-bio \
        seqtk \
        diamond \
        bedtools \
        fasttree \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge -c bioconda \
        trimmomatic \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge -c bioconda \
       r-vegan \
       r-dplyr \
       r-geepack \
       r-car \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge \
        unzip \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge \
        matplotlib-venn \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge \
        conda-pack \
    && conda clean -afy
RUN \
    mamba install -y -c conda-forge -c bioconda \
        jupyter_contrib_nbextensions \
        jupyter_nbextensions_configurator \
    && conda clean -afy
