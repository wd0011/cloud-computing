#!/usr/bin/env python
import sys
f = open("word-patterns.txt")
g = open("bible.txt")
c = []
a=f.readlines()
for n in a:
	n = n.strip()
	b = n.split()
	for i in b:
		c.append(i)

x=g.readlines()
for line in x:
	line = line.strip()
	words = line.split()
	for word in words:
		if  word in c:
			print '%s\t%s' % (word,1)
