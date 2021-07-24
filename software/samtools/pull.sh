#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/mulled-v2-227a1cb61b41a4b207e98ffab745211e900486fc:0d43472fc20149be3538449002b5af50bc71883b-0
mv -v mulled* singularity-samtools-1.9.sif
