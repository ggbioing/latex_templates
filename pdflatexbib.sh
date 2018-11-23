#!/usr/bin/env bash
if [ "$1" == "" ]; then
	filename=$(basename "$(ls *.tex | head -n1)")
	filename="${filename%.*}"
	DOCUMENT=${filename}
else
	DOCUMENT=$1
fi
# rm ${DOCUMENT}.{aux,bbl,blg,log,out,pdf}
pdflatex --file-line-error ${DOCUMENT} && bibtex ${DOCUMENT} && pdflatex --file-line-error ${DOCUMENT} && evince ${DOCUMENT}.pdf
