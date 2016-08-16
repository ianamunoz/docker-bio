#!/bin/bash
#
# docker run -i sglim2/hmmer-3.1b2 bash < tests.sh
#

# test ############
curl -L -o hmmer-3.1b2.tar.gz http://eddylab.org/software/hmmer3/3.1b2/hmmer-3.1b2.tar.gz
tar xzf hmmer-3.1b2.tar.gz
cd hmmer-3.1b2
hmmbuild globins4.hmm tutorial/globins4.sto
hmmsearch globins4.hmm tutorial/globins45.fa > globins4.out
hmmbuild fn3.hmm tutorial/fn3.sto
hmmsearch fn3.hmm tutorial/7LESS DROME > fn3.out
hmmsearch fn3.hmm tutorial/globins45.fa
hmmbuild Pkinase.hmm tutorial/Pkinase.sto
cat globins4.hmm fn3.hmm Pkinase.hmm > minifam
###################
