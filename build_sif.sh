#!/bin/sh

podman image save --format oci-archive -o scr_scvi.tar scr_scvi:4.3.3_1
SINGULARITY_TMPDIR=$HOME singularity build scr_scvi.sif oci-archive:scr_scvi.tar
rm scr_scvi.tar
