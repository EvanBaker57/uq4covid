@echo off
if not exist "output" md "output"
if not exist "plots" md "plots"
metawards -d ncov -o output --force-overwrite-output --input tutorial_2_2.csv -a ExtraSeedsLondon.dat --repeats 5 --extractor only_i_per_ward
metawards-plot -i output\results.csv.bz2 -o plots