OUT_DIR = out

main:
	pdflatex -shell-escape -output-directory=$(OUT_DIR) -jobname=$@ $@.tex
	cp $(OUT_DIR)/main.pdf doc.pdf

clear:
	rm $(OUT_DIR)/*
