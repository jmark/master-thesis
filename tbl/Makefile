OUT_DIR = out

main:
	pdflatex -shell-escape -output-directory=$(OUT_DIR) -jobname=$@ $@.tex

clear:
	rm $(OUT_DIR)/*
