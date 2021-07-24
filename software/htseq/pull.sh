#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/htseq:0.13.5--py39h70b41aa_1
mv -v htseq:* singularity-htseq-0.13.5.sif
