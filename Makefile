.PHONY: all
all:
	echo 1

.PHONY: clean
clean:
	rm -f *.dvi *.pdf *.aux *.bbl *.blg *.brf *.idx *.log *.ps

%.dvi: %.tex
	latex $<
	bibtex $(basename $<)
	latex $<
	latex $<

%.pdf: %.dvi
	dvipdf $<



