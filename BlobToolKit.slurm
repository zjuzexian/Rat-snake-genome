#!/bin/bash
#SBATCH --job-name=btk
#SBATCH --partition=cpu,small,mem
#SBATCH -N 1
#SBATCH --mem=100G
#SBATCH --ntasks-per-node=48
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --time=200:00:00

source /data/home/zhou3lab/yangxusheng/software/anaconda3/etc/profile.d/conda.sh
conda activate btk

cd /data/home/zhou3lab/yangxusheng/scRNASeq/data/Snake/Genome_Assembly/hifiasm/06visualization/BlobToolKit/

blobtools add --busco /data/home/zhou3lab/yangxusheng/scRNASeq/data/Snake/Genome_Assembly/hifiasm/06visualization/busco/genome/busco/run_tetrapoda_odb10/full_table_genome.tsv --fasta /data/home/zhou3lab/yangxusheng/scRNASeq/data/Snake/Genome_Assembly/hifiasm/04_Wblast/genome_chr_v2/Esch.genome_Chr_v2.fa ./transcriptome

blobtools view  --format svg --plot --view snail ./transcriptome
