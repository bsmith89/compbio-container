FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime
RUN \
    conda install -y -c conda-forge -c bioconda \
        cython \
        ipython \
        jupyterlab \
        ipywidgets \
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
        netCDF4 \
        pyro-ppl \
    && conda clean -afy
