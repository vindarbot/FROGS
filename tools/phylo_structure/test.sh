#!/bin/sh
export PATH=../../libexec:$PATH
export PYTHONPATH=../../lib:$PYTHONPATH

if [ -d test ]
then
  rm -r test/*
else
  mkdir test
fi 

python r_structure.py \
     --data data/data.Rdata \
     --varExp EnvType \
     --method MDS \
     --distance data/Unifrac.tsv \
     --html test/phylo_structure.html \
     --log_file test/phylo_structure.log
