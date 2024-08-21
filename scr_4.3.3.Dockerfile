FROM ml_bio:4.3.3_1

## Be careful to select proepr CUDA version
RUN Rscript -e 'BiocManager::install(c( \
		"DropletUtils", \
		"LowRankQP", \
		"SingleCellExperiment", \
		"batchelor", \
		"edgeR", \
		"scDblFinder", \
		"scater", \
		"scran", \
		"scuttle", \
		"zellkonverter" \
	))'

RUN R -e 'install.packages(c("torch", "luz")); \
          torch::install_torch()'

LABEL SCR_VERSION="3.18_ml_v9"
LABEL SCR_AUTHOR="fedor.bezrukov@unige.ch"
