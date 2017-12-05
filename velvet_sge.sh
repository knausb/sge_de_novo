#!/bin/tcsh

#$ -cwd
# #$ -m bes
# #$ -M $email
#$ -S /bin/tcsh
#$ -N velv_pmac
#$ -o velvg_out
#$ -e velvg_err
#$ -l mem_free=50G
#$ -V

# Kmer range.
set KMER=61
#echo $KMER

echo $HOST
date

echo "velveth"

set CMD="~/bin/velvet/velvet/velveth vout $KMER -create_binary -fastq.gz -separate -shortPaired /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_001.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_001.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_002.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_002.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_003.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_003.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_004.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_004.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_005.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_005.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_006.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_006.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_007.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_007.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_008.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_008.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_009.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_009.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_010.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_010.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_011.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_011.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_012.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_012.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_013.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_013.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_014.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_014.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R1_015.fastq.gz /raid1/labs/Grunwald_Lab/raw_data/p_macularis/fastq/Sample_lane3/lane3_NoIndex_L003_R2_015.fastq.gz"

$CMD

echo "velvetg"
date

set CMD="~/bin/velvet/velvet/velvetg vout -cov_cutoff 2.25 -ins_length 200 -exp_cov 4.25 -min_contig_lgth 200 -max_coverage 200"

#echo $CMD

$CMD

date

# Velveth run used ~44 GB RAM over 2 hours.

# Velvetg run used ~32 GB RAM over 4 hours.


# EOF
