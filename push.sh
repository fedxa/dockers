#!/bin/sh

podman push ml:4.3.3 docker://docker.io/fedxa/ml:4.3.3
podman push ml:4.3.3 docker://docker.io/fedxa/ml:latest

podman push ml_bio:4.3.3_1 docker://docker.io/fedxa/ml_bio:4.3.3_1
podman push ml_bio:4.3.3_1 docker://docker.io/fedxa/ml_bio:latest

podman push scr:4.3.3_1 docker://docker.io/fedxa/scr:4.3.3_1
podman push scr:4.3.3_1 docker://docker.io/fedxa/scr:latest

podman push scr_scvi:4.3.3_1 docker://docker.io/fedxa/scr_scvi:4.3.3_1
podman push scr_scvi:4.3.3_1 docker://docker.io/fedxa/scr_scvi:latest
