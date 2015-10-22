# Call make to make all chapters that has been modified.
# Call make book to make the book This does not make modified chapters
# Call make skeleton to remove every file other than source tex files
# This removes all aux and log files
# make skeletondry give a list of files make skeleton will delete

BOOKFOLDER  = Lat-book/ 
BOOKSRC     = Lat-book.tex
BOOKOPFILE  = Lat-book.pdf 


FOLDERS = $(wildcard Chap*)
CHAPSRC = $(join $(FOLDERS),$(patsubst %,/%.tex,$(FOLDERS)))
CHAPOP  = $(join $(FOLDERS),$(patsubst %,/%.pdf,$(FOLDERS)))

all: $(CHAPOP)

book:$(join $(BOOKFOLDER),$(BOOKOPFILE))	
	cd $(BOOKFOLDER) && pdflatex $(BOOKSRC) && pdflatex $(BOOKSRC)

%.pdf:%.tex
	cd $(dir $<) && pdflatex $(notdir $<)

AUXFILES=$(wildcard Chap*/*.aux)
LOGFILES=$(wildcard Chap*/*.log)
TOCFILES=$(wildcard Chap*/*.toc)
PDFFILES=$(wildcard Chap*/*.pdf)
OUTFILES=$(wildcard Chap*/*.out)

skeletondry:
ifneq ($(OUTFILES),)
	@ls $(OUTFILES) 
endif
ifneq ($(PDFFILES),) 
	@ls $(PDFFILES) 
endif
ifneq ($(AUXFILES),)
	@ls $(AUXFILES)
endif
ifneq ($(LOGFILES),)
	@ls $(LOGFILES) 
endif
ifneq ($(TOCFILES),)
	@ls $(TOCFILES) 
endif

skeleton:
ifneq ($(OUTFILES),)
	rm $(OUTFILES) 
endif
ifneq ($(PDFFILES),) 
	rm -i $(PDFFILES) 
endif
ifneq ($(AUXFILES),)
	rm $(AUXFILES)
endif
ifneq ($(LOGFILES),)
	rm $(LOGFILES) 
endif
ifneq ($(TOCFILES),)
	rm $(TOCFILES) 
endif
