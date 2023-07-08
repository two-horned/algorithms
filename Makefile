PDFCMD = groff -ms -k -Tpdf
PDFDIR = pdf
N1 = dijkstra
N2 = depth-first-search
N3 = heapify

all: remove pdf

pdf: remove
	mkdir -p ${PDFDIR}
	${PDFCMD} ${N1}.ms > ${PDFDIR}/${N1}.pdf 2>/dev/null
	${PDFCMD} ${N2}.ms > ${PDFDIR}/${N2}.pdf 2>/dev/null
	${PDFCMD} ${N3}.ms > ${PDFDIR}/${N3}.pdf 2>/dev/null

remove:
	rm -r pdf
