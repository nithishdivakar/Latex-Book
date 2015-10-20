import os

with open("Lat-book/chapterlist","r") as f:
	for F in f:
		F=F.split()[0]
		os.system("cd "+F+" && pdflatex "+F+".tex")
		os.system("cd ../")

os.system("cd Lat-book && pdflatex Lat-book.tex && pdflatex Lat-book.tex")
os.system("cd ../ && rm *.aux *.log")
