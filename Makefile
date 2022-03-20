all: output/cv-ana-colombo.pdf

output/cv-ana-colombo.pdf: cv-ana-colombo.tex
	latexmk -pdf $< -outdir=output -xelatex

clean:
	rm -r output

show: output/cv-ana-colombo.pdf
	@ # Redirect stdout and stderr to /dev/null for silent execution
	xdg-open output/cv-ana-colombo.pdf > /dev/null 2>&1 &

