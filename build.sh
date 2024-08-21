#!/bin/sh

podman build -t ml:4.3.3 -f ml_4.3.3.Dockerfile rocker-versioned2/
podman build -t ml_bio:4.3.3_1 -f ml_bio_4.3.3.Dockerfile .
podman build -t scr:4.3.3_1 -f scr_4.3.3.Dockerfile .
podman build -t scr_scvi:4.3.3_1 -f scr_scvi_4.3.3.Dockerfile .
