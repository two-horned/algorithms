PDFCMD = groff -ms -k -Tpdf
PDFDIR = pdf
N1 = dijkstra
N2 = depth-first-search

all: pdf

pdf:
	mkdir -p ${PDFDIR}
	${PDFCMD} ${N1}.ms > ${PDFDIR}/${N1}.pdf 2>/dev/null
	${PDFCMD} ${N2}.ms > ${PDFDIR}/${N2}.pdf 2>/dev/null

remove:
	rm -r pdf
