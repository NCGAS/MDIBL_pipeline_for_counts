#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

VERSION=2.11.0
PACKAGE=Trinity
TOOL=/usr/local/bin/trinityrnaseq/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl
DIRECTORY=~/Documents/MDIBL_pipeline_for_counts/software/Trinity
STORAGE=/home/

OPTIONS=$OPTIONS" -B $STORAGE"

singularity exec $OPTIONS $DIRECTORY/singularity-$PACKAGE-$VERSION.sif $TOOL "$@"
