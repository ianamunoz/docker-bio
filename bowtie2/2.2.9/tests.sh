#!/bin/bash
#
# docker run -i sglim2/bowtie2-2.2.9 bash < tests.sh
#

# test ############
echo "version test"
bowtie2 --version
###################

# lambda_virus test
echo "lambda_virus test"
BT2_HOME=/software/applications/bowtie2/v2.2.9/
bowtie2-build $BT2_HOME/example/reference/lambda_virus.fa lambda_virus
bowtie2 -x lambda_virus -U $BT2_HOME/example/reads/reads_1.fq -S eg1.sam
bowtie2 -x lambda_virus -1 $BT2_HOME/example/reads/reads_1.fq -2 $BT2_HOME/example/reads/reads_2.fq -S eg2.sam
bowtie2 --local -x lambda_virus -U $BT2_HOME/example/reads/longreads.fq -S eg3.sam
bowtie2 -x $BT2_HOME/example/index/lambda_virus -1 $BT2_HOME/example/reads/reads_1.fq -2 $BT2_HOME/example/reads/reads_2.fq -S eg2.sam
samtools view -bS eg2.sam > eg2.bam
samtools sort eg2.bam eg2.sorted
###################
