
BEGIN { 
  FS=";"
}

{
	if ("$1" in counts) {
		counts[$1] = 1
		sums[$1] = $2
		max[$1] = 0
		min[$1] = 0
	} else {
		counts[$1] = 1+counts[$1]
		sums[$1] = sums[$1]+$2
		if (max[$1] < $2) {
		   max[$1] = $2
		}
		if ( min[$1] > $2) {
		   min[$1] = $2
		}
	}
}

END {
	OFMT = "%.1f"
	for (i in counts) {
	  print(i, counts[i], sums[i], sums[i]/counts[i], min[i], max[i] )	
	}
}
