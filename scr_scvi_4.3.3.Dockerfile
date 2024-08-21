#FROM rocker/ml:4.3.2
FROM scr:4.3.3_1

RUN python3 -m pip install --no-cache-dir \
	scipy==1.14.0 \
	scvi_tools==1.1.2 \
	scanpy==1.10.2

# Set default reticulate python to correspond to system environment
# ENV RETICULATE_PYTHON=/usr/bin/python3

LABEL SCR_VERSION="3.18_v9"
LABEL SCR_AUTHOR="fedor.bezrukov@unige.ch"
