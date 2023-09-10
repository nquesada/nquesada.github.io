
%.pdf:%.ps
	ps2pdf $^
%.ps:%.dvi
	dvips $^
%.dvi:%.tex
	latex $^
	latex $^
all: atomic.pdf  bosonic.pdf  fourier.pdf erfi.pdf normal.pdf sho.pdf shotd.pdf squeezing.pdf


public:
	cp *.pdf ~/Dropbox/Public

clean:
	rm -rf *.bcf *.aux *.log *.dvi *.ps *.out *.run.xml *.*~

reclean:
	rm -rf atomic.pdf  bosonic.pdf  fourier.pdf erfi.pdf normal.pdf sho.pdf shotd.pdf

