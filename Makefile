all: class docs example

class: kuthesis.ins
	tex kuthesis.ins

docs: kuthesis.dtx
	pdflatex kuthesis.dtx

example: example.tex
	pdflatex example.tex
	bibtex example.aux
	pdflatex example.tex
	pdflatex example.tex
	
