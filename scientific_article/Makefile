show: all document.pdf
	evince document.pdf

all: biblio *.blg *.bbl
	pdflatex --halt-on-error --file-line-error document.tex

biblio: first_run document.aux
	bibtex document.aux

first_run: *.tex tex/*.tex
	pdflatex --halt-on-error --file-line-error document.tex
