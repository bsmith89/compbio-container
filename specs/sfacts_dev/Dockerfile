FROM pytorch/pytorch AS compbio
RUN \
    mamba install -y -c conda-forge -c bioconda \
        cython \
        ipython \
        jupyter_contrib_nbextensions \
        jupyter_nbextensions_configurator \
        jupyterlab \
        matplotlib \
        numpy \
        pandas \
        patsy \
        scikit-learn \
        scipy \
        seaborn \
        statsmodels \
        tqdm \
        xarray \
        pyro-ppl \
    && conda clean -afy
