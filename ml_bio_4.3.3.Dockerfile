FROM ml:4.3.3

## Fix for missing dep in 4.3.2, ok for 4.3.3
RUN apt-get -y update && apt-get install -y libglpk-dev && \
    rm -rf /var/lib/apt/lists/*

## Setup BiocManager
RUN R -e 'install.packages("BiocManager")'

RUN Rscript -e 'BiocManager::install(c( \
		"BiocParallel", \
		"HDF5Array", \
		"data.table", \
		"ggplot2", \
		"here", \
		"patchwork", \
		"reticulate" \
	))'

LABEL SCR_VERSION="3.18_ml_v9"
LABEL SCR_AUTHOR="fedor.bezrukov@unige.ch"
