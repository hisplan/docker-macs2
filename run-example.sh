#!/bin/bash

prefix="possorted"
bedfile="possorted.shifted.bed"

docker run \
    -v $PWD/examples/:/examples \
    macs2 callpeak \
        -t /examples/${bedfile} \
        -f BED \
        -g hs \
        --outdir /examples \
        --nomodel \
        --shift 0 \
        --extsize 76 \
        --name ${prefix} \
        -p 0.1 \
        -B \
        --SPMR \
        --keep-dup 'auto' \
        --call-summits
