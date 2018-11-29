show: all document.pdf
	evince document.pdf

all: biblio *.blg *.bbl
	pdflatex --file-line-error document.tex

biblio: first_run document.aux
	bibtex document.aux

first_run: *.tex tex/*.tex
	pdflatex --file-line-error document.tex
