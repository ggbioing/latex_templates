DOC=cv_7

all: ${DOC}.tex
	pdflatex --halt-on-error --file-line-error ${DOC}.tex
	evince ${DOC}.pdf

show: ${DOC}.pdf
	evince ${DOC}.pdf

${DOC}.blg ${DOC}.bbl: ${DOC}.aux
	bibtex ${DOC}.aux

${DOC}.aux: ${DOC}.tex tex/*.tex  # log pdf aux out
	pdflatex --halt-on-error --file-line-error ${DOC}.tex

clear:
	rm -f ${DOC}.{log,pdf,aux,out,bbl,blg}
