#!/bin/bash
#SBATCH --job-name=RepeatModeler
#SBATCH --partition=cpu,small,mem
#SBATCH -N 1
#SBATCH --mem=300G
#SBATCH --ntasks-per-node=60
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --time=200:00:00

cd /data/home/zhou3lab/yangxusheng/scRNASeq/data/Snake/Genome_Assembly/hifiasm/06visualization/hicexplorer

hicPlotMatrix --matrix E01_150000.h5 -out Esch_150000_removeW --colorMap YlOrRd --clearMaskedBins --dpi 2000 --log1p --rotationX 45 --fontsize 3 \
    --chromosomeOrder Esch_Chr01 Esch_Chr02 Esch_Chr03 Esch_Chr04 Esch_Chr05 Esch_Chr06 Esch_Chr07 Esch_Chr08 Esch_Chr09 Esch_Chr10 Esch_Chr11 Esch_Chr12 Esch_Chr13 Esch_Chr14 Esch_Chr15 Esch_Chr16 Esch_Chr17 Esch_Chr18 \
    --log
