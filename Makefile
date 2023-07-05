PDFCMD = groff -ms -k Tpdf
N1 = dijkstra
N2 = depth-first-search

all: pdf

pdf:
	${PDFCMD} ${N1}.tex > ${N1}.pdf
	${PDFCMD} ${N2}.tex > ${N2}.pdf
