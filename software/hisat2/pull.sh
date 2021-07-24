#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/hisat2:2.2.1--h1b792b2_3
mv -v hisat* singularity-hisat2-2.2.1.sif
