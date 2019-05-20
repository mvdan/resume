all: resume.pdf

verb = resume-verbose.pdf

resume.pdf: resume.tex
	pdflatex $< >/dev/null
	mv $@ ${verb}
	rm -f *.{aux,log,out}
	ps2pdf ${verb} $@
	rm ${verb}

.PHONY: all
