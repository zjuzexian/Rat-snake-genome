#!/bin/bash
#SBATCH --job-name=cafeplotter
#SBATCH --partition=cpu,small,mem
#SBATCH -N 1
#SBATCH --mem=30G
#SBATCH --ntasks-per-node=8
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --time=200:00:00

cd /data/home/zhou3lab/yangxusheng/scRNASeq/data/Snake/Genome_Assembly/hifiasm/06visualization/08.geneGainAndLoss/04.figure


cafeplotter -i /data/home/zhou3lab/yangxusheng/scRNASeq/data/Snake/Genome_Assembly/hifiasm/06visualization/08.geneGainAndLoss/03.cafe/out --format svg -o ./
