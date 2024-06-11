TEXCOMPILER = lualatex
BIBCOMPILER = biber

DOCNAME = Master

.PHONY: all compile clean

all: compile clean

compile:
	${TEXCOMPILER} ${DOCNAME}.tex
	${BIBCOMPILER} ${DOCNAME}
	${TEXCOMPILER} ${DOCNAME}.tex
	${TEXCOMPILER} ${DOCNAME}.tex

clean:
	find . -type f \( -name '*.aux' -o -name '*.log' -o -name '*.toc' -o -name '*.lof' -o -name '*.lot' -o -name '*.out' -o -name '*.bbl' -o -name '*.blg' -o -name '*.bcf' -o -name '*.run.xml' \) -exec rm {} \;
