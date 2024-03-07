#!/bin/bash


MEASUREMENTS_FILE=measurements.txt

AWK_BINARY=gawk

# head -n 10000 ${MEASUREMENTS_FILE} | 
${AWK_BINARY} -f awk/brc.awk ${MEASUREMENTS_FILE} | sort

