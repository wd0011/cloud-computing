#!/usr/bin/env python

import sys

firstword = None
secondword = None
Mixed = None
# input comes from STDIN (standard input)
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    # split the line into words
    words = line.split()
    # increase counters
    for word in words:
        # write the results to STDOUT (standard output);
        # what we output here will be the input for the
        # Reduce step, i.e. the input for reducer.py
        #
        # tab-delimited; the trivial word count is 1
	if firstword == None:
		firstword = word
		continue
	secondword = word
	Mixed = firstword+" "+secondword
        print '%s\t%s' % (Mixed, 1)
	firstword = secondword
	
