BOOKFOLDER  = Lat-book/ 
BOOKSRC     = Lat-book.tex
BOOKOPFILE  = Lat-book.pdf 

FOLDERS = $(wildcard Chap*)
CHAPSRC = $(join $(FOLDERS),$(patsubst %,/%.tex,$(FOLDERS)))
CHAPOP  = $(join $(FOLDERS),$(patsubst %,/%.pdf,$(FOLDERS)))

all:$(join $(BOOKFOLDER),$(BOOKOPFILE)) $(CHAPOP)
	cd $(BOOKFOLDER) && pdflatex $(BOOKSRC)
	
%.pdf:%.tex
	cd $(dir $<) && pdflatex $(notdir $<)

AUXFILES=$(strip $(wildcard */*.aux))
LOGFILES=$(wildcard */*.log)
TOCFILES=$(wildcard */*.toc)
PDFFILES=$(wildcard */*.pdf)
OUTFILES=$(wildcard */*.out)


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
