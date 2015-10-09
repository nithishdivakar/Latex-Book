import os
import sys

if len(sys.argv)==3:
    number = sys.argv[1]
    name   = sys.argv[2]  
    os.system("mkdir Chap%s-%s"%(number,name))
    os.system("cp template.tex Chap%s-%s/Chap%s-%s.tex"%(number,name,number,name))
else:
    print("makeChapter <number> <name>")
