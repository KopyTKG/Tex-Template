TEXCOMPILER = pdflatex
BIBCOMPILER = biber

DOCNAME = Master

.PHONY: all compile clean compile-no-bibtex

all: compile clean

all-no-bibtex: compile-no-bibtex clean

compile: ${DOCNAME}.tex
	${TEXCOMPILER} ${DOCNAME}.tex
	${BIBCOMPILER} ${DOCNAME}
	${TEXCOMPILER} ${DOCNAME}.tex
	${TEXCOMPILER} ${DOCNAME}.tex

compile-no-bibtex:
	${TEXCOMPILER} ${DOCNAME}.tex
	${TEXCOMPILER} ${DOCNAME}.tex

clean:
	find . -type f \( -name '*.aux' -o -name '*.dvi' -o -name '*.toc' -o -name '*.lof' -o -name '*.log' -o -name '*.lot' -o -name '*.out' -o -name '*.bbl' -o -name '*.blg' -o -name '*.bcf' -o -name '*.xmpi' -o -name '*.synctex.gz' -o -name '*.run.xml' \) -exec rm {} \;
