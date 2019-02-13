#!/bin/bash

# conda install -c bioconda bedtools 

awk_filt_prog='
BEGIN {OFS = FS}
{
 if ($1 != "chrM") {
  if ($6 == "+") {
      $2 = $2 + 4
  } else if ($6 == "-") {
      $3 = $3 - 5
  }
  print $0
 }
}
'

bamfile="./examples/possorted_bam.bam"
bedfile="./examples/possorted.bed"
bedfile_shifted="./examples/possorted.shifted.bed"

bedtools bamtobed -i ${bamfile} > ${bedfile}

awk -F $'\t' "$awk_filt_prog" ${bedfile} > ${bedfile_shifted}
