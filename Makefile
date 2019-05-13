main: aux
	#pdflatex -interaction batchmode -shell-escape -output-directory=out -jobname=main main.tex
	pdflatex -shell-escape -output-directory=aux -jobname=main main.tex
	bibtex aux/main.aux
	pdflatex -shell-escape -output-directory=aux -jobname=main main.tex
	pdflatex -shell-escape -output-directory=aux -jobname=main main.tex
	mv aux/main.pdf .

draft: aux
	#pdflatex -interaction batchmode -shell-escape -output-directory=out -jobname=main main.tex
	pdflatex -draft -shell-escape -output-directory=aux -jobname=main main.tex
	mv aux/main.pdf .

preamble: aux
	pdftex -ini -output-directory=aux -jobname=preamble "&pdflatex preamble.tex\\dump"

aux:
	mkdir -p aux

clean: clear
clear:
	rm -fv main.pdf
	rm -rfv aux

.PHONY: aux preamble main clear clean
