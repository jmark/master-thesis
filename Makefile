main:
	#pdflatex -interaction batchmode -shell-escape -output-directory=out -jobname=main main.tex
	pdflatex -shell-escape -output-directory=aux -jobname=main main.tex
	cp aux/main.pdf .

preamble:
	pdftex -ini -output-directory=aux -jobname=preamble "&pdflatex preamble.tex\\dump"

clean: clear
clear:
	rm -fv aux/*

.PHONY: preamble main clear clean
