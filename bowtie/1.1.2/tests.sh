#!/bin/bash
#
# docker run -i sglim2/bowtie-1.1.2 bash < tests.sh
#

# test ############
echo "version test"
bowtie --version
###################

# e_coli test
echo "e_coli test"
bowtie e_coli /software/applications/bowtie/v1.1.2/reads/e_coli_1000.fq
###################
