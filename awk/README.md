

## Billion Rows in Awk

## Abstract 

Just as a datapoint, why not see how fast it would be to process this task of reading large files using nothing but awk/sed/other simple command line utilties that have existed for decades.  Rather than using all these fancy new tools and languages, just use these classic stalwarts of unix to get the answer before your language even has a pom file.


## Tools to use

awk - line processing language for reading and calculating the datapoints.


xargs/parallel - tools for splitting the tasks into multiple threads so that more of the machine can be used.

## Methods for processing

### Single threaded

awk/brc.awk

A Simple single threaded script that naievly uses a single thread to process all the data and spits out the results on a single line.
From this script we could do a map/reduce operation if you could process the parent file in chunks.  The issue there would be to
divide up the file into line ended chunks as awk doesn't really understand partial lines, it assumes that you start/stop on that line.  

You could use split but that means re-writing the file.  To avoid that you want to use something like head to read but only return bounded lines.

### Moving to multi-threaded

The general model in unix cli processing is to use multiple processes rather than a single process with multiple threads. 

