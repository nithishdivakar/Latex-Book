import os
import sys

content='''
\documentclass[../Lat-Book/Lat-Book.tex]{subfiles}
\def\THIS{%s}

\\begin{document}
\INIT

\chapter{%s}


\end{document}
'''


if len(sys.argv)==3:
	number = sys.argv[1]
	name   = sys.argv[2]
	q_path = "Chap%s-%s"%(number,name)
	os.system("mkdir %s"%(q_path))
	os.system("mkdir %s/images"%(q_path))
	with open("%s/%s.tex"%(q_path,q_path),"w") as f:
		f.write(content%(q_path,name))
else:
	print("makeChapter <number> <name>")
