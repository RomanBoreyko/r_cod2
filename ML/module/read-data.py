def parseJson(fname):
	for line in open(fname, 'r'):
		yield eval(line)
