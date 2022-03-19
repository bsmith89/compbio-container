FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime
RUN \
    conda install -y -c conda-forge -c bioconda \
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
        netCDF4 \
    && conda clean -afy
