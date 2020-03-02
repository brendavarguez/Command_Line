#!bin\bash

cat UFO-Dic-2014.tsv | tail -n 498 > "UFO-Dic-20141.tsv"
cat UFO-Nov-2014.tsv UFO-Dic-20141.tsv | tr ['\t'] ['|'] > "UFOS-Nov-Dic-2014.psv"
