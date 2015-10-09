import os

with open("book/chapterlist","r") as f:
	for F in f:
		F=F.split()[0]
		os.system("cd "+F+" && pdflatex "+F+".tex")
		os.system("cd ../")
with open("book/chapterlistadv","r") as f:
	for F in f:
		F=F.split()[0]
		os.system("cd "+F+" && pdflatex "+F+".tex")
		os.system("cd ../")
os.system("cd book && pdflatex wot.tex")
os.system("cd ../ && rm *.aux *.log")
