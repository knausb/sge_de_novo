#!/bin/bash

#$ -cwd
#$ -S /bin/bash
#$ -N spd
#$ -e spderr
#$ -o spdout
#$ -q !gbs
#$ -l mem_free=250G
#$ -pe thread 16
#$ -V
# #$ -h
# $ -t 1-5:1

#SPD="/home/bpp/knausb/bin/SPAdes-3.8.0-Linux/bin/spades.py"
SPD="/home/bpp/knausb/bin/SPAdes-3.11.1-Linux/bin/spades.py"


#PATH=~/bin/SPAdes-3.8.0-Linux:$PATH
PATH=~/bin/SPAdes-3.11.1-Linux:$PATH

echo $PATH
echo


CMD="$SPD -v"
echo $CMD
eval $CMD

echo
eval date
echo

CMD="$SPD -o assembly \
  --pe1-1 ../20171120_trimmo/P5DNA_R1.fastq.gz \
  --pe1-2 ../20171120_trimmo/P5DNA_R2.fastq.gz \
  --mp1-1 ../20171120_trimmo/P5_MP_R1.fastq.gz \
  --mp1-2 ../20171120_trimmo/P5_MP_R2.fastq.gz \
  -t 16 \
  -m 250"

echo $CMD
eval $CMD

echo
eval date
echo
