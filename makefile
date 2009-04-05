FILE = resume
EXT = pdf,ps,dvi,log

ALL: $(FILE).pdf

$(FILE).pdf: $(FILE).ps
	ps2pdf $(FILE).ps

$(FILE).ps: $(FILE).dvi
	dvips $(FILE).dvi

$(FILE).dvi: $(FILE).tex
	latex $(FILE)

clean:
	rm -f $(FILE).{$(EXT)}
