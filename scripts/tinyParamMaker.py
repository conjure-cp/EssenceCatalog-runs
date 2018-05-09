#!/usr/bin/env python3

# Produces simple sets of parameter files
# Pass a series of arguments, which should be valid python snippets of the form:
# VARNAME in PYTHONLIST

# By default this program prints out the python to create your instances
# Once you are happy, add "| python" to run the code through python

# The most common thing to use is 'range':
# range(b) - integers in the range 0,1,..,b-1
# range(a,b) - integers in the range a,a+1,..,b-1
# range(a,b,c) - integers a,a+c,a+2c,... to the last integer before b
# Examples:

# ./tinyParamMaker.py 'i in range(5)'    - produces instances where i runs 0,1,2,3,4
# ./tinyParamMaker.py 'i in range(3)' 'j in [4,6,8]' - produces instances where i runs 0,1,2, j runs 4,6,8
# ./tinyParamMaker.py 'i in range(10,20,2)' - produces instances where i is 10,12,..,18
# ./tinyParamMaker.py 'i in [2**x for x in range(4,10)]' - make i be 16,32,64,128,256,512
# ./tinyParamMaker.py 'i in range(3,5)' 'j in range(i,5)' - sets (i,j) to (3,3), (3,4), (4,4)


import sys
import io

args = sys.argv[1:]
names = [n.split("in")[0].strip() for n in args]
l = len(args)
with io.StringIO() as f:
    for i in range(l):
        f.write(" "*i + "for " + args[i] + ":\n")
    f.write(" "*l + 'filename = "-".join(['+",".join(['str('+x+')' for x in names])+']) + ".param"\n')
    f.write(" "*l + "with open(filename, 'w') as ofile:\n")
    l = l + 1
    f.write(" "*l + "ofile.write('language ESSENCE\\' 1.0\\n')\n")
    for n in names:
        f.write(" "*l + "ofile.write('letting " + n + " be ' + str("+n+") + '\\n')\n")
    print(f.getvalue())
    